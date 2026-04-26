import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/order.dart';
import '../../../review/presentation/providers/review_providers.dart';
import '../providers/cancel_request_providers.dart';
import '../providers/order_provider.dart';
import '../providers/return_request_providers.dart';

// ─── Helpers ────────────────────────────────────────────────────────────────

final _currencyFormat = NumberFormat('#,###', 'vi_VN');
String _fmt(double amount) => '${_currencyFormat.format(amount)} ₫';

String _fmtDate(DateTime? date) {
  if (date == null) return '-';
  return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
}

String _fmtDateTime(DateTime? date) {
  if (date == null) return '-';
  return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
}

const _accent = AppColors.primary;

// ─── Status / label helpers ─────────────────────────────────────────────────

String _orderStatusLabel(String status) {
  switch (status) {
    case 'Pending':
      return 'Chờ xử lý';
    case 'Preparing':
      return 'Đang chuẩn bị';
    case 'ReadyToPick':
      return 'Chờ lấy hàng';
    case 'Delivering':
      return 'Đang giao';
    case 'Delivered':
      return 'Đã giao';
    case 'Returning':
      return 'Đang trả hàng';
    case 'Cancelled':
      return 'Đã hủy';
    case 'Partial_Returned':
      return 'Hoàn trả một phần';
    case 'Returned':
      return 'Đã trả hàng';
    default:
      return status;
  }
}

Color _statusColor(String status) {
  switch (status) {
    case 'Pending':
      return AppColors.statusPending;
    case 'Preparing':
      return AppColors.statusPreparing;
    case 'ReadyToPick':
      return AppColors.statusReadyToPick;
    case 'Delivering':
      return AppColors.statusDelivering;
    case 'Delivered':
      return AppColors.statusDelivered;
    case 'Cancelled':
      return AppColors.statusCancelled;
    case 'Returning':
    case 'Returned':
    case 'Partial_Returned':
      return AppColors.statusReturning;
    default:
      return Colors.grey;
  }
}

String _paymentStatusLabel(String status) {
  switch (status) {
    case 'Unpaid':
      return 'Chưa thanh toán';
    case 'Paid':
      return 'Đã thanh toán';
    case 'Partial_Refunded':
      return 'Hoàn tiền một phần';
    case 'Refunded':
      return 'Đã hoàn tiền';
    default:
      return status;
  }
}

Color _paymentStatusColor(String status) {
  switch (status) {
    case 'Unpaid':
      return AppColors.paymentUnpaid;
    case 'Paid':
      return AppColors.paymentPaid;
    case 'Partial_Refunded':
      return AppColors.paymentPartialRefund;
    case 'Refunded':
      return AppColors.paymentRefunded;
    default:
      return Colors.grey;
  }
}

String _paymentMethodLabel(String method) {
  switch (method) {
    case 'CashOnDelivery':
      return 'Thanh toán khi nhận hàng';
    case 'CashInStore':
      return 'Thanh toán tiền mặt tại quầy';
    case 'VnPay':
      return 'Thanh toán qua VNPay';
    case 'Momo':
      return 'Thanh toán qua MoMo';
    case 'ExternalBankTransfer':
      return 'Chuyển khoản ngân hàng';
    case 'PayOs':
      return 'Thanh toán qua PayOS';
    default:
      return method;
  }
}

String _carrierLabel(String? carrier) {
  switch (carrier) {
    case 'GHN':
      return 'Giao Hàng Nhanh';
    case 'GHTK':
      return 'Giao Hàng Tiết Kiệm';
    default:
      return carrier ?? '-';
  }
}

String _shippingStatusLabel(String? status) {
  switch (status) {
    case 'Pending':
      return 'Chờ lấy hàng';
    case 'PickedUp':
      return 'Đã lấy hàng';
    case 'InTransit':
      return 'Đang vận chuyển';
    case 'Delivered':
      return 'Đã giao';
    case 'Returned':
      return 'Trả lại';
    default:
      return status ?? '-';
  }
}

// ─── Order stepper logic ────────────────────────────────────────────────────

/// Maps order status to the step index in the progress stepper
int _statusToStep(String? status) {
  switch (status) {
    case 'Pending':
      return 0;
    case 'Preparing':
      return 2;
    case 'ReadyToPick':
      return 3;
    case 'Delivering':
      return 4;
    case 'Delivered':
      return 5;
    case 'Cancelled':
      return -1;
    case 'Returning':
    case 'Returned':
    case 'Partial_Returned':
      return -2;
    default:
      return 0;
  }
}

class _TrackingStep {
  final String title;
  final String? subtitle;
  final IconData icon;
  final bool isActive;
  final bool isCurrent;

  const _TrackingStep({
    required this.title,
    this.subtitle,
    required this.icon,
    this.isActive = false,
    this.isCurrent = false,
  });
}

List<_TrackingStep> _buildTrackingSteps(OrderDetail order) {
  final step = _statusToStep(order.status);
  final steps = <_TrackingStep>[
    _TrackingStep(
      title: 'Đơn Hàng\nĐã Đặt',
      subtitle: order.createdAt != null ? _fmtDateTime(order.createdAt) : null,
      icon: Icons.receipt_long,
      isActive: step >= 0,
      isCurrent: step == 0,
    ),
    _TrackingStep(
      title: 'Đã Thanh\nToán',
      subtitle: order.paidAt != null ? _fmtDateTime(order.paidAt) : (step >= 1 ? _fmtDateTime(order.updatedAt) : null),
      icon: Icons.payments_outlined,
      isActive: step >= 1,
      isCurrent: step == 1,
    ),
    _TrackingStep(
      title: 'Đang\nChuẩn Bị',
      subtitle: step >= 2 ? _fmtDateTime(order.updatedAt) : null,
      icon: Icons.inventory_2_outlined,
      isActive: step >= 2,
      isCurrent: step == 2,
    ),
    _TrackingStep(
      title: 'Chờ Lấy\nHàng',
      subtitle: step >= 3 ? _fmtDateTime(order.updatedAt) : null,
      icon: Icons.store_outlined,
      isActive: step >= 3,
      isCurrent: step == 3,
    ),
    _TrackingStep(
      title: 'Đang Giao\nHàng',
      subtitle: step >= 4 ? _fmtDateTime(order.updatedAt) : null,
      icon: Icons.local_shipping,
      isActive: step >= 4,
      isCurrent: step == 4,
    ),
    _TrackingStep(
      title: 'Đã Giao\nHàng',
      subtitle: step >= 5 ? _fmtDateTime(order.updatedAt) : null,
      icon: Icons.star_outline_rounded,
      isActive: step >= 5,
      isCurrent: step == 5,
    ),
  ];
  return steps;
}

