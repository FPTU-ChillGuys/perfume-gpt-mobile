import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';
import '../providers/bank_provider.dart';
import '../providers/order_provider.dart';

const _cancelReasons = <(String value, String label, IconData icon)>[
  ('ChangedMind', 'Đổi ý', Icons.psychology_outlined),
  ('FoundBetterPrice', 'Tìm được giá tốt hơn', Icons.price_change_outlined),
  (
    'IncorrectShippingInfo',
    'Sai thông tin giao hàng',
    Icons.local_shipping_outlined,
  ),
  ('PaymentIssue', 'Vấn đề thanh toán', Icons.payment_outlined),
  ('DeliveryTooLate', 'Giao hàng quá chậm', Icons.schedule_outlined),
  ('InsufficientStock', 'Hết hàng', Icons.inventory_2_outlined),
];

String? _mapCancelReasonToEnum(String value) {
  final match = _cancelReasons.where((r) => r.$1 == value);
  return match.isNotEmpty ? match.first.$1 : null;
}

class CancelOrderPage extends ConsumerStatefulWidget {
  final String orderId;
  final String? orderStatus;
  final bool? showBankInfoForStatus;
  final String mode; // 'direct' or 'request'
  final String note;
  final bool needRefund;
  final bool loseDepositWarning;

  const CancelOrderPage({
    super.key,
    required this.orderId,
    this.orderStatus,
    this.showBankInfoForStatus,
    required this.mode,
    required this.note,
    required this.needRefund,
    this.loseDepositWarning = false,
  });

  @override
  ConsumerState<CancelOrderPage> createState() => _CancelOrderPageState();
}

class _CancelOrderPageState extends ConsumerState<CancelOrderPage> {
  String? _selectedReason;
  bool _isSubmitting = false;

  // Bank info
  VnBank? _selectedBank;
  final _bankAccountController = TextEditingController();
  final _bankHolderController = TextEditingController();

  bool get _isPendingStatus {
    final s = widget.orderStatus?.trim().toLowerCase();
    if (s == null || s.isEmpty) return false;
    return s == 'pending';
  }

  // Show bank info only for Pending cancel-request flow.
  // If source screen provides explicit flag, trust it.
  bool get _showBankInfo {
    final byStatus = widget.showBankInfoForStatus ?? _isPendingStatus;
    // Fallback by business rule:
    // - Pending branches use loseDepositWarning = false -> show bank info
    // - Preparing/ReadyToPick use loseDepositWarning = true -> hide bank info
    final byFlowRule = !widget.loseDepositWarning;
    return byStatus || byFlowRule;
  }

  bool get _bankInfoValid {
    if (!widget.needRefund || !_showBankInfo) return true;
    return _selectedBank != null &&
        _bankAccountController.text.trim().isNotEmpty &&
        _bankHolderController.text.trim().isNotEmpty;
  }

  bool get _canSubmit =>
      _selectedReason != null && _bankInfoValid && !_isSubmitting;

