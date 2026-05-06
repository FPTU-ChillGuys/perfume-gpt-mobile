import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/services/payment_webview_preloader.dart';
import '../providers/order_provider.dart';
import '../../../profile/presentation/widgets/resolved_user_avatar.dart';

/// Opens a payment URL (VNPay/Momo) in an in-app WebView.
/// When the gateway redirects to the backend return URL, intercepts it,
/// calls the backend with the corrected host, and navigates back.
class PaymentWebViewPage extends ConsumerStatefulWidget {
  final String paymentUrl;

  const PaymentWebViewPage({super.key, required this.paymentUrl});

  @override
  ConsumerState<PaymentWebViewPage> createState() => _PaymentWebViewPageState();
}

class _PaymentWebViewPageState extends ConsumerState<PaymentWebViewPage> {
  WebViewController? _controller;
  bool _isLoading = true;
  bool _isProcessing = false;
  String _title = 'Thanh toán';
  String? _paymentIdFromUrl;
  bool _isPlatformSupported = true;

  /// The return URL pattern from VNPay/Momo that we need to intercept.
  static const _returnPatterns = [
    '/api/payments/vnpay-return',
    '/api/payments/momo-return',
    '/api/payments/payos-return',
    '/api/payments/payos-cancel',
  ];

  @override
  void initState() {
    super.initState();
    // Try to extract vnp_TxnRef (paymentId) from the payment URL
    final uri = Uri.tryParse(widget.paymentUrl);
    _paymentIdFromUrl = uri?.queryParameters['vnp_TxnRef'];

    _checkPlatformAndInit();
  }

