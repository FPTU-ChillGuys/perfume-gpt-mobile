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
    case 'Processing':
      return 'Đang xử lý';
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
    case 'Processing':
      return AppColors.statusProcessing;
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
/// -1 = Cancelled, -2 = Returned (special banners shown instead)
int _statusToStep(String? status) {
  switch (status) {
    case 'Pending':
      return 0;
    case 'Processing':
      return 1;
    case 'Delivering':
      return 3;
    case 'Delivered':
      return 4;
    case 'Cancelled':
      return -1;
    case 'Returned':
    case 'Partial_Returned':
      return -2;
    default:
      return 0;
  }
}

const _stepLabels = [
  'Đơn Hàng Đã Đặt',
  'Đã Thanh Toán',
  'Đã Giao Cho ĐVVC',
  'Đang Giao Hàng',
  'Đánh Giá',
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

// ─── Retry payment methods ──────────────────────────────────────────────────

const _retryPaymentMethods = [
  'CashOnDelivery',
  'CashInStore',
  'VnPay',
  'Momo',
];

/// Cancel behavior — same logic as order list
({String mode, String buttonLabel, String note})? _getCancelBehavior(
    OrderDetail order) {
  final isPending = order.status == 'Pending';
  final isProcessing = order.status == 'Processing';
  final isPaid = order.paymentStatus == 'Paid';

  if (isPending && !isPaid) {
    return (
      mode: 'direct',
      buttonLabel: 'Hủy đơn hàng',
      note:
          'Đơn hàng đang ở trạng thái chờ xử lý và chưa thanh toán, hệ thống sẽ hủy ngay sau khi bạn xác nhận.',
    );
  }
  if ((isPending && isPaid) || isProcessing) {
    return (
      mode: 'request',
      buttonLabel: 'Yêu cầu hủy đơn',
      note:
          'Đơn hàng này cần duyệt yêu cầu hủy. Sau khi gửi, Staff/Admin sẽ xem xét và phản hồi.',
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
  @override
  Widget build(BuildContext context) {
    final detailAsync = ref.watch(orderDetailProvider(widget.orderId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết đơn hàng'),
        actions: [
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
    final canReturn = isDelivered && order.isReturnable == true;
    final cancelBehavior = _getCancelBehavior(order);
    // Use first Payment-type transaction (matching React: paymentTransactions[0].id)
    final latestPayment = order.paymentTransactions
        .where((t) => t.transactionType == 'Payment')
        .firstOrNull
        ?? (order.paymentTransactions.isNotEmpty
            ? order.paymentTransactions.first
            : null);

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
                  _buildBanner(
                    icon: Icons.assignment_return,
                    color: Colors.deepOrange,
                    title: order.status == 'Partial_Returned'
                        ? 'Đơn hàng hoàn trả một phần'
                        : 'Đơn hàng đã trả',
                    subtitle: 'Đơn hàng đã được trả lại hoặc hoàn tiền.',
                  )
                else
                  _buildStepper(step),

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
          canReturn: canReturn,
          isDelivered: isDelivered,
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

  // ── Stepper ───────────────────────────────────────────────────────────────

  Widget _buildStepper(int activeStep) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey[200]!),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Row(
          children: List.generate(_stepLabels.length, (i) {
            final isActive = i <= activeStep;
            final isCurrent = i == activeStep;
            return Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      if (i > 0)
                        Expanded(
                          child: Container(
                            height: 2,
                            color: i <= activeStep
                                ? Colors.green
                                : Colors.grey[300],
                          ),
                        ),
                      Container(
                        width: isCurrent ? 28 : 22,
                        height: isCurrent ? 28 : 22,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isActive ? Colors.green : Colors.grey[300],
                          border: isCurrent
                              ? Border.all(
                                  color: Colors.green.shade700, width: 2)
                              : null,
                        ),
                        child: Center(
                          child: isActive && i < activeStep
                              ? const Icon(Icons.check,
                                  size: 14, color: Colors.white)
                              : Text(
                                  '${i + 1}',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: isActive
                                        ? Colors.white
                                        : Colors.grey[600],
                                  ),
                                ),
                        ),
                      ),
                      if (i < _stepLabels.length - 1)
                        Expanded(
                          child: Container(
                            height: 2,
                            color: i < activeStep
                                ? Colors.green
                                : Colors.grey[300],
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(
                    _stepLabels[i],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight:
                          isCurrent ? FontWeight.w700 : FontWeight.w500,
                      color:
                          isActive ? Colors.green.shade800 : Colors.grey[500],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            );
          }),
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
    final subtotal =
        order.orderDetails.fold<double>(0, (s, i) => s + i.total);
    final shippingFee = order.shippingInfo?.shippingFee ?? 0;
    final voucherDiscount = subtotal + shippingFee - order.totalAmount;

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

  // ── Bottom action bar ─────────────────────────────────────────────────────

  Widget _buildBottomBar(
    BuildContext context, {
    required OrderDetail order,
    required bool isPendingUnpaid,
    required ({String mode, String buttonLabel, String note})? cancelBehavior,
    required bool canReturn,
    required bool isDelivered,
    required PaymentTransaction? latestPayment,
  }) {
    final hasActions =
        isPendingUnpaid || cancelBehavior != null || canReturn || isDelivered;
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
            if (cancelBehavior != null)
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
                onPressed: () => _showCancelDialog(context, order),
                child: Text(cancelBehavior.buttonLabel),
              ),
            if (canReturn)
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.orange,
                  side: const BorderSide(color: Colors.orange),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Chức năng trả hàng đang phát triển'),
                    ),
                  );
                },
                child: const Text('Yêu cầu trả hàng'),
              ),
            if (isDelivered)
              FilledButton.icon(
                icon: const Icon(Icons.star_outline, size: 16),
                label: const Text('Đánh giá'),
                style: FilledButton.styleFrom(backgroundColor: _accent),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Chức năng đánh giá đang phát triển'),
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }

  // ── Cancel Dialog ─────────────────────────────────────────────────────────

  void _showCancelDialog(BuildContext context, OrderDetail order) {
    final behavior = _getCancelBehavior(order);
    if (behavior == null) return;

    String cancelReason = '';
    bool isSubmitting = false;

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
                            .cancelOrder(order.id, reasonEnum);
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
                        ref.invalidate(
                            orderDetailProvider(widget.orderId));
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

  void _showRetryPaymentDialog(BuildContext context, OrderDetail order,
      PaymentTransaction? latestPayment) {
    final isOffline = order.type == 'Offline';
    final allowedMethods = _retryPaymentMethods
        .where(
            (m) => isOffline ? m != 'CashOnDelivery' : m != 'CashInStore')
        .toList();
    String selectedMethod =
        allowedMethods.isNotEmpty ? allowedMethods.first : 'VnPay';
    bool isSubmitting = false;

    final paymentId = latestPayment?.id;
    if (paymentId == null || paymentId.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Không tìm thấy giao dịch thanh toán'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) => AlertDialog(
          title: const Text('Thanh toán lại đơn hàng'),
          content: SingleChildScrollView(
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
                        _paymentMethodLabel(method),
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      value: method,
                      groupValue: selectedMethod,
                      onChanged: isSubmitting
                          ? null
                          : (v) =>
                              setDialogState(() => selectedMethod = v!),
                      dense: true,
                      activeColor: _accent,
                    ),
                  ),
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
                        final url = await ref
                            .read(orderRepositoryProvider)
                            .retryPayment(paymentId, selectedMethod);
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
        ),
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
