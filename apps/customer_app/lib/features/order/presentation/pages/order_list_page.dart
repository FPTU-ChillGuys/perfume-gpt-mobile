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

String? _fmtUnitPrice(double unitPrice, double total) {
  if (unitPrice == total || unitPrice <= 0) return null;
  return _fmt(unitPrice);
}

const _accent = AppColors.primary;

// ─── Status tabs ────────────────────────────────────────────────────────────

class _StatusTab {
  final String label;
  final String? value;
  const _StatusTab(this.label, this.value);
}

const _statusTabs = [
  _StatusTab('Tất cả', null),
  _StatusTab('Chờ xử lý', 'Pending'),
  _StatusTab('Đang chuẩn bị', 'Preparing'),
  _StatusTab('Chờ lấy hàng', 'ReadyToPick'),
  _StatusTab('Đang giao', 'Delivering'),
  _StatusTab('Đã giao', 'Delivered'),
  _StatusTab('Đã hủy', 'Cancelled'),
  _StatusTab('Đang trả hàng', 'Returning'),
  _StatusTab('Hoàn trả một phần', 'Partial_Returned'),
  _StatusTab('Trả hàng/Hoàn tiền', 'Returned'),
];

// ─── Payment methods ────────────────────────────────────────────────────────

const _paymentMethodLabels = {
  'CashOnDelivery': 'Thanh toán khi nhận hàng',
  'CashInStore': 'Thanh toán tiền mặt tại quầy',
  'VnPay': 'Thanh toán qua VNPay',
  'Momo': 'Thanh toán qua MoMo',
  'ExternalBankTransfer': 'Chuyển khoản ngân hàng',
  'PayOs': 'Thanh toán qua PayOS',
};

const _retryPaymentMethods = [
  'CashOnDelivery',
  'CashInStore',
  'VnPay',
  'Momo',
  'PayOs',
];

const _returnRequestBlockedStatuses = {
  'Pending',
  'ApprovedForReturn',
  'RequestMoreInfo',
  'Inspecting',
  'ReadyForRefund',
  'Refunded',
};

const _cancelRequestBlockedStatuses = {'Pending'};

// ─── Label / Color helpers ──────────────────────────────────────────────────

String _orderTypeLabel(String type) {
  switch (type) {
    case 'Online':
      return 'Online';
    case 'Offline':
      return 'Tại cửa hàng';
    default:
      return type;
  }
}

Color _orderTypeColor(String type) {
  switch (type) {
    case 'Online':
      return AppColors.primary;
    case 'Offline':
      return Colors.teal;
    default:
      return Colors.grey;
  }
}

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

Color _orderStatusColor(String status) {
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
    case 'PartialPaid':
      return 'Đã cọc một phần';
    case 'Paid':
      return 'Đã thanh toán';
    case 'PartialRefunded':
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
    case 'PartialPaid':
      return Colors.blue;
    case 'Paid':
      return AppColors.paymentPaid;
    case 'PartialRefunded':
    case 'Partial_Refunded':
      return AppColors.paymentPartialRefund;
    case 'Refunded':
      return AppColors.paymentRefunded;
    default:
      return Colors.grey;
  }
}

