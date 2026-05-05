import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/cancel_request.dart';
import '../../../../domain/entities/order.dart';
import '../../../../core/utils/image_url_helper.dart';
import '../providers/cancel_request_providers.dart';
import '../../../profile/presentation/widgets/resolved_user_avatar.dart';

final _currencyFmt = NumberFormat.currency(
  locale: 'vi_VN',
  symbol: '₫',
  decimalDigits: 0,
);
final _dateFmt = DateFormat('dd/MM/yyyy HH:mm');

class CancelRequestDetailPage extends ConsumerWidget {
  final String requestId;
  const CancelRequestDetailPage({super.key, required this.requestId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(cancelRequestWithOrderProvider(requestId));

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: detailAsync.when(
        data: (data) => _buildBody(context, ref, data.$1, data.$2),
        loading: () => CustomScrollView(
          slivers: [
            _appBar(null),
            const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
            ),
          ],
        ),
        error: (e, _) => CustomScrollView(
          slivers: [
            _appBar(null),
            SliverFillRemaining(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.cloud_off_rounded,
                        size: 48,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Không thể tải chi tiết',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 12),
                      FilledButton.icon(
                        onPressed: () => ref.invalidate(
                          cancelRequestWithOrderProvider(requestId),
                        ),
                        icon: const Icon(Icons.refresh, size: 18),
                        label: const Text('Thử lại'),
                        style: FilledButton.styleFrom(
                          backgroundColor: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    WidgetRef ref,
    CancelRequest req,
    OrderDetail? order,
  ) {
    final si = _statusInfo(req.status);

    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: () async =>
          ref.invalidate(cancelRequestWithOrderProvider(requestId)),
      child: CustomScrollView(
        slivers: [
          _appBar(req),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _statusBanner(req, si),
                const SizedBox(height: 16),
                _infoCard(req),
                const SizedBox(height: 16),
                if (req.isRefundRequired) ...[
                  _refundCard(req),
                  const SizedBox(height: 16),
                ],
                if (order != null && order.orderDetails.isNotEmpty) ...[
                  _orderItemsCard(order),
                  const SizedBox(height: 16),
                ],
              ]),
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _appBar(CancelRequest? req) {
    return SliverAppBar(
      expandedHeight: 100,
      pinned: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: AppColors.primaryDark,
      actions: const [
        ProfileAvatarAppBarAction(forDarkAppBar: true),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          req?.orderCode ?? 'Chi tiết yêu cầu hủy',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        background: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.heroStart, AppColors.heroEnd],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
    );
  }

  // ─── Status banner ──────────────────────────────────────────────────────

  Widget _statusBanner(
    CancelRequest req,
    ({String label, Color color, IconData icon}) si,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            si.color.withValues(alpha: 0.08),
            si.color.withValues(alpha: 0.03),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: si.color.withValues(alpha: 0.25)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: si.color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(si.icon, color: si.color, size: 24),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  si.label,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: si.color,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'Mã đơn: ${req.orderCode}',
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ─── Info card ──────────────────────────────────────────────────────────

  Widget _infoCard(CancelRequest req) {
    return _Card(
      title: 'Thông tin yêu cầu',
      icon: Icons.info_outline_rounded,
      child: Column(
        children: [
          _Row(
            'Mã yêu cầu',
            req.id.length > 8 ? '${req.id.substring(0, 8)}…' : req.id,
          ),
          _Row('Trạng thái', _statusInfo(req.status).label),
          if (req.requestedByEmail != null)
            _Row('Người yêu cầu', req.requestedByEmail!),
          _Row('Ngày tạo', _dateFmt.format(req.createdAt)),
          if (req.updatedAt != null)
            _Row('Cập nhật', _dateFmt.format(req.updatedAt!)),
          const Divider(height: 20),
          _Row('Lý do', _reasonLabel(req.reason)),
          if (req.staffNote != null && req.staffNote!.isNotEmpty) ...[
            const SizedBox(height: 4),
            _NoteBlock(
              label: 'Ghi chú nhân viên',
              text: req.staffNote!,
              color: req.status == 'Rejected' ? Colors.red : Colors.orange,
            ),
          ],
        ],
      ),
    );
  }

  // ─── Refund card ────────────────────────────────────────────────────────

  Widget _refundCard(CancelRequest req) {
    return _Card(
      title: 'Thông tin hoàn tiền',
      icon: Icons.account_balance_wallet_outlined,
      child: Column(
        children: [
          if ((req.refundAmount ?? 0) > 0)
            _AmountRow('Số tiền hoàn', req.refundAmount!),
          _Row(
            'Trạng thái hoàn tiền',
            req.isRefunded ? 'Đã hoàn tiền' : 'Chưa hoàn tiền',
          ),
          if (req.refundBankName != null && req.refundBankName!.isNotEmpty)
            _Row('Ngân hàng', req.refundBankName!),
          if (req.refundAccountName != null &&
              req.refundAccountName!.isNotEmpty)
            _Row('Chủ tài khoản', req.refundAccountName!),
          if (req.refundAccountNumber != null &&
              req.refundAccountNumber!.isNotEmpty)
            _Row('Số tài khoản', req.refundAccountNumber!),
          if (req.vnpTransactionNo != null && req.vnpTransactionNo!.isNotEmpty)
            _Row('Mã giao dịch VNPay', req.vnpTransactionNo!),
        ],
      ),
    );
  }

  // ─── Order items card ───────────────────────────────────────────────────

  Widget _orderItemsCard(OrderDetail order) {
    return _Card(
      title: 'Sản phẩm đơn hàng (${order.orderDetails.length})',
      icon: Icons.inventory_2_outlined,
      child: Column(
        children: order.orderDetails.asMap().entries.map((entry) {
          final i = entry.key;
          final item = entry.value;
          return Column(
            children: [
              if (i > 0) const Divider(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: item.imageUrl != null && item.imageUrl!.isNotEmpty
                        ? Image.network(
                            ImageUrlHelper.resolve(item.imageUrl!),
                            width: 56,
                            height: 56,
                            fit: BoxFit.cover,
                            errorBuilder: (_, _, _) => _imgPlaceholder(),
                          )
                        : _imgPlaceholder(),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.variantName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'x${item.quantity}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    _currencyFmt.format(item.total),
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _imgPlaceholder() {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: AppColors.skeleton,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.image_outlined,
        color: AppColors.textSecondary,
        size: 22,
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// Shared widgets
// ═════════════════════════════════════════════════════════════════════════════

class _Card extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;
  const _Card({required this.title, required this.icon, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: AppColors.primaryLight,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, size: 16, color: AppColors.primary),
                ),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
            child: child,
          ),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final String label, value;
  const _Row(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AmountRow extends StatelessWidget {
  final String label;
  final double amount;
  const _AmountRow(this.label, this.amount);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(
            width: 130,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Expanded(
            child: Text(
              _currencyFmt.format(amount),
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NoteBlock extends StatelessWidget {
  final String label, text;
  final Color color;
  const _NoteBlock({
    required this.label,
    required this.text,
    this.color = AppColors.textSecondary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 11.5,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              height: 1.5,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Helpers ──────────────────────────────────────────────────────────────

({String label, Color color, IconData icon}) _statusInfo(String status) {
  switch (status) {
    case 'Pending':
      return (
        label: 'Chờ duyệt',
        color: AppColors.statusPending,
        icon: Icons.hourglass_empty_rounded,
      );
    case 'Approved':
      return (
        label: 'Đã duyệt',
        color: AppColors.statusDelivered,
        icon: Icons.check_circle_outline_rounded,
      );
    case 'Rejected':
      return (
        label: 'Từ chối',
        color: AppColors.statusCancelled,
        icon: Icons.cancel_outlined,
      );
    default:
      return (label: status, color: Colors.grey, icon: Icons.help_outline);
  }
}

String _reasonLabel(String? reason) {
  switch (reason) {
    case 'ChangedMind':
      return 'Đổi ý';
    case 'FoundBetterPrice':
      return 'Tìm được giá tốt hơn';
    case 'WrongShippingInformation':
      return 'Sai thông tin giao hàng';
    case 'PaymentIssue':
      return 'Vấn đề thanh toán';
    case 'DeliveryTooLate':
      return 'Giao hàng quá chậm';
    case 'InsufficientStock':
      return 'Hết hàng';
    default:
      return reason ?? '-';
  }
}
