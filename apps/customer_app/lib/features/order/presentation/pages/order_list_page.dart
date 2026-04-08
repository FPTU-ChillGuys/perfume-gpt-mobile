import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/order.dart';
import '../providers/order_provider.dart';

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

// ─── Cancel reason options ──────────────────────────────────────────────────

const _cancelReasonOptions = [
  {'value': 'ChangedMind', 'label': 'Đổi ý'},
  {'value': 'FoundBetterPrice', 'label': 'Tìm được giá tốt hơn'},
  {'value': 'WrongShippingInformation', 'label': 'Sai thông tin giao hàng'},
  {'value': 'PaymentIssue', 'label': 'Vấn đề thanh toán'},
  {'value': 'DeliveryTooLate', 'label': 'Giao hàng quá chậm'},
  {'value': 'InsufficientStock', 'label': 'Hết hàng'},
];

String? _mapCancelReasonToEnum(String label) {
  final match = _cancelReasonOptions.where((o) => o['label'] == label);
  return match.isNotEmpty ? match.first['value'] : null;
}

// ─── Payment methods ────────────────────────────────────────────────────────

const _paymentMethodLabels = {
  'CashOnDelivery': 'Thanh toán khi nhận hàng',
  'CashInStore': 'Thanh toán tiền mặt tại quầy',
  'VnPay': 'Thanh toán qua VNPay',
  'Momo': 'Thanh toán qua MoMo',
};

const _retryPaymentMethods = [
  'CashOnDelivery',
  'CashInStore',
  'VnPay',
  'Momo',
];

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