/// Cancel behavior: direct cancel vs request-based
({String mode, String buttonLabel, String note, bool needRefund, bool loseDepositWarning})? _getCancelBehavior(
    OrderSummary order) {
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
// ORDER LIST PAGE
// ═══════════════════════════════════════════════════════════════════════════

class OrderListPage extends ConsumerStatefulWidget {
  const OrderListPage({super.key});

  @override
  ConsumerState<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends ConsumerState<OrderListPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _searchController = TextEditingController();
  String? _currentStatus;
  String? _searchTerm;
  int _currentPage = 1;
  int _pageSize = 5;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _statusTabs.length, vsync: this);
    _tabController.addListener(_onTabChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged);
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onTabChanged() {
    if (_tabController.indexIsChanging) return;
    setState(() {
      _currentStatus = _statusTabs[_tabController.index].value;
      _currentPage = 1;
    });
  }

  void _onSearch() {
    setState(() {
      _searchTerm = _searchController.text.trim().isEmpty
          ? null
          : _searchController.text.trim();
      _currentPage = 1;
    });
  }

  void _invalidateOrders() {
    ref.invalidate(
      myOrdersProvider(
        status: _currentStatus,
        searchTerm: _searchTerm,
        page: _currentPage,
        pageSize: _pageSize,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ordersAsync = ref.watch(
      myOrdersProvider(
        status: _currentStatus,
        searchTerm: _searchTerm,
        page: _currentPage,
        pageSize: _pageSize,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/');
            }
          },
        ),
        title: const Text('Đơn hàng của tôi'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          indicatorColor: _accent,
          labelColor: _accent,
          unselectedLabelColor: Colors.grey[600],
          tabs: _statusTabs.map((t) => Tab(text: t.label)).toList(),
        ),
      ),
      body: Column(
        children: [
          // ── Search bar ──
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Tìm theo mã đơn hàng, tên sản phẩm...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          _onSearch();
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                isDense: true,
              ),
              textInputAction: TextInputAction.search,
              onSubmitted: (_) => _onSearch(),
              onChanged: (_) => setState(() {}),
            ),
          ),
          const SizedBox(height: 8),

          // ── Content ──
          Expanded(
            child: ordersAsync.when(
              loading: () => const Center(
                child: CircularProgressIndicator(color: _accent),
              ),
              error: (error, _) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline,
                        size: 48, color: Colors.red),
                    const SizedBox(height: 12),
                    const Text('Không thể tải đơn hàng'),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: _invalidateOrders,
                      child: const Text('Thử lại'),
                    ),
                  ],
                ),
              ),
              data: (result) {
                final myReturns =
                    ref.watch(myReturnRequestsProvider(pageSize: 100)).value;
                final latestReturnStatusByOrderId = <String, String>{};
                if (myReturns != null) {
                  for (final request in myReturns.items) {
                    if (!latestReturnStatusByOrderId.containsKey(request.orderId)) {
                      latestReturnStatusByOrderId[request.orderId] = request.status;
                    }
                  }
                }

                final myCancels =
                    ref.watch(myCancelRequestsProvider(pageSize: 100)).value;
                final latestCancelStatusByOrderId = <String, String>{};
                if (myCancels != null) {
                  for (final request in myCancels.items) {
                    if (!latestCancelStatusByOrderId.containsKey(request.orderId)) {
                      latestCancelStatusByOrderId[request.orderId] = request.status;
                    }
                  }
                }

                final myReviews = ref.watch(myReviewsProvider).asData?.value ?? [];
                final reviewedDetailIds = myReviews
                    .where((r) => r.orderDetailId != null)
                    .map((r) => r.orderDetailId!)
                    .toSet();

                if (result.items.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.receipt_long_outlined,
                            size: 80, color: Colors.grey[400]),
                        const SizedBox(height: 16),
                        Text(
                          'Chưa có đơn hàng nào',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Khi đặt hàng, bạn có thể theo dõi trạng thái tại đây.',
                          style:
                              TextStyle(fontSize: 13, color: Colors.grey[500]),
                        ),
                      ],
                    ),
                  );
                }

                return Column(
                  children: [
                    Expanded(
                      child: RefreshIndicator(
                        color: _accent,
                        onRefresh: () async => _invalidateOrders(),
                        child: ListView.separated(
                          padding: const EdgeInsets.all(12),
                          itemCount: result.items.length,
                          separatorBuilder: (_, _) =>
                              const SizedBox(height: 12),
                          itemBuilder: (context, index) {
                            final order = result.items[index];
                            final returnStatus =
                                latestReturnStatusByOrderId[order.id];
                            final hasBlockingReturnReq = returnStatus != null &&
                                _returnRequestBlockedStatuses.contains(returnStatus);
                            final isReturnRejected = returnStatus == 'Rejected';
                            final hasReturnReq = hasBlockingReturnReq ||
                                order.paymentStatus == 'Partial_Refunded' ||
                                order.paymentStatus == 'Refunded' ||
                                order.status == 'Returning' ||
                                order.status == 'Returned' ||
                                order.status == 'Partial_Returned';
                            final cancelStatus =
                                latestCancelStatusByOrderId[order.id];
                            final hasCancelReq = cancelStatus != null &&
                                _cancelRequestBlockedStatuses.contains(cancelStatus);
                            final isCancelRejected = cancelStatus == 'Rejected';
                            final allReviewed = order.status == 'Delivered' &&
                                order.orderDetails.isNotEmpty &&
                                order.orderDetails.every((item) => reviewedDetailIds.contains(item.id));
                            return _OrderCard(
                              order: order,
                              hasReturnRequest: hasReturnReq,
                              hasCancelRequest: hasCancelReq,
                              isCancelRejected: isCancelRejected,
                              isReturnRejected: isReturnRejected,
                              allReviewed: allReviewed,
                              onViewDetail: () =>
                                  context.push('/orders/${order.id}'),
                              onCancel: () async {
                                final behavior = _getCancelBehavior(order);
                                if (behavior == null) return;
                                final normalizedStatus =
                                    (order.status ?? '').trim().toLowerCase();
                                final result = await context.push('/orders/${order.id}/cancel', extra: {
                                  'orderId': order.id,
                                  'orderStatus': order.status,
                                  'showBankInfoForStatus': normalizedStatus == 'pending',
                                  'mode': behavior.mode,
                                  'note': behavior.note,
                                  'needRefund': behavior.needRefund,
                                  'loseDepositWarning': behavior.loseDepositWarning,
                                });
                                if (result == true) {
                                  _invalidateOrders();
                                  ref.invalidate(myCancelRequestsProvider(pageSize: 100));
                                }
                              },
                              onRetryPayment: () =>
                                  _showRetryPaymentDialog(context, order),
                              onReturn: () =>
                                  context.push('/orders/${order.id}'),
                            );
                          },
                        ),
                      ),
                    ),
                    if (result.totalPages > 1)
                      _PaginationBar(
                        currentPage: _currentPage,
                        totalPages: result.totalPages,
                        totalCount: result.totalCount,
                        pageSize: _pageSize,
                        onPageChanged: (p) =>
                            setState(() => _currentPage = p),
                        onPageSizeChanged: (s) => setState(() {
                          _pageSize = s;
                          _currentPage = 1;
                        }),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // ── Retry Payment Dialog ──────────────────────────────────────────────────

  void _showRetryPaymentDialog(BuildContext context, OrderSummary order) {
    final isOffline = order.type == 'Offline';
    final allowedMethods = _retryPaymentMethods
        .where(
            (m) => isOffline ? m != 'CashOnDelivery' : m != 'CashInStore')
        .toList();
    String selectedMethod =
        allowedMethods.isNotEmpty ? allowedMethods.first : 'VnPay';
    String selectedDepositGateway = 'VnPay';
    bool isSubmitting = false;
    bool isLoadingPaymentId = true;
    String? paymentId;

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) {
          // Fetch order detail to get paymentId on first build
          if (isLoadingPaymentId && paymentId == null) {
            ref.read(orderRepositoryProvider).getOrderDetail(order.id).then((detail) {
              // Use the latest non-cancelled Payment transaction (after retry COD→VNPay, COD is cancelled)
              final paymentTxns = detail.paymentTransactions
                  .where((t) => t.transactionType == 'Payment')
                  .toList();
              final paymentTxn = paymentTxns
                  .where((t) => t.status != 'Cancelled')
                  .lastOrNull
                  ?? paymentTxns.lastOrNull
                  ?? detail.paymentTransactions.lastOrNull;
              final pid = paymentTxn?.id;
              if (ctx.mounted) {
                setDialogState(() {
                  paymentId = pid;
                  isLoadingPaymentId = false;
                });
              }
            }).catchError((e) {
              if (ctx.mounted) {
                setDialogState(() => isLoadingPaymentId = false);
              }
            });
            isLoadingPaymentId = false; // prevent re-triggering
          }

          return AlertDialog(
          title: const Text('Thanh toán lại đơn hàng'),
          content: SingleChildScrollView(
            child: RadioGroup<String>(
              groupValue: selectedMethod,
              onChanged: (v) {
                    if (!isSubmitting && v != null) setDialogState(() => selectedMethod = v);
                  },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chọn phương thức thanh toán để tiếp tục.',
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),
                  const SizedBox(height: 16),
                  ...allowedMethods.map(
                    (method) => Container(
                      margin: const EdgeInsets.only(bottom: 6),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedMethod == method
                              ? _accent
                              : Colors.grey[300]!,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: RadioListTile<String>(
                        title: Text(
                          _paymentMethodLabels[method] ?? method,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        value: method,
                        dense: true,
                        activeColor: _accent,
                      ),
                    ),
                  ),
                  if (selectedMethod == 'CashOnDelivery' ||
                      selectedMethod == 'CashInStore') ...[
                    const SizedBox(height: 6),
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
                  ],
                ],
              ),
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
              onPressed: isSubmitting || paymentId == null
                  ? null
                  : () async {
                      setDialogState(() => isSubmitting = true);
                      try {
                        final url = await ref
                            .read(orderRepositoryProvider)
                            .retryPayment(
                              paymentId!,
                              selectedMethod,
                              newDepositMethod:
                                  (selectedMethod == 'CashOnDelivery' ||
                                          selectedMethod == 'CashInStore')
                                      ? selectedDepositGateway
                                      : 'CashOnDelivery',
                              posSessionId: null,
                            );
                        if (selectedMethod == 'VnPay' ||
                            selectedMethod == 'Momo' ||
                            selectedMethod == 'PayOs') {
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
                        _invalidateOrders();
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
                  isSubmitting ? 'Đang xử lý...' : paymentId == null ? 'Đang tải...' : 'Thanh toán ngay'),
            ),
          ],
        );
        },
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// ORDER CARD
// ═══════════════════════════════════════════════════════════════════════════

class _OrderCard extends StatelessWidget {
  final OrderSummary order;
  final VoidCallback onViewDetail;
  final VoidCallback onCancel;
  final VoidCallback onRetryPayment;
  final VoidCallback onReturn;
  final bool hasReturnRequest;
  final bool hasCancelRequest;
  final bool isCancelRejected;
  final bool isReturnRejected;
  final bool allReviewed;

  const _OrderCard({
    required this.order,
    required this.onViewDetail,
    required this.onCancel,
    required this.onRetryPayment,
    required this.onReturn,
    this.hasReturnRequest = false,
    this.hasCancelRequest = false,
    this.isCancelRejected = false,
    this.isReturnRejected = false,
    this.allReviewed = false,
  });

  @override
  Widget build(BuildContext context) {
    final cancelBehavior = _getCancelBehavior(order);
    final isPendingUnpaid =
        order.status == 'Pending' && order.paymentStatus == 'Unpaid';
    final isDelivered = order.status == 'Delivered';
    final canReturn = isDelivered && order.isReturnable == true && !hasReturnRequest;
    final requiredDeposit = order.requiredDepositAmount > 0
        ? order.requiredDepositAmount
        : order.depositAmount;
    final inferredPaidDeposit = requiredDeposit > 0
        ? (order.paidAmount > 0 ? order.paidAmount : order.depositAmount)
        : 0.0;
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
        side: BorderSide(color: Colors.grey[300]!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Header: code · date ──
            Row(
              children: [
                Flexible(
                  child: Text(
                    '#${order.code.isNotEmpty ? order.code : order.id}',
                    style: const TextStyle(
                      fontSize: 13,
                      fontFamily: 'monospace',
                      color: Colors.black54,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 4),
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
                  child: Icon(Icons.copy, size: 14, color: Colors.grey[500]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child:
                      Text('·', style: TextStyle(color: Colors.grey[500])),
                ),
                Text(
                  _fmtDate(order.createdAt),
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // ── Chips row ──
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                if (order.type != null)
                  _OutlinedChip(
                    label: _orderTypeLabel(order.type!),
                    color: _orderTypeColor(order.type!),
                  ),
                if (order.status != null)
                  _FilledChip(
                    label: _orderStatusLabel(order.status!),
                    color: _orderStatusColor(order.status!),
                  ),
                if (order.paymentStatus != null)
                  _FilledChip(
                    label: _paymentStatusLabel(order.paymentStatus!),
                    color: _paymentStatusColor(order.paymentStatus!),
                  ),
              ],
            ),

            const Divider(height: 20),

            // ── Item count ──
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                '${order.itemCount ?? order.orderDetails.length} sản phẩm',
                style: TextStyle(color: Colors.grey[600], fontSize: 13),
              ),
            ),

            // ── Product items ──
            ...order.orderDetails.map((detail) {
              final unitPriceLabel =
                  _fmtUnitPrice(detail.unitPrice, detail.total);
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child:
                          detail.imageUrl != null && detail.imageUrl!.isNotEmpty
                              ? Image.network(
                                  detail.imageUrl!,
                                  width: 56,
                                  height: 56,
                                  fit: BoxFit.cover,
                                  errorBuilder: (_, _, _) =>
                                      const _ImagePlaceholder(),
                                )
                              : const _ImagePlaceholder(),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            detail.variantName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'x${detail.quantity}',
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        if (unitPriceLabel != null)
                          Text(
                            unitPriceLabel,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey[400],
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        Text(
                          _fmt(detail.total),
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: _accent,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),

            // ── Total ──
            Row(
              children: [
                Text(
                  'Thành tiền:',
                  style: TextStyle(fontSize: 13, color: Colors.grey[600]),
                ),
                const SizedBox(width: 8),
                Text(
                  _fmt(order.totalAmount),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: _accent,
                  ),
                ),
              ],
            ),
            if (requiredDeposit > 0 || paidDeposit > 0 || remainingAmount > 0) ...[
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: Column(
                  children: [
                    _miniPaymentRow(
                      'Cần cọc',
                      _fmt(requiredDeposit),
                    ),
                    _miniPaymentRow(
                      'Đã cọc',
                      _fmt(paidDeposit),
                      valueColor: Colors.green.shade700,
                    ),
                    _miniPaymentRow(
                      'Còn cần thu',
                      _fmt(remainingAmount < 0 ? 0 : remainingAmount),
                      isBold: true,
                      valueColor: Colors.deepOrange,
                    ),
                  ],
                ),
              ),
            ],

            const Divider(height: 20),

            // ── Action buttons ──
            Wrap(
              spacing: 8,
              runSpacing: 8,
              alignment: WrapAlignment.end,
              children: [
                if (isPendingUnpaid)
                  _ActionBtn(
                    label: 'Thanh toán lại',
                    color: Colors.orange,
                    filled: true,
                    onTap: onRetryPayment,
                  ),
                if (hasCancelRequest)
                  _ActionBtn(
                    label: 'Đã yêu cầu hủy đơn',
                    color: Colors.grey,
                    onTap: () {},
                    enabled: false,
                  )
                else if (cancelBehavior != null)
                  _ActionBtn(
                    label: isCancelRejected ? 'Yêu cầu hủy lại' : cancelBehavior.buttonLabel,
                    color: cancelBehavior.mode == 'direct'
                        ? Colors.red
                        : Colors.orange,
                    onTap: onCancel,
                  ),
                _ActionBtn(
                  label: 'Xem chi tiết',
                  color: _accent,
                  onTap: onViewDetail,
                ),
                if (isDelivered)
                  _ActionBtn(
                    label: hasReturnRequest
                        ? 'Đã yêu cầu trả hàng'
                        : (isReturnRejected ? 'Yêu cầu trả hàng lại' : 'Yêu cầu trả hàng'),
                    color: canReturn ? Colors.orange : Colors.grey,
                    onTap: onReturn,
                    enabled: canReturn,
                  ),
                if (isDelivered)
                  _ActionBtn(
                    label: allReviewed ? 'Đã đánh giá' : 'Đánh giá',
                    color: allReviewed ? Colors.grey : _accent,
                    filled: true,
                    onTap: onViewDetail,
                    enabled: !allReviewed,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _miniPaymentRow(
    String label,
    String value, {
    Color? valueColor,
    bool isBold = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
              fontWeight: isBold ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 12.5,
              fontWeight: isBold ? FontWeight.w700 : FontWeight.w600,
              color: valueColor ?? Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// SMALL WIDGETS
// ═══════════════════════════════════════════════════════════════════════════

class _ImagePlaceholder extends StatelessWidget {
  const _ImagePlaceholder();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Icon(Icons.image_not_supported_outlined,
          color: Colors.grey[400], size: 22),
    );
  }
}

class _OutlinedChip extends StatelessWidget {
  final String label;
  final Color color;
  const _OutlinedChip({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withAlpha(100)),
      ),
      child: Text(label,
          style: TextStyle(
              color: color, fontSize: 11, fontWeight: FontWeight.w600)),
    );
  }
}

class _FilledChip extends StatelessWidget {
  final String label;
  final Color color;
  const _FilledChip({required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: color.withAlpha(25),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withAlpha(60)),
      ),
      child: Text(label,
          style: TextStyle(
              color: color, fontSize: 11, fontWeight: FontWeight.w600)),
    );
  }
}

class _ActionBtn extends StatelessWidget {
  final String label;
  final Color color;
  final bool filled;
  final VoidCallback onTap;
  final bool enabled;

  const _ActionBtn({
    required this.label,
    required this.color,
    this.filled = false,
    required this.onTap,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    if (filled) {
      return SizedBox(
        height: 32,
        child: FilledButton(
          onPressed: enabled ? onTap : null,
          style: FilledButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            textStyle: const TextStyle(fontSize: 12),
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(label),
        ),
      );
    }
    return SizedBox(
      height: 32,
      child: OutlinedButton(
        onPressed: enabled ? onTap : null,
        style: OutlinedButton.styleFrom(
          foregroundColor: color,
          side: BorderSide(color: color),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          textStyle: const TextStyle(fontSize: 12),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(label),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// PAGINATION BAR
// ═══════════════════════════════════════════════════════════════════════════

class _PaginationBar extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final int totalCount;
  final int pageSize;
  final ValueChanged<int> onPageChanged;
  final ValueChanged<int> onPageSizeChanged;

  const _PaginationBar({
    required this.currentPage,
    required this.totalPages,
    required this.totalCount,
    required this.pageSize,
    required this.onPageChanged,
    required this.onPageSizeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border(top: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Row(
        children: [
          Text('Hiển thị ',
              style: TextStyle(fontSize: 12, color: Colors.grey[600])),
          DropdownButton<int>(
            value: pageSize,
            isDense: true,
            underline: const SizedBox(),
            items: [5, 10, 20, 50]
                .map((s) =>
                    DropdownMenuItem(value: s, child: Text('$s')))
                .toList(),
            onChanged: (v) {
              if (v != null) onPageSizeChanged(v);
            },
            style: const TextStyle(fontSize: 13, color: Colors.black87),
          ),
          Text(' / $totalCount đơn hàng',
              style: TextStyle(fontSize: 12, color: Colors.grey[600])),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.first_page, size: 20),
            onPressed:
                currentPage > 1 ? () => onPageChanged(1) : null,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
          ),
          IconButton(
            icon: const Icon(Icons.chevron_left, size: 20),
            onPressed: currentPage > 1
                ? () => onPageChanged(currentPage - 1)
                : null,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: _accent,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              '$currentPage',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right, size: 20),
            onPressed: currentPage < totalPages
                ? () => onPageChanged(currentPage + 1)
                : null,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
          ),
          IconButton(
            icon: const Icon(Icons.last_page, size: 20),
            onPressed: currentPage < totalPages
                ? () => onPageChanged(totalPages)
                : null,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
          ),
        ],
      ),
    );
  }
}