  void _checkPlatformAndInit() {
    // Check if current platform is supported by webview_flutter
    if (kIsWeb ||
        (!Platform.isAndroid && !Platform.isIOS && !Platform.isMacOS)) {
      setState(() {
        _isPlatformSupported = false;
        _isLoading = false;
      });
      return;
    }

    try {
      // Reuse a pre-warmed WebViewController if one is available so that
      // the first paint of the gateway lands in milliseconds instead of
      // having to bootstrap Chromium from scratch.
      final reused = PaymentWebViewPreloader.instance.acquireController();
      _controller = (reused ?? WebViewController())
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onNavigationRequest: _onNavigationRequest,
            onPageStarted: (_) {
              if (mounted) setState(() => _isLoading = true);
            },
            onPageFinished: (url) {
              if (mounted) setState(() => _isLoading = false);
              _controller?.getTitle().then((t) {
                if (t != null && t.isNotEmpty && mounted) {
                  setState(() => _title = t);
                }
              });
            },
            onWebResourceError: (error) {
              // Web resource errors are expected during payment redirects
            },
          ),
        )
        ..loadRequest(Uri.parse(widget.paymentUrl));
    } catch (e) {
      debugPrint('WebView initialization error: $e');
      setState(() {
        _isPlatformSupported = false;
        _isLoading = false;
      });
    }
  }

  /// Intercept navigation to the return URL.
  NavigationDecision _onNavigationRequest(NavigationRequest request) {
    final url = request.url;

    for (final pattern in _returnPatterns) {
      if (url.contains(pattern)) {
        // Intercept! Don't let the WebView load this URL.
        _handlePaymentReturn(url);
        return NavigationDecision.prevent;
      }
    }
    return NavigationDecision.navigate;
  }

  Future<void> _handlePaymentReturn(String returnUrl) async {
    if (_isProcessing) return;
    setState(() => _isProcessing = true);

    try {
      // Replace localhost with the correct backend host for Android emulator
      String correctedUrl = returnUrl;
      if (!kIsWeb && Platform.isAndroid) {
        correctedUrl = returnUrl
            .replaceFirst('https://localhost:', 'https://10.0.2.2:')
            .replaceFirst('http://localhost:', 'http://10.0.2.2:');
      }

      // Call the backend return endpoint using Dio from the API client
      final uri = Uri.parse(correctedUrl);

      // Use the API client's Dio (which has auth interceptors)
      final dio = ref.read(apiClientProvider).dio;
      await dio.getUri<dynamic>(
        uri,
        options: Options(
          // Don't validate status — the backend may redirect
          validateStatus: (status) => true,
          // Don't follow redirects — we just need the response
          followRedirects: false,
        ),
      );

      // Parse payment result from URL query params
      final queryParams = uri.queryParameters;
      final responseCode = queryParams['vnp_ResponseCode'];
      final isPayOsReturn = returnUrl.contains('/api/payments/payos-return');
      final isPayOsCancel = returnUrl.contains('/api/payments/payos-cancel');
      final payOsStatus = queryParams['status']?.toLowerCase();
      final isSuccess = isPayOsCancel
          ? false
          : isPayOsReturn
          ? (payOsStatus == null ||
                payOsStatus == 'paid' ||
                payOsStatus == 'success')
          : responseCode == '00';
      final paymentId =
          queryParams['vnp_TxnRef'] ??
          queryParams['paymentId'] ??
          _paymentIdFromUrl;

      // Confirm payment status with backend
      if (paymentId != null && paymentId.isNotEmpty) {
        try {
          await ref
              .read(orderRepositoryProvider)
              .confirmPayment(
                paymentId,
                isSuccess: isSuccess,
                failureReason: isSuccess
                    ? null
                    : 'VNPay response code: $responseCode',
              );
        } catch (_) {
          // Confirm payment is best-effort
        }
      }

      if (!mounted) return;

      // Invalidate orders to refresh
      ref.invalidate(myOrdersProvider);

      if (isSuccess) {
        _showResult(
          icon: Icons.check_circle,
          color: Colors.green,
          title: 'Thanh toán thành công!',
          message: 'Đơn hàng của bạn đã được thanh toán thành công.',
        );
      } else {
        _showResult(
          icon: Icons.cancel,
          color: Colors.red,
          title: 'Thanh toán thất bại',
          message:
              'Giao dịch không thành công (Mã: ${responseCode ?? 'N/A'}). '
              'Bạn có thể thử thanh toán lại trong Đơn hàng của tôi.',
        );
      }
    } catch (_) {
      if (!mounted) return;

      // Even on error, try to parse vnp_ResponseCode from URL
      final uri = Uri.tryParse(returnUrl);
      final responseCode = uri?.queryParameters['vnp_ResponseCode'];
      final isSuccess = responseCode == '00';
      final paymentId =
          uri?.queryParameters['vnp_TxnRef'] ??
          uri?.queryParameters['paymentId'] ??
          _paymentIdFromUrl;

      // Try to confirm payment even on error
      if (paymentId != null && paymentId.isNotEmpty) {
        try {
          await ref
              .read(orderRepositoryProvider)
              .confirmPayment(
                paymentId,
                isSuccess: isSuccess,
                failureReason: isSuccess
                    ? null
                    : 'VNPay response code: $responseCode',
              );
        } catch (_) {}
      }

      ref.invalidate(myOrdersProvider);

      if (isSuccess) {
        _showResult(
          icon: Icons.check_circle,
          color: Colors.green,
          title: 'Thanh toán thành công!',
          message: 'Đơn hàng của bạn đã được thanh toán thành công.',
        );
      } else {
        _showResult(
          icon: Icons.info_outline,
          color: Colors.orange,
          title: 'Đã hoàn tất',
          message:
              'Giao dịch đã được xử lý. Kiểm tra trạng thái trong Đơn hàng của tôi.',
        );
      }
    }
  }

  void _showResult({
    required IconData icon,
    required Color color,
    required String title,
    required String message,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        icon: Icon(icon, color: color, size: 48),
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.go('/');
            },
            child: const Text('Về trang chủ'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.go('/');
              context.push('/orders');
            },
            child: const Text('Xem đơn hàng'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => _showExitConfirmation(),
        ),
        actions: const [ProfileAvatarAppBarAction()],
      ),
      body: Stack(
        children: [
          if (_isProcessing)
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Đang xử lý thanh toán...'),
                ],
              ),
            )
          else if (!_isPlatformSupported)
            Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.language, size: 64, color: Colors.blue),
                    const SizedBox(height: 24),
                    const Text(
                      'Thanh toán qua trình duyệt',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Tính năng thanh toán trong ứng dụng không hỗ trợ trên nền tảng này. Vui lòng nhấn nút bên dưới để mở trang thanh toán trong trình duyệt của bạn.',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                    FilledButton.icon(
                      onPressed: () => _launchPaymentUrl(),
                      icon: const Icon(Icons.open_in_browser),
                      label: const Text('Mở trang thanh toán'),
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () => context.pop(),
                      child: const Text('Quay lại'),
                    ),
                  ],
                ),
              ),
            )
          else if (_controller != null)
            WebViewWidget(controller: _controller!)
          else
            const Center(child: Text('Đang khởi tạo trình duyệt...')),
          if (_isLoading && !_isProcessing && _isPlatformSupported)
            const LinearProgressIndicator(),
        ],
      ),
    );
  }

  Future<void> _launchPaymentUrl() async {
    final uri = Uri.parse(widget.paymentUrl);
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
        if (mounted) {
          _showExternalLaunchInstructions();
        }
      } else {
        throw 'Could not launch $uri';
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Không thể mở trang thanh toán: $e')),
        );
      }
    }
  }

  void _showExternalLaunchInstructions() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        title: const Text('Đã mở trang thanh toán'),
        content: const Text(
          'Vui lòng hoàn tất thanh toán trong trình duyệt của bạn. '
          'Sau khi hoàn tất, hãy quay lại đây để kiểm tra trạng thái đơn hàng.',
        ),
        actions: [
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.go('/');
              context.push('/orders');
            },
            child: const Text('Xem đơn hàng của tôi'),
          ),
        ],
      ),
    );
  }

  void _showExitConfirmation() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Hủy thanh toán?'),
        content: const Text(
          'Bạn có chắc muốn thoát? Thanh toán có thể chưa hoàn tất.\n'
          'Bạn có thể thanh toán lại trong Đơn hàng của tôi.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Tiếp tục thanh toán'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(ctx);
              // Confirm payment as failed/cancelled
              final pid = _paymentIdFromUrl;
              if (pid != null && pid.isNotEmpty) {
                try {
                  await ref
                      .read(orderRepositoryProvider)
                      .confirmPayment(
                        pid,
                        isSuccess: false,
                        failureReason: 'User cancelled payment',
                      );
                } catch (_) {}
              }
              ref.invalidate(myOrdersProvider);
              if (mounted) {
                context.go('/');
                context.push('/orders');
              }
            },
            child: const Text('Thoát', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