/// Cancel behavior: direct cancel vs request-based
({String mode, String buttonLabel, String note})? _getCancelBehavior(
    OrderSummary order) {
  final isPending = order.status == 'Pending';
  final isPreparing = order.status == 'Preparing';
  final isReadyToPick = order.status == 'ReadyToPick';
  final isPaid = order.paymentStatus == 'Paid';

  // Pending + chưa thanh toán → hủy trực tiếp, không cần gửi request
  if (isPending && !isPaid) {
    return (
      mode: 'direct',
      buttonLabel: 'Hủy đơn hàng',
      note:
          'Đơn hàng đang ở trạng thái chờ xử lý và chưa thanh toán, hệ thống sẽ hủy ngay sau khi bạn xác nhận.',
    );
  }
  // Đã thanh toán (bất kỳ trạng thái nào cho phép hủy) → gửi yêu cầu hủy + hoàn tiền
  if (isPaid && (isPending || isPreparing || isReadyToPick)) {
    return (
      mode: 'request',
      buttonLabel: 'Yêu cầu hủy đơn',
      note:
          'Đơn hàng đã thanh toán, yêu cầu hủy sẽ được Staff/Admin xem xét. Vui lòng cung cấp thông tin ngân hàng để hoàn tiền.',
    );
  }
  // Đang chuẩn bị trở đi + chưa thanh toán → gửi yêu cầu hủy, không hoàn tiền
  if (!isPaid && (isPreparing || isReadyToPick)) {
    return (
      mode: 'request',
      buttonLabel: 'Yêu cầu hủy đơn',
      note:
          'Đơn hàng đã vào xử lý, yêu cầu hủy sẽ được Staff/Admin xem xét. Do chưa thanh toán nên không cần hoàn tiền.',
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
                            return _OrderCard(
                              order: order,
                              onViewDetail: () =>
                                  context.push('/orders/${order.id}'),
                              onCancel: () =>
                                  _showCancelDialog(context, order),
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

  // ── Cancel Dialog ─────────────────────────────────────────────────────────

  void _showCancelDialog(BuildContext context, OrderSummary order) {
    final behavior = _getCancelBehavior(order);
    if (behavior == null) return;

    String cancelReason = '';
    bool isSubmitting = false;
    final needRefund = order.paymentStatus == 'Paid';
    String refundBankName = '';
    String refundAccountNumber = '';
    String refundAccountName = '';

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) => AlertDialog(
          title: Text(
            behavior.mode == 'direct'
                ? 'Xác nhận hủy đơn hàng'
                : 'Gửi yêu cầu hủy đơn',
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  behavior.note,
                  style: TextStyle(color: Colors.grey[600], fontSize: 13),
                ),
                const SizedBox(height: 16),
                TextField(
                  onChanged: (v) =>
                      setDialogState(() => cancelReason = v),
                  decoration: const InputDecoration(
                    labelText: 'Lý do hủy *',
                    hintText: 'Nhập lý do hủy đơn hàng',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: _cancelReasonOptions.map((option) {
                    final label = option['label']!;
                    final isSelected = cancelReason.trim() == label;
                    return ChoiceChip(
                      label: Text(label),
                      selected: isSelected,
                      selectedColor: Colors.orange[100],
                      onSelected: (_) =>
                          setDialogState(() => cancelReason = label),
                    );
                  }).toList(),
                ),
                if (needRefund) ...[
                  const SizedBox(height: 16),
                  const Divider(),
                  const SizedBox(height: 8),
                  Text('Thông tin hoàn tiền',
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.grey[700])),
                  const SizedBox(height: 12),
                  TextField(
                    onChanged: (v) => setDialogState(() => refundBankName = v),
                    decoration: const InputDecoration(
                      labelText: 'Tên ngân hàng',
                      hintText: 'VD: Vietcombank',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    onChanged: (v) => setDialogState(() => refundAccountNumber = v),
                    decoration: const InputDecoration(
                      labelText: 'Số tài khoản',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    onChanged: (v) => setDialogState(() => refundAccountName = v),
                    decoration: const InputDecoration(
                      labelText: 'Tên chủ tài khoản',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
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
              style: FilledButton.styleFrom(
                backgroundColor: behavior.mode == 'direct'
                    ? Colors.red
                    : Colors.orange,
              ),
              onPressed: cancelReason.trim().isEmpty || isSubmitting
                  ? null
                  : () async {
                      final reasonEnum =
                          _mapCancelReasonToEnum(cancelReason.trim());
                      if (reasonEnum == null) {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text('Lý do hủy không hợp lệ')),
                          );
                        }
                        return;
                      }
                      setDialogState(() => isSubmitting = true);
                      try {
                        await ref
                            .read(orderRepositoryProvider)
                            .cancelOrder(
                              order.id,
                              reasonEnum,
                              refundBankName: needRefund && refundBankName.trim().isNotEmpty ? refundBankName.trim() : null,
                              refundAccountNumber: needRefund && refundAccountNumber.trim().isNotEmpty ? refundAccountNumber.trim() : null,
                              refundAccountName: needRefund && refundAccountName.trim().isNotEmpty ? refundAccountName.trim() : null,
                            );
                        if (ctx.mounted) Navigator.pop(ctx);
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                behavior.mode == 'direct'
                                    ? 'Đã hủy đơn hàng thành công'
                                    : 'Đã gửi yêu cầu hủy đơn thành công',
                              ),
                              backgroundColor: Colors.green,
                            ),
                          );
                        }
                        _invalidateOrders();
                      } catch (e) {
                        setDialogState(() => isSubmitting = false);
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text('Không thể hủy đơn hàng: $e'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      }
                    },
              child: Text(
                isSubmitting
                    ? 'Đang gửi...'
                    : behavior.mode == 'direct'
                        ? 'Xác nhận hủy'
                        : 'Gửi yêu cầu',
              ),
            ),
          ],
        ),
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
              // Use first Payment-type transaction (matching React: paymentTransactions[0].id)
              final paymentTxn = detail.paymentTransactions
                  .where((t) => t.transactionType == 'Payment')
                  .firstOrNull
                  ?? (detail.paymentTransactions.isNotEmpty
                      ? detail.paymentTransactions.first
                      : null);
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
                            .retryPayment(paymentId!, selectedMethod);
                        if (selectedMethod == 'VnPay' ||
                            selectedMethod == 'Momo') {
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

  const _OrderCard({
    required this.order,
    required this.onViewDetail,
    required this.onCancel,
    required this.onRetryPayment,
    required this.onReturn,
  });

  @override
  Widget build(BuildContext context) {
    final cancelBehavior = _getCancelBehavior(order);
    final isPendingUnpaid =
        order.status == 'Pending' && order.paymentStatus == 'Unpaid';
    final isDelivered = order.status == 'Delivered';
    final canReturn = isDelivered && order.isReturnable == true;

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
                if (cancelBehavior != null)
                  _ActionBtn(
                    label: cancelBehavior.buttonLabel,
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
                if (canReturn)
                  _ActionBtn(
                    label: 'Yêu cầu trả hàng',
                    color: Colors.orange,
                    onTap: onReturn,
                  ),
                if (isDelivered)
                  _ActionBtn(
                    label: 'Đánh giá',
                    color: _accent,
                    filled: true,
                    onTap: onViewDetail,
                  ),
              ],
            ),
          ],
        ),
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

  const _ActionBtn({
    required this.label,
    required this.color,
    this.filled = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (filled) {
      return SizedBox(
        height: 32,
        child: FilledButton(
          onPressed: onTap,
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
        onPressed: onTap,
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