  @override
  void dispose() {
    _bankAccountController.dispose();
    _bankHolderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: Text(
          widget.mode == 'direct' ? 'Hủy đơn hàng' : 'Yêu cầu hủy đơn',
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 17,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryDark,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.heroStart, AppColors.heroEnd],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
        child: Column(
          children: [
            _noteCard(),
            if (widget.loseDepositWarning) ...[
              const SizedBox(height: 10),
              _loseDepositWarningCard(),
            ],
            const SizedBox(height: 16),
            _reasonSection(),
            const SizedBox(height: 16),
            if (_showBankInfo) ...[
              _bankInfoSection(),
              const SizedBox(height: 16),
            ],
            _submitButton(),
          ],
        ),
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Note card
  // ─────────────────────────────────────────────────────────────────────────

  Widget _noteCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.orange.shade200),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.info_outline, color: Colors.orange.shade700, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              widget.note,
              style: TextStyle(
                fontSize: 13,
                color: Colors.orange.shade900,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _loseDepositWarningCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red.shade200),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.warning_amber_rounded,
            color: Colors.red.shade700,
            size: 20,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              'Lưu ý: Với đơn ở trạng thái đang chuẩn bị/chờ lấy hàng, bạn sẽ bị mất tiền cọc khi gửi yêu cầu hủy.',
              style: TextStyle(
                fontSize: 13,
                color: Colors.red.shade800,
                height: 1.4,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Reason
  // ─────────────────────────────────────────────────────────────────────────

  Widget _reasonSection() {
    return _SectionCard(
      title: 'Lý do hủy đơn',
      icon: Icons.help_outline_rounded,
      child: Column(
        children: _cancelReasons.map((r) {
          final selected = r.$1 == _selectedReason;
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Material(
              color: selected ? AppColors.primaryLight : Colors.white,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () => setState(() => _selectedReason = r.$1),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: selected ? AppColors.primary : AppColors.border,
                      width: selected ? 1.5 : 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: selected
                              ? AppColors.primary.withValues(alpha: 0.12)
                              : AppColors.skeleton,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          r.$3,
                          size: 18,
                          color: selected
                              ? AppColors.primary
                              : AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          r.$2,
                          style: TextStyle(
                            fontSize: 13.5,
                            fontWeight: selected
                                ? FontWeight.w600
                                : FontWeight.w400,
                            color: selected
                                ? AppColors.primary
                                : AppColors.textPrimary,
                          ),
                        ),
                      ),
                      if (selected)
                        const Icon(
                          Icons.check_circle,
                          size: 20,
                          color: AppColors.primary,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Bank info
  // ─────────────────────────────────────────────────────────────────────────

  Widget _bankInfoSection() {
    final banksAsync = ref.watch(vnBanksProvider);
    final isRequired = widget.needRefund;
    return _SectionCard(
      title: isRequired
          ? 'Thông tin hoàn tiền (bắt buộc)'
          : 'Thông tin hoàn tiền (không bắt buộc)',
      icon: Icons.account_balance_outlined,
      child: Column(
        children: [
          banksAsync.when(
            loading: () =>
                _dropdownPlaceholder('Đang tải danh sách ngân hàng…'),
            error: (e, s) =>
                _dropdownPlaceholder('Lỗi tải danh sách ngân hàng'),
            data: (banks) => InkWell(
              onTap: () => _showBankPicker(context, banks),
              borderRadius: BorderRadius.circular(10),
              child: InputDecorator(
                decoration: _inputDecoration('Chọn ngân hàng'),
                child: _selectedBank != null
                    ? Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              _selectedBank!.logo,
                              width: 28,
                              height: 28,
                              fit: BoxFit.contain,
                              errorBuilder: (c, e, s) => const Icon(
                                Icons.account_balance,
                                size: 28,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              '${_selectedBank!.shortName} - ${_selectedBank!.name}',
                              style: const TextStyle(fontSize: 13),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      )
                    : const Text(
                        'Chọn ngân hàng',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.textSecondary,
                        ),
                      ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _bankAccountController,
            decoration: _inputDecoration('Số tài khoản'),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _bankHolderController,
            decoration: _inputDecoration('Chủ tài khoản'),
            textCapitalization: TextCapitalization.characters,
            inputFormatters: [_UpperCaseTextFormatter()],
          ),
        ],
      ),
    );
  }

  Widget _dropdownPlaceholder(String text) {
    return InputDecorator(
      decoration: _inputDecoration('Ngân hàng'),
      child: Text(
        text,
        style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
      ),
    );
  }

  void _showBankPicker(BuildContext context, List<VnBank> banks) {
    String query = '';
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => StatefulBuilder(
        builder: (ctx, setSheetState) {
          final filtered = query.isEmpty
              ? banks
              : banks.where((b) {
                  final q = query.toLowerCase();
                  return b.shortName.toLowerCase().contains(q) ||
                      b.name.toLowerCase().contains(q) ||
                      b.code.toLowerCase().contains(q);
                }).toList();
          return DraggableScrollableSheet(
            initialChildSize: 0.7,
            maxChildSize: 0.9,
            minChildSize: 0.4,
            expand: false,
            builder: (_, scrollController) => Column(
              children: [
                const SizedBox(height: 12),
                Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Tìm ngân hàng…',
                      prefixIcon: const Icon(Icons.search, size: 20),
                      filled: true,
                      fillColor: AppColors.skeleton,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
                    ),
                    onChanged: (v) => setSheetState(() => query = v),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: filtered.length,
                    itemBuilder: (_, i) {
                      final bank = filtered[i];
                      final selected = _selectedBank?.code == bank.code;
                      return ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.network(
                            bank.logo,
                            width: 36,
                            height: 36,
                            fit: BoxFit.contain,
                            errorBuilder: (c, e, s) =>
                                const Icon(Icons.account_balance, size: 36),
                          ),
                        ),
                        title: Text(
                          bank.shortName,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: selected ? AppColors.primary : null,
                          ),
                        ),
                        subtitle: Text(
                          bank.name,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: selected
                            ? const Icon(
                                Icons.check_circle,
                                color: AppColors.primary,
                                size: 20,
                              )
                            : null,
                        onTap: () {
                          setState(() => _selectedBank = bank);
                          Navigator.pop(ctx);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Submit
  // ─────────────────────────────────────────────────────────────────────────

  Widget _submitButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: FilledButton.icon(
        onPressed: _canSubmit ? _submit : null,
        icon: _isSubmitting
            ? const SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : Icon(
                widget.mode == 'direct'
                    ? Icons.cancel_outlined
                    : Icons.send_outlined,
                size: 18,
              ),
        label: Text(
          _isSubmitting
              ? 'Đang gửi…'
              : widget.mode == 'direct'
              ? 'Xác nhận hủy đơn'
              : 'Gửi yêu cầu hủy đơn',
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
        ),
        style: FilledButton.styleFrom(
          backgroundColor: widget.mode == 'direct' ? Colors.red : Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }

  Future<void> _submit() async {
    if (_selectedReason == null) return;

    final reasonEnum = _mapCancelReasonToEnum(_selectedReason!);
    if (reasonEnum == null) {
      _showError('Lý do hủy không hợp lệ');
      return;
    }

    final confirmed = await _showConfirmDialog();
    if (!confirmed) return;

    setState(() => _isSubmitting = true);
    try {
      await ref
          .read(orderRepositoryProvider)
          .cancelOrder(
            widget.orderId,
            reasonEnum,
            refundBankName: _selectedBank?.shortName,
            refundAccountNumber: _bankAccountController.text.trim().isNotEmpty
                ? _bankAccountController.text.trim()
                : null,
            refundAccountName: _bankHolderController.text.trim().isNotEmpty
                ? _bankHolderController.text.trim()
                : null,
          );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              widget.mode == 'direct'
                  ? 'Đã hủy đơn hàng thành công'
                  : 'Đã gửi yêu cầu hủy đơn thành công',
            ),
            backgroundColor: Colors.green,
          ),
        );
        context.pop(true);
      }
    } catch (e) {
      setState(() => _isSubmitting = false);
      _showError('Không thể hủy đơn hàng: $e');
    }
  }

  Future<bool> _showConfirmDialog() async {
    final title = widget.mode == 'direct'
        ? 'Xác nhận hủy đơn'
        : 'Xác nhận gửi yêu cầu hủy';
    final content = widget.mode == 'direct'
        ? 'Bạn có chắc chắn muốn hủy đơn hàng này không?'
        : 'Bạn có chắc chắn muốn gửi yêu cầu hủy đơn hàng này không?';
    final warning = widget.loseDepositWarning
        ? '\n\nLưu ý: Bạn sẽ bị mất tiền cọc với đơn ở trạng thái đang chuẩn bị/chờ lấy hàng.'
        : '';
    final result = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(title),
        content: Text('$content$warning'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Đóng'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Xác nhận'),
          ),
        ],
      ),
    );
    return result == true;
  }

  void _showError(String msg) {
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(msg), backgroundColor: Colors.red));
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Shared
  // ─────────────────────────────────────────────────────────────────────────

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: AppColors.textSecondary.withValues(alpha: 0.6),
        fontSize: 13,
      ),
      filled: true,
      fillColor: AppColors.surface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════════
// Reusable widgets
// ═══════════════════════════════════════════════════════════════════════════════

class _UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return newValue.copyWith(text: newValue.text.toUpperCase());
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;

  const _SectionCard({
    required this.title,
    required this.icon,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final color = AppColors.primary;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, size: 16, color: color),
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: AppColors.border.withValues(alpha: 0.6)),
          Padding(padding: const EdgeInsets.all(16), child: child),
        ],
      ),
    );
  }
}