// ─── Return stepper logic ───────────────────────────────────────────────────

class _ReturnStep {
  final String title;
  final IconData icon;
  final bool isActive;
  final bool isCurrent;

  const _ReturnStep({
    required this.title,
    required this.icon,
    this.isActive = false,
    this.isCurrent = false,
  });
}

List<_ReturnStep> _buildReturnSteps(OrderDetail order) {
  // Simplified return step based on order status
  // 0 = request created, 1 = shipping, 2 = received, 3 = refund complete
  int returnActiveStep;
  if (order.status == 'Returned') {
    returnActiveStep = 3;
  } else if (order.status == 'Partial_Returned') {
    returnActiveStep = 2;
  } else {
    returnActiveStep = 0; // Returning
  }

  return [
    _ReturnStep(
      title: 'Tạo yêu cầu\ntrả hàng',
      icon: Icons.assignment_return,
      isActive: returnActiveStep >= 0,
      isCurrent: returnActiveStep == 0,
    ),
    _ReturnStep(
      title: 'Đang gửi\nhàng hoàn',
      icon: Icons.local_shipping,
      isActive: returnActiveStep >= 1,
      isCurrent: returnActiveStep == 1,
    ),
    _ReturnStep(
      title: 'Shop đã\nnhận hàng',
      icon: Icons.inventory_2_outlined,
      isActive: returnActiveStep >= 2,
      isCurrent: returnActiveStep == 2,
    ),
    _ReturnStep(
      title: 'Hoàn tiền\nhoàn tất',
      icon: Icons.payments_outlined,
      isActive: returnActiveStep >= 3,
      isCurrent: returnActiveStep == 3,
    ),
  ];
}

// ─── Retry payment methods ──────────────────────────────────────────────────

const _returnRequestBlockedStatuses = {
  'Pending',
  'ApprovedForReturn',
  'RequestMoreInfo',
  'Inspecting',
  'ReadyForRefund',
  'Refunded',
};

const _cancelRequestBlockedStatuses = {'Pending'};

/// Cancel behavior — same logic as order list
({String mode, String buttonLabel, String note, bool needRefund, bool loseDepositWarning})? _getCancelBehavior(
    OrderDetail order) {
  final isPending = order.status == 'Pending';
  final isPreparing = order.status == 'Preparing';
  final isReadyToPick = order.status == 'ReadyToPick';
  final isFullyPaid = order.paymentStatus == 'Paid';
  final hasDepositPaid = order.requiredDepositAmount > 0 &&
      (order.paidAmount > 0 || order.depositAmount > 0) &&
      !isFullyPaid;

  // Pending + chưa cọc/chưa thanh toán 100% -> hủy trực tiếp.
  if (isPending && !isFullyPaid && !hasDepositPaid) {
    return (
      mode: 'direct',
      buttonLabel: 'Hủy đơn hàng',
      note:
          'Đơn hàng ở trạng thái chờ xử lý và chưa cọc/chưa thanh toán đầy đủ, hệ thống sẽ hủy ngay sau khi bạn xác nhận.',
      needRefund: false,
      loseDepositWarning: false,
    );
  }

  // Pending + đã cọc hoặc đã thanh toán 100% -> gửi yêu cầu hủy, không mất cọc.
  if (isPending && (hasDepositPaid || isFullyPaid)) {
    return (
      mode: 'request',
      buttonLabel: 'Yêu cầu hủy đơn',
      note:
          isFullyPaid
              ? 'Đơn hàng đã thanh toán 100%, yêu cầu hủy sẽ được Staff/Admin xem xét. Bạn sẽ không bị mất tiền cọc và cần cung cấp thông tin ngân hàng để hoàn tiền.'
              : 'Đơn hàng đã đặt cọc, yêu cầu hủy sẽ được Staff/Admin xem xét. Bạn sẽ không bị mất tiền cọc.',
      needRefund: isFullyPaid,
      loseDepositWarning: false,
    );
  }

  // Preparing/ReadyToPick -> luôn gửi yêu cầu hủy, cần cảnh báo mất cọc.
  if (isPreparing || isReadyToPick) {
    return (
      mode: 'request',
      buttonLabel: 'Yêu cầu hủy đơn',
      note:
          'Đơn hàng đã vào giai đoạn xử lý, yêu cầu hủy sẽ được Staff/Admin xem xét. Lưu ý: khách sẽ bị mất tiền cọc nếu đơn có đặt cọc.',
      needRefund: isFullyPaid,
      loseDepositWarning: true,
    );
  }
  return null;
}

// ═══════════════════════════════════════════════════════════════════════════
// ORDER DETAIL PAGE
// ═══════════════════════════════════════════════════════════════════════════

class OrderDetailPage extends ConsumerStatefulWidget {
  final String orderId;
  const OrderDetailPage({super.key, required this.orderId});

  @override
  ConsumerState<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends ConsumerState<OrderDetailPage> {
  bool _isSyncing = false;

  Future<void> _syncShipping() async {
    setState(() => _isSyncing = true);
    try {
      await ref.read(returnRequestRepositoryProvider).syncShippingStatus();
      ref.invalidate(orderDetailProvider(widget.orderId));
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Đã đồng bộ trạng thái vận chuyển')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Không thể đồng bộ, vui lòng thử lại')),
        );
      }
    } finally {
      if (mounted) setState(() => _isSyncing = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final detailAsync = ref.watch(orderDetailProvider(widget.orderId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết đơn hàng'),
        actions: [
          IconButton(
            icon: _isSyncing
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2, color: _accent),
                  )
                : const Icon(Icons.sync),
            tooltip: 'Đồng bộ trạng thái vận chuyển',
            onPressed: _isSyncing ? null : _syncShipping,
          ),
          IconButton(
            icon: const Icon(Icons.receipt_long_outlined),
            tooltip: 'Hóa đơn',
            onPressed: () => _showInvoice(context),
          ),
        ],
      ),
      body: detailAsync.when(
        loading: () =>
            const Center(child: CircularProgressIndicator(color: _accent)),
        error: (error, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 12),
              const Text('Không thể tải chi tiết đơn hàng'),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () =>
                    ref.invalidate(orderDetailProvider(widget.orderId)),
                child: const Text('Thử lại'),
              ),
            ],
          ),
        ),
        data: (order) => _buildContent(context, order),
      ),
    );
  }

  Widget _buildContent(BuildContext context, OrderDetail order) {
    final step = _statusToStep(order.status);
    final isCancelled = step == -1;
    final isReturned = step == -2;
    final isPendingUnpaid =
        order.status == 'Pending' && order.paymentStatus == 'Unpaid';
    final isDelivered = order.status == 'Delivered';
    final myReturns = ref.watch(myReturnRequestsProvider(pageSize: 100)).value;
    String? latestReturnStatus;
    if (myReturns != null) {
      for (final request in myReturns.items) {
        if (request.orderId == order.id) {
          latestReturnStatus = request.status;
          break;
        }
      }
    }
    final hasBlockingReturnRequest = latestReturnStatus != null &&
        _returnRequestBlockedStatuses.contains(latestReturnStatus);
    final isReturnRejected = latestReturnStatus == 'Rejected';
    final hasReturnRequest = hasBlockingReturnRequest ||
        order.paymentStatus == 'Partial_Refunded' ||
        order.paymentStatus == 'Refunded' ||
        order.status == 'Returning' ||
        order.status == 'Returned' ||
        order.status == 'Partial_Returned';
    final canReturn = isDelivered && order.isReturnable == true && !hasReturnRequest;
    final myCancels = ref.watch(myCancelRequestsProvider(pageSize: 100)).value;
    String? latestCancelStatus;
    if (myCancels != null) {
      for (final request in myCancels.items) {
        if (request.orderId == order.id) {
          latestCancelStatus = request.status;
          break;
        }
      }
    }
    final hasCancelRequest = latestCancelStatus != null &&
        _cancelRequestBlockedStatuses.contains(latestCancelStatus);
    final isCancelRejected = latestCancelStatus == 'Rejected';
    final cancelBehavior = hasCancelRequest ? null : _getCancelBehavior(order);

    // Pre-fetch reviews to know which items are already reviewed
    final myReviews = ref.watch(myReviewsProvider).asData?.value ?? [];
    final reviewedDetailIds = myReviews
        .where((r) => r.orderDetailId != null)
        .map((r) => r.orderDetailId!)
        .toSet();
    final allReviewed = isDelivered &&
        order.orderDetails.every((item) => reviewedDetailIds.contains(item.id));

    // Use the latest non-cancelled Payment transaction (after retry, COD is cancelled, VNPay is the active one)
    final paymentTxns = order.paymentTransactions
        .where((t) => t.transactionType == 'Payment')
        .toList();
    final latestPayment = paymentTxns
        .where((t) => t.status != 'Cancelled')
        .lastOrNull
        ?? paymentTxns.lastOrNull
        ?? order.paymentTransactions.lastOrNull;

    return Column(
      children: [
        Expanded(
          child: RefreshIndicator(
            color: _accent,
            onRefresh: () async =>
                ref.invalidate(orderDetailProvider(widget.orderId)),
            child: ListView(
              padding: const EdgeInsets.all(14),
              children: [
                // ── Order code + status ──
                _buildOrderHeader(order),
                const SizedBox(height: 16),

                // ── Stepper / Banner ──
                if (isCancelled)
                  _buildBanner(
                    icon: Icons.cancel,
                    color: Colors.red,
                    title: 'Đơn hàng đã bị hủy',
                    subtitle: 'Đơn hàng đã được hủy bởi hệ thống hoặc người dùng.',
                  )
                else if (isReturned)
                  _buildReturnTimeline(order)
                else
                  _buildTrackingTimeline(order),

                // ── Retry payment alert ──
                if (isPendingUnpaid) ...[
                  const SizedBox(height: 12),
                  _buildRetryPaymentAlert(order),
                ],

                const SizedBox(height: 16),

                // ── Recipient info ──
                if (order.recipientInfo != null)
                  _buildRecipientSection(order.recipientInfo!),

                // ── Shipping info ──
                if (order.shippingInfo != null) ...[
                  const SizedBox(height: 12),
                  _buildShippingSection(order.shippingInfo!),
                ],

                const SizedBox(height: 16),

                // ── Product items ──
                _buildProductsSection(order),

                const SizedBox(height: 16),

                // ── Price summary ──
                _buildPriceSummary(order, latestPayment),

                const SizedBox(height: 80), // room for bottom bar
              ],
            ),
          ),
        ),

        // ── Bottom action bar ──
        _buildBottomBar(
          context,
          order: order,
          isPendingUnpaid: isPendingUnpaid,
          cancelBehavior: cancelBehavior,
          hasCancelRequest: hasCancelRequest,
          isCancelRejected: isCancelRejected,
          isReturnRejected: isReturnRejected,
          canReturn: canReturn,
          isDelivered: isDelivered,
          allReviewed: allReviewed,
          hasReturnRequest: hasReturnRequest,
          latestPayment: latestPayment,
        ),
      ],
    );
  }

  // ── Order header ──────────────────────────────────────────────────────────

  Widget _buildOrderHeader(OrderDetail order) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    '#${order.code.isNotEmpty ? order.code : order.id}',
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'monospace',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 6),
                  GestureDetector(
                    onTap: () {
                      final code =
                          order.code.isNotEmpty ? order.code : order.id;
                      Clipboard.setData(ClipboardData(text: code));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Đã sao chép mã đơn hàng'),
                          duration: Duration(seconds: 1),
                        ),
                      );
                    },
                    child:
                        Icon(Icons.copy, size: 15, color: Colors.grey[500]),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                'Ngày đặt: ${_fmtDate(order.createdAt)}',
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (order.status != null)
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: _statusColor(order.status!).withAlpha(25),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: _statusColor(order.status!).withAlpha(60)),
                ),
                child: Text(
                  _orderStatusLabel(order.status!),
                  style: TextStyle(
                    color: _statusColor(order.status!),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            if (order.paymentStatus != null) ...[
              const SizedBox(height: 6),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: _paymentStatusColor(order.paymentStatus!).withAlpha(25),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color:
                          _paymentStatusColor(order.paymentStatus!).withAlpha(60)),
                ),
                child: Text(
                  _paymentStatusLabel(order.paymentStatus!),
                  style: TextStyle(
                    color: _paymentStatusColor(order.paymentStatus!),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }

  // ── Tracking Timeline (horizontal like React web) ──────────────────────────

  Widget _buildTrackingTimeline(OrderDetail order) {
    final steps = _buildTrackingSteps(order);
    const activeColor = Color(0xFF4CAF50); // green matching screenshot

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey[200]!),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(steps.length, (i) {
            final step = steps[i];
            final isFirst = i == 0;
            final isLast = i == steps.length - 1;

            return Expanded(
              child: Column(
                children: [
                  // ── Line + Circle row ──
                  Row(
                    children: [
                      // Left line
                      if (!isFirst)
                        Expanded(
                          child: Container(
                            height: 3,
                            color: step.isActive ? activeColor : Colors.grey[300],
                          ),
                        )
                      else
                        const Expanded(child: SizedBox()),
                      // Circle with icon
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: step.isActive ? Colors.white : Colors.grey[100],
                          border: Border.all(
                            color: step.isActive ? activeColor : Colors.grey[350]!,
                            width: 2.5,
                          ),
                        ),
                        child: Icon(
                          step.icon,
                          size: 20,
                          color: step.isActive ? activeColor : Colors.grey[400],
                        ),
                      ),
                      // Right line
                      if (!isLast)
                        Expanded(
                          child: Container(
                            height: 3,
                            color: (i + 1 < steps.length && steps[i + 1].isActive)
                                ? activeColor
                                : Colors.grey[300],
                          ),
                        )
                      else
                        const Expanded(child: SizedBox()),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // ── Title ──
                  Text(
                    step.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: step.isActive ? FontWeight.w600 : FontWeight.w500,
                      color: step.isActive ? Colors.green.shade800 : Colors.grey[500],
                      height: 1.3,
                    ),
                  ),
                  // ── Subtitle / date ──
                  if (step.subtitle != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      step.subtitle!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 9,
                        color: step.isActive ? Colors.green.shade600 : Colors.grey[400],
                      ),
                    ),
                  ],
                ],
              ),
            );
          }),
        ),
      ),
    );
  }

  // ── Return Timeline (for returning/returned orders) ────────────────────────

  Widget _buildReturnTimeline(OrderDetail order) {
    final steps = _buildReturnSteps(order);
    const activeColor = Color(0xFFE65100); // deep orange for return flow

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.deepOrange[100]!),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          children: [
            // ── Header ──
            Row(
              children: [
                const SizedBox(width: 8),
                Icon(Icons.assignment_return, size: 18, color: Colors.deepOrange[700]),
                const SizedBox(width: 6),
                Text(
                  order.status == 'Returned'
                      ? 'Đã hoàn trả'
                      : order.status == 'Partial_Returned'
                          ? 'Hoàn trả một phần'
                          : 'Đang trả hàng',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Colors.deepOrange[800],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            // ── Stepper row ──
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(steps.length, (i) {
                final step = steps[i];
                final isFirst = i == 0;
                final isLast = i == steps.length - 1;

                return Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          if (!isFirst)
                            Expanded(
                              child: Container(
                                height: 3,
                                color: step.isActive ? activeColor : Colors.grey[300],
                              ),
                            )
                          else
                            const Expanded(child: SizedBox()),
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: step.isActive ? Colors.white : Colors.grey[100],
                              border: Border.all(
                                color: step.isActive ? activeColor : Colors.grey[350]!,
                                width: 2.5,
                              ),
                            ),
                            child: Icon(
                              step.icon,
                              size: 18,
                              color: step.isActive ? activeColor : Colors.grey[400],
                            ),
                          ),
                          if (!isLast)
                            Expanded(
                              child: Container(
                                height: 3,
                                color: (i + 1 < steps.length && steps[i + 1].isActive)
                                    ? activeColor
                                    : Colors.grey[300],
                              ),
                            )
                          else
                            const Expanded(child: SizedBox()),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        step.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 9.5,
                          fontWeight: step.isActive ? FontWeight.w600 : FontWeight.w500,
                          color: step.isActive ? Colors.deepOrange[800] : Colors.grey[500],
                          height: 1.3,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  // ── Banner (Cancelled / Returned) ─────────────────────────────────────────

  Widget _buildBanner({
    required IconData icon,
    required Color color,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color.withAlpha(15),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withAlpha(50)),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 32),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: color)),
                const SizedBox(height: 2),
                Text(subtitle,
                    style: TextStyle(fontSize: 12, color: Colors.grey[600])),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ── Retry payment alert ───────────────────────────────────────────────────

  Widget _buildRetryPaymentAlert(OrderDetail order) {
    final expiresAt = order.paymentExpiresAt;
    final now = DateTime.now();
    final isExpired = expiresAt != null && expiresAt.isBefore(now);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.orange.shade200),
      ),
      child: Row(
        children: [
          Icon(Icons.payment, color: Colors.orange.shade700, size: 26),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isExpired
                      ? 'Hạn thanh toán đã hết'
                      : 'Đơn hàng chưa được thanh toán',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: Colors.orange.shade800,
                  ),
                ),
                if (expiresAt != null) ...[
                  const SizedBox(height: 2),
                  Text(
                    'Hạn thanh toán: ${_fmtDateTime(expiresAt)}',
                    style: TextStyle(
                        fontSize: 12, color: Colors.orange.shade700),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ── Recipient info ────────────────────────────────────────────────────────

  Widget _buildRecipientSection(RecipientInfo info) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey[200]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.local_shipping_outlined,
                    size: 18, color: _accent),
                SizedBox(width: 6),
                Text(
                  'Thông tin nhận hàng',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                ),
              ],
            ),
            const Divider(height: 18),
            _InfoRow(
              icon: Icons.person_outline,
              label: 'Người nhận',
              value: info.name ?? '-',
            ),
            _InfoRow(
              icon: Icons.phone_outlined,
              label: 'Điện thoại',
              value: info.phoneNumber ?? '-',
            ),
            _InfoRow(
              icon: Icons.location_on_outlined,
              label: 'Địa chỉ',
              value: [
                info.fullAddress,
                info.wardName,
                info.districtName,
                info.provinceName,
              ].where((s) => s != null && s.isNotEmpty).join(', '),
            ),
          ],
        ),
      ),
    );
  }

  // ── Shipping info ─────────────────────────────────────────────────────────

  Widget _buildShippingSection(ShippingInfo info) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey[200]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.inventory_2_outlined, size: 18, color: _accent),
                SizedBox(width: 6),
                Text(
                  'Thông tin vận chuyển',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                ),
              ],
            ),
            const Divider(height: 18),
            _InfoRow(
              icon: Icons.business_outlined,
              label: 'Đơn vị',
              value: _carrierLabel(info.carrierName),
            ),
            if (info.trackingNumber != null && info.trackingNumber!.isNotEmpty)
              _InfoRow(
                icon: Icons.confirmation_number_outlined,
                label: 'Mã vận đơn',
                value: info.trackingNumber!,
              ),
            if (info.status != null)
              _InfoRow(
                icon: Icons.sync_outlined,
                label: 'Trạng thái',
                value: _shippingStatusLabel(info.status),
              ),
            if (info.estimatedDeliveryDate != null)
              _InfoRow(
                icon: Icons.calendar_today_outlined,
                label: 'Dự kiến',
                value: _fmtDate(info.estimatedDeliveryDate),
              ),
            _InfoRow(
              icon: Icons.paid_outlined,
              label: 'Phí ship',
              value: info.shippingFee > 0 ? _fmt(info.shippingFee) : 'Miễn phí',
            ),
          ],
        ),
      ),
    );
  }

  // ── Products ──────────────────────────────────────────────────────────────

  Widget _buildProductsSection(OrderDetail order) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey[200]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.shopping_bag_outlined,
                    size: 18, color: _accent),
                const SizedBox(width: 6),
                const Text(
                  'Sản phẩm',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                ),
                const Spacer(),
                Text(
                  '${order.orderDetails.length} sản phẩm',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
            const Divider(height: 18),
            ...order.orderDetails.map((item) => _buildProductRow(item)),
          ],
        ),
      ),
    );
  }

  Widget _buildProductRow(OrderDetailItem item) {
    final hasDiscount =
        item.unitPrice > 0 && (item.unitPrice * item.quantity) != item.total;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: item.imageUrl != null && item.imageUrl!.isNotEmpty
                ? Image.network(
                    item.imageUrl!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) =>
                        _imagePlaceholder(60),
                  )
                : _imagePlaceholder(60),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.variantName,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w500),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'x${item.quantity}',
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                    const SizedBox(width: 8),
                    if (hasDiscount)
                      Text(
                        _fmt(item.unitPrice),
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey[400],
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            _fmt(item.total),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: _accent,
            ),
          ),
        ],
      ),
    );
  }

  Widget _imagePlaceholder(double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Icon(Icons.image_not_supported_outlined,
          color: Colors.grey[400], size: 22),
    );
  }

  // ── Price summary ─────────────────────────────────────────────────────────

  Widget _buildPriceSummary(
      OrderDetail order, PaymentTransaction? latestPayment) {
    final subtotal = order.subTotal > 0
        ? order.subTotal
        : order.orderDetails.fold<double>(0, (s, i) => s + i.total);
    final shippingFee =
        order.shippingFee > 0 ? order.shippingFee : (order.shippingInfo?.shippingFee ?? 0);
    final voucherDiscount = order.voucherDiscountTotal > 0
        ? order.voucherDiscountTotal
        : (subtotal + shippingFee - order.totalAmount);
    final requiredDeposit = order.requiredDepositAmount > 0
        ? order.requiredDepositAmount
        : order.depositAmount;
    final inferredPaidDeposit = requiredDeposit > 0
        ? (order.paidAmount > 0 ? order.paidAmount : order.depositAmount)
        : order.depositAmount;
    final paidDeposit = requiredDeposit > 0
        ? (inferredPaidDeposit > requiredDeposit
            ? requiredDeposit
            : inferredPaidDeposit)
        : inferredPaidDeposit;
    final remainingAmount = order.remainingAmount > 0
        ? order.remainingAmount
        : (order.totalAmount - order.paidAmount);

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey[200]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            const Row(
              children: [
                Icon(Icons.receipt_outlined, size: 18, color: _accent),
                SizedBox(width: 6),
                Text(
                  'Tóm tắt đơn hàng',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                ),
              ],
            ),
            const Divider(height: 18),
            _PriceRow(
              label: 'Tạm tính',
              value: _fmt(subtotal),
            ),
            _PriceRow(
              label: 'Phí vận chuyển',
              value: shippingFee > 0 ? _fmt(shippingFee) : 'Miễn phí',
              valueColor: shippingFee > 0 ? null : Colors.green,
            ),
            if (voucherDiscount > 0) ...[
              _PriceRow(
                label:
                    'Voucher${order.voucherCode != null ? ' (${order.voucherCode})' : ''}',
                value: '-${_fmt(voucherDiscount)}',
                valueColor: Colors.green,
              ),
            ],
            const Divider(height: 16),
            _PriceRow(
              label: 'Tổng cộng',
              value: _fmt(order.totalAmount),
              isBold: true,
              valueColor: _accent,
            ),
            if (requiredDeposit > 0) ...[
              const SizedBox(height: 10),
              _buildDepositInfoCard(
                requiredDeposit: requiredDeposit,
                paidDeposit: paidDeposit,
                remainingAmount: remainingAmount < 0 ? 0 : remainingAmount,
                depositGatewayLabel: latestPayment?.paymentMethod != null
                    ? _paymentMethodLabel(latestPayment!.paymentMethod!)
                    : null,
              ),
            ],
            const SizedBox(height: 8),
            if (latestPayment?.paymentMethod != null)
              _PriceRow(
                label: 'Phương thức thanh toán',
                value: _paymentMethodLabel(latestPayment!.paymentMethod!),
                isSmall: true,
              ),
            if (order.paymentExpiresAt != null)
              _PriceRow(
                label: 'Hạn thanh toán',
                value: _fmtDateTime(order.paymentExpiresAt),
                isSmall: true,
                valueColor: order.paymentExpiresAt!.isBefore(DateTime.now())
                    ? Colors.red
                    : Colors.orange,
              ),
            if (order.paidAt != null)
              _PriceRow(
                label: 'Thanh toán lúc',
                value: _fmtDateTime(order.paidAt),
                isSmall: true,
                valueColor: Colors.green,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildDepositInfoCard({
    required double requiredDeposit,
    required double paidDeposit,
    required double remainingAmount,
    String? depositGatewayLabel,
  }) {
    final isDepositPaid = paidDeposit > 0;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blue.shade300),
        color: Colors.blue.shade50,
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blue.shade600,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(9)),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Thông tin đặt cọc',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.25),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    isDepositPaid ? 'Đã đặt cọc' : 'Chưa đặt cọc',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                _PriceRow(label: 'Tiền cọc yêu cầu', value: _fmt(requiredDeposit)),
                _PriceRow(
                  label: 'Khách đã thanh toán cọc',
                  value: _fmt(paidDeposit),
                  valueColor: Colors.green.shade700,
                ),
                if (depositGatewayLabel != null && depositGatewayLabel.isNotEmpty)
                  _PriceRow(label: 'Cổng thanh toán cọc', value: depositGatewayLabel),
                const Divider(height: 12),
                _PriceRow(
                  label: 'Còn cần thu',
                  value: _fmt(remainingAmount),
                  isBold: true,
                  valueColor: Colors.deepOrange,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ── Bottom action bar ─────────────────────────────────────────────────────

  Widget _buildBottomBar(
    BuildContext context, {
    required OrderDetail order,
    required bool isPendingUnpaid,
    required ({String mode, String buttonLabel, String note, bool needRefund, bool loseDepositWarning})? cancelBehavior,
    required bool hasCancelRequest,
    required bool isCancelRejected,
    required bool isReturnRejected,
    required bool canReturn,
    required bool isDelivered,
    required bool allReviewed,
    required bool hasReturnRequest,
    required PaymentTransaction? latestPayment,
  }) {
    final hasActions =
        isPendingUnpaid || cancelBehavior != null || hasCancelRequest || canReturn || isDelivered;
    if (!hasActions) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(top: BorderSide(color: Colors.grey[300]!)),
      ),
      child: SafeArea(
        top: false,
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          alignment: WrapAlignment.end,
          children: [
            if (isPendingUnpaid)
              FilledButton.icon(
                icon: const Icon(Icons.payment, size: 16),
                label: const Text('Thanh toán lại'),
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () =>
                    _showRetryPaymentDialog(context, order, latestPayment),
              ),
            if (hasCancelRequest)
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.grey,
                  side: const BorderSide(color: Colors.grey),
                ),
                onPressed: null,
                child: const Text('Đã yêu cầu hủy đơn'),
              )
            else if (cancelBehavior != null)
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: cancelBehavior.mode == 'direct'
                      ? Colors.red
                      : Colors.orange,
                  side: BorderSide(
                    color: cancelBehavior.mode == 'direct'
                        ? Colors.red
                        : Colors.orange,
                  ),
                ),
                onPressed: () async {
                  final normalizedStatus =
                      (order.status ?? '').trim().toLowerCase();
                  final result = await context.push('/orders/${order.id}/cancel', extra: {
                    'orderId': order.id,
                    'orderStatus': order.status,
                    'showBankInfoForStatus': normalizedStatus == 'pending',
                    'mode': cancelBehavior.mode,
                    'note': cancelBehavior.note,
                    'needRefund': cancelBehavior.needRefund,
                    'loseDepositWarning': cancelBehavior.loseDepositWarning,
                  });
                  if (result == true) {
                    ref.invalidate(orderDetailProvider(widget.orderId));
                    ref.invalidate(myCancelRequestsProvider(pageSize: 100));
                  }
                },
                child: Text(cancelBehavior.buttonLabel),
              ),
            if (!hasCancelRequest && cancelBehavior != null && isCancelRejected)
              Padding(
                padding: const EdgeInsets.only(left: 2),
                child: Text(
                  'Yêu cầu trước đã bị từ chối, bạn có thể gửi lại.',
                  style: TextStyle(fontSize: 11, color: Colors.orange.shade800),
                ),
              ),
            if (isDelivered)
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: canReturn ? Colors.orange : Colors.grey,
                  side: BorderSide(color: canReturn ? Colors.orange : Colors.grey),
                ),
                onPressed: canReturn
                    ? () async {
                        final result = await context.push('/return-requests/create', extra: {
                          'orderId': order.id,
                          'orderItems': order.orderDetails,
                        });
                        if (result == true) {
                          ref.invalidate(myReturnRequestsProvider(pageSize: 100));
                          ref.invalidate(orderDetailProvider(widget.orderId));
                        }
                      }
                    : null,
                child: Text(
                  hasReturnRequest
                      ? 'Đã yêu cầu trả hàng'
                      : (isReturnRejected ? 'Yêu cầu trả hàng lại' : 'Yêu cầu trả hàng'),
                ),
              ),
            if (isDelivered)
              FilledButton.icon(
                icon: Icon(allReviewed ? Icons.check_circle : Icons.star_outline, size: 16),
                label: Text(allReviewed ? 'Đã đánh giá' : 'Đánh giá'),
                style: FilledButton.styleFrom(
                  backgroundColor: allReviewed ? Colors.grey : _accent,
                ),
                onPressed: allReviewed ? null : () => _showReviewItemsSheet(context, order),
              ),
          ],
        ),
      ),
    );
  }

  // ── Retry Payment Dialog ──────────────────────────────────────────────────

  void _showReviewItemsSheet(BuildContext context, OrderDetail order) {
    final myReviews = ref.read(myReviewsProvider).asData?.value ?? [];
    final reviewedDetailIds = myReviews
        .where((r) => r.orderDetailId != null)
        .map((r) => r.orderDetailId!)
        .toSet();

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Chọn sản phẩm để đánh giá',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
              const SizedBox(height: 12),
              ...order.orderDetails.map((item) {
                final alreadyReviewed = reviewedDetailIds.contains(item.id);
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: item.imageUrl != null && item.imageUrl!.isNotEmpty
                        ? Image.network(item.imageUrl!, width: 48, height: 48, fit: BoxFit.cover,
                            errorBuilder: (_, _, _) => _imagePlaceholder(48))
                        : _imagePlaceholder(48),
                  ),
                  title: Text(item.variantName,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: alreadyReviewed ? Colors.grey : null,
                      ),
                      maxLines: 2, overflow: TextOverflow.ellipsis),
                  subtitle: Text(
                    alreadyReviewed
                        ? 'Đã đánh giá'
                        : 'x${item.quantity} · ${_fmt(item.total)}',
                    style: TextStyle(fontSize: 12, color: alreadyReviewed ? Colors.green : Colors.grey[600]),
                  ),
                  trailing: alreadyReviewed
                      ? const Icon(Icons.check_circle, color: Colors.green, size: 20)
                      : const Icon(Icons.chevron_right, color: AppColors.textSecondary),
                  contentPadding: EdgeInsets.zero,
                  enabled: !alreadyReviewed,
                  onTap: alreadyReviewed
                      ? null
                      : () {
                          Navigator.pop(context);
                          context.push(
                            '/reviews/write?orderDetailId=${item.id}&variantId=${item.variantId}&variantName=${Uri.encodeComponent(item.variantName)}',
                          );
                        },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  void _showRetryPaymentDialog(BuildContext context, OrderDetail order,
      PaymentTransaction? latestPayment) {
    final isOffline = order.type == 'Offline';
    final selectedBaseMethod = isOffline ? 'CashInStore' : 'CashOnDelivery';
    final fullPaymentMethods = const ['VnPay', 'Momo', 'PayOs'];
    String paymentMode = 'deposit'; // deposit | full
    String selectedFullGateway = 'VnPay';
    String selectedDepositGateway = 'VnPay';
    bool isSubmitting = false;

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) {
          final selectedMethod =
              paymentMode == 'full' ? selectedFullGateway : selectedBaseMethod;
          final selectedDepositMethod =
              paymentMode == 'full' ? selectedBaseMethod : selectedDepositGateway;
          return AlertDialog(
          title: const Text('Thanh toán lại đơn hàng'),
          content: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chọn cách thanh toán lại đơn hàng.',
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: paymentMode == 'deposit' ? _accent : Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: RadioListTile<String>(
                      value: 'deposit',
                      groupValue: paymentMode,
                      dense: true,
                      activeColor: _accent,
                      title: const Text(
                        'Thanh toán tiền đặt cọc',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        'Giữ đơn với ${_paymentMethodLabel(selectedBaseMethod)}, chọn cổng thu tiền cọc bên dưới.',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                      onChanged: isSubmitting
                          ? null
                          : (v) => setDialogState(() => paymentMode = v ?? 'deposit'),
                    ),
                  ),
                  if (paymentMode == 'deposit') ...[
                    DropdownButtonFormField<String>(
                      initialValue: selectedDepositGateway,
                      decoration: const InputDecoration(
                        labelText: 'Cổng thanh toán tiền cọc',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                      items: const [
                        DropdownMenuItem(value: 'VnPay', child: Text('VNPay')),
                        DropdownMenuItem(value: 'Momo', child: Text('MoMo')),
                        DropdownMenuItem(value: 'PayOs', child: Text('PayOS')),
                      ],
                      onChanged: (v) {
                        if (v != null && !isSubmitting) {
                          setDialogState(() => selectedDepositGateway = v);
                        }
                      },
                    ),
                    const SizedBox(height: 6),
                  ],
                  Container(
                    margin: const EdgeInsets.only(top: 6, bottom: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: paymentMode == 'full' ? _accent : Colors.grey[300]!,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: RadioListTile<String>(
                      value: 'full',
                      groupValue: paymentMode,
                      dense: true,
                      activeColor: _accent,
                      title: const Text(
                        'Chuyển sang thanh toán toàn phần',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        'Thanh toán toàn bộ còn lại ngay qua VNPay/MoMo/PayOS.',
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                      onChanged: isSubmitting
                          ? null
                          : (v) => setDialogState(() => paymentMode = v ?? 'full'),
                    ),
                  ),
                  if (paymentMode == 'full')
                    Wrap(
                      spacing: 8,
                      children: fullPaymentMethods.map((method) {
                        final selected = selectedFullGateway == method;
                        return ChoiceChip(
                          label: Text(_paymentMethodLabel(method)),
                          selected: selected,
                          onSelected: isSubmitting
                              ? null
                              : (_) => setDialogState(() => selectedFullGateway = method),
                        );
                      }).toList(),
                    ),
                ],
              ),
          ),
          actions: [
            TextButton(
              onPressed:
                  isSubmitting ? null : () => Navigator.pop(ctx),
              child: const Text('Đóng'),
            ),
            FilledButton(
              style:
                  FilledButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: isSubmitting
                  ? null
                  : () async {
                      setDialogState(() => isSubmitting = true);
                      try {
                        // Fetch fresh order to get the latest payment transaction ID
                        final freshOrder = await ref
                            .read(orderRepositoryProvider)
                            .getOrderDetail(order.id);
                        // Get the latest non-cancelled Payment transaction
                        final paymentTxns = freshOrder.paymentTransactions
                            .where((t) => t.transactionType == 'Payment')
                            .toList();
                        final freshPayment = paymentTxns
                            .where((t) => t.status != 'Cancelled')
                            .lastOrNull
                            ?? paymentTxns.lastOrNull
                            ?? freshOrder.paymentTransactions.lastOrNull;
                        final paymentId = freshPayment?.id;
                        if (paymentId == null || paymentId.isEmpty) {
                          throw Exception('Không tìm thấy giao dịch thanh toán');
                        }
                        final url = await ref
                            .read(orderRepositoryProvider)
                            .retryPayment(
                              paymentId,
                              selectedMethod,
                              newDepositMethod: selectedDepositMethod,
                              posSessionId: null,
                            );
                        final gatewayMethod = paymentMode == 'full'
                            ? selectedMethod
                            : selectedDepositMethod;
                        final shouldOpenGateway =
                            gatewayMethod == 'VnPay' ||
                            gatewayMethod == 'Momo' ||
                            gatewayMethod == 'PayOs';
                        if (shouldOpenGateway) {
                          if (ctx.mounted) Navigator.pop(ctx);
                          if (url.isNotEmpty && context.mounted) {
                            context.push(
                                '/payment-webview?url=${Uri.encodeComponent(url)}');
                          }
                        } else {
                          if (ctx.mounted) Navigator.pop(ctx);
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Đơn hàng đã được xác nhận!'),
                                backgroundColor: Colors.green,
                              ),
                            );
                          }
                        }
                        ref.invalidate(
                            orderDetailProvider(widget.orderId));
                      } catch (e) {
                        setDialogState(() => isSubmitting = false);
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'Không thể thanh toán lại: $e'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      }
                    },
              child: Text(
                  isSubmitting ? 'Đang xử lý...' : 'Thanh toán ngay'),
            ),
          ],
        );
        },
      ),
    );
  }

  // ── Invoice Bottom Sheet ──────────────────────────────────────────────────

  void _showInvoice(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.7,
        maxChildSize: 0.95,
        builder: (ctx, scrollController) => Consumer(
          builder: (_, ref, _) {
            final invoiceAsync =
                ref.watch(orderInvoiceProvider(widget.orderId));
            return invoiceAsync.when(
              loading: () => const Center(
                  child: CircularProgressIndicator(color: _accent)),
              error: (e, _) => Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text('Không thể tải hóa đơn: $e'),
                ),
              ),
              data: (invoice) => _InvoiceSheet(
                invoice: invoice,
                scrollController: scrollController,
              ),
            );
          },
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// SMALL WIDGETS
// ═══════════════════════════════════════════════════════════════════════════

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 16, color: Colors.grey[500]),
          const SizedBox(width: 8),
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
          ),
          Expanded(
            child: Text(
              value.isNotEmpty ? value : '-',
              style:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;
  final bool isSmall;
  final Color? valueColor;

  const _PriceRow({
    required this.label,
    required this.value,
    this.isBold = false,
    this.isSmall = false,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: isSmall ? 12 : 13,
              fontWeight: isBold ? FontWeight.w700 : FontWeight.w400,
              color: isSmall ? Colors.grey[500] : Colors.grey[700],
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: isBold ? 16 : (isSmall ? 12 : 13),
              fontWeight: isBold ? FontWeight.w700 : FontWeight.w500,
              color: valueColor ?? (isBold ? _accent : Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// INVOICE SHEET
// ═══════════════════════════════════════════════════════════════════════════

class _InvoiceSheet extends StatelessWidget {
  final Invoice invoice;
  final ScrollController scrollController;

  const _InvoiceSheet({
    required this.invoice,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      padding: const EdgeInsets.all(20),
      children: [
        Center(
          child: Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        const Center(
          child: Text(
            'HÓA ĐƠN',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 4),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '#${invoice.code}',
                style: TextStyle(
                    color: Colors.grey[600], fontFamily: 'monospace'),
              ),
              const SizedBox(width: 6),
              GestureDetector(
                onTap: () {
                  Clipboard.setData(ClipboardData(text: invoice.code));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Đã sao chép mã hóa đơn'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                child: Icon(Icons.copy, size: 14, color: Colors.grey[500]),
              ),
            ],
          ),
        ),
        const Divider(height: 28),
        _invoiceInfoLine('Ngày đặt', _fmtDate(invoice.orderDate)),
        _invoiceInfoLine('Trạng thái', invoice.orderStatus),
        _invoiceInfoLine('Nhân viên', invoice.staffName),
        _invoiceInfoLine('Khách hàng', invoice.customerName),
        _invoiceInfoLine('SĐT', invoice.recipientPhone),
        _invoiceInfoLine('Địa chỉ', invoice.recipientAddress),
        const Divider(height: 24),
        // Items table header
        Row(
          children: [
            const Expanded(
                flex: 4,
                child: Text('Sản phẩm',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 12))),
            const Expanded(
                child: Text('SL',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 12))),
            const Expanded(
                flex: 2,
                child: Text('Đơn giá',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 12))),
            const Expanded(
                flex: 2,
                child: Text('Thành tiền',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 12))),
          ],
        ),
        const Divider(height: 8),
        ...invoice.items.map(
          (item) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.productName,
                            style: const TextStyle(fontSize: 12)),
                        if (item.variantInfo.isNotEmpty)
                          Text(item.variantInfo,
                              style: TextStyle(
                                  fontSize: 10, color: Colors.grey[500])),
                      ],
                    )),
                Expanded(
                    child: Text('${item.quantity}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 12))),
                Expanded(
                    flex: 2,
                    child: Text(_fmt(item.unitPrice),
                        textAlign: TextAlign.end,
                        style: const TextStyle(fontSize: 12))),
                Expanded(
                    flex: 2,
                    child: Text(_fmt(item.subtotal),
                        textAlign: TextAlign.end,
                        style: const TextStyle(fontSize: 12))),
              ],
            ),
          ),
        ),
        const Divider(height: 20),
        _invoiceTotalLine('Tạm tính', _fmt(invoice.subtotal)),
        _invoiceTotalLine('Giảm giá', '-${_fmt(invoice.discount)}'),
        _invoiceTotalLine('Thuế', _fmt(invoice.tax)),
        const Divider(height: 12),
        _invoiceTotalLine('Tổng cộng', _fmt(invoice.total), bold: true),
        const SizedBox(height: 8),
        _invoiceInfoLine(
            'Thanh toán', _paymentMethodLabel(invoice.paymentMethod)),
        if (invoice.note != null && invoice.note!.isNotEmpty)
          _invoiceInfoLine('Ghi chú', invoice.note!),
      ],
    );
  }

  Widget _invoiceInfoLine(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 90,
            child: Text(label,
                style: TextStyle(fontSize: 12, color: Colors.grey[600])),
          ),
          Expanded(
            child: Text(value,
                style: const TextStyle(
                    fontSize: 13, fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }

  Widget _invoiceTotalLine(String label, String value, {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                fontSize: bold ? 14 : 13,
                fontWeight: bold ? FontWeight.w700 : FontWeight.w400,
                color: Colors.grey[700],
              )),
          Text(value,
              style: TextStyle(
                fontSize: bold ? 16 : 13,
                fontWeight: bold ? FontWeight.w700 : FontWeight.w500,
                color: bold ? _accent : Colors.black87,
              )),
        ],
      ),
    );
  }
}
