import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/image_url_helper.dart';
import '../../../../domain/entities/order.dart';
import '../../../../domain/repositories/return_request_repository.dart';
import '../providers/address_provider.dart';
import '../providers/bank_provider.dart';
import '../providers/return_request_providers.dart';

final _currencyFmt = NumberFormat.currency(
  locale: 'vi_VN',
  symbol: '₫',
  decimalDigits: 0,
);

const _reasons = <(String value, String label, IconData icon)>[
  ('DamagedProduct', 'Sản phẩm bị hư hỏng', Icons.broken_image_outlined),
  ('WrongItemReceived', 'Nhận sai sản phẩm', Icons.swap_horiz_rounded),
  ('ItemNotAsDescribed', 'Không đúng mô tả', Icons.description_outlined),
  ('ChangedMind', 'Đổi ý', Icons.psychology_outlined),
  ('AllergicReaction', 'Dị ứng sản phẩm', Icons.healing_outlined),
];

class CreateReturnRequestPage extends ConsumerStatefulWidget {
  final String orderId;
  final List<OrderDetailItem> orderItems;

  const CreateReturnRequestPage({
    super.key,
    required this.orderId,
    required this.orderItems,
  });

  @override
  ConsumerState<CreateReturnRequestPage> createState() => _State();
}

class _State extends ConsumerState<CreateReturnRequestPage> {
  String? _selectedReason;
  final _noteController = TextEditingController();
  final Map<String, int> _selectedItems = {};
  final List<PendingUploadMedia> _images = [];
  final List<PendingUploadMedia> _videos = [];
  bool _isSubmitting = false;
  bool _isRefundOnly = false;

  // Bank info
  VnBank? _selectedBank;
  final _bankAccountController = TextEditingController();
  final _bankHolderController = TextEditingController();

  // Address mode
  bool _useCustomAddress = false;
  AddressResponse? _selectedAddress;
  ProvinceResponse? _selectedProvince;
  DistrictResponse? _selectedDistrict;
  WardResponse? _selectedWard;
  final _contactNameController = TextEditingController();
  final _contactPhoneController = TextEditingController();
  final _fullAddressController = TextEditingController();

  bool get _canSubmit {
    if (_selectedReason == null ||
        !_selectedItems.values.any((q) => q > 0) ||
        _videos.isEmpty ||
        _isSubmitting) {
      return false;
    }
    // Validate address when not refund-only
    if (!_isRefundOnly) {
      if (_useCustomAddress) {
        if (_contactNameController.text.trim().isEmpty ||
            _contactPhoneController.text.trim().isEmpty ||
            _selectedProvince == null ||
            _selectedDistrict == null ||
            _selectedWard == null ||
            _fullAddressController.text.trim().isEmpty) {
          return false;
        }
      } else {
        if (_selectedAddress == null) return false;
      }
    }
    // Bank info is required for return request creation (will be Pending after submit)
    if (_selectedBank == null ||
        _bankAccountController.text.trim().isEmpty ||
        _bankHolderController.text.trim().isEmpty) {
      return false;
    }
    return true;
  }

  double get _estimatedRefund {
    double total = 0;
    for (final entry in _selectedItems.entries) {
      if (entry.value <= 0) continue;
      final item = widget.orderItems.cast<OrderDetailItem?>().firstWhere(
        (i) => i?.id == entry.key,
        orElse: () => null,
      );
      if (item != null) total += item.unitPrice * entry.value;
    }
    return total;
  }

  @override
  void dispose() {
    _noteController.dispose();
    _bankAccountController.dispose();
    _bankHolderController.dispose();
    _contactNameController.dispose();
    _contactPhoneController.dispose();
    _fullAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: const Text(
          'Tạo yêu cầu hoàn trả',
          style: TextStyle(
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
            _reasonSection(),
            const SizedBox(height: 16),
            _itemsSection(),
            const SizedBox(height: 16),
            if (_estimatedRefund > 0) ...[
              _refundEstimate(),
              const SizedBox(height: 16),
            ],
            _resolutionSection(),
            const SizedBox(height: 16),
            _noteSection(),
            const SizedBox(height: 16),
            _evidenceSection(),
            const SizedBox(height: 16),
            _bankInfoSection(),
            const SizedBox(height: 16),
            if (!_isRefundOnly) ...[
              _addressSection(),
              const SizedBox(height: 16),
            ],
            _submitButton(),
          ],
        ),
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // 1. Reason
  // ─────────────────────────────────────────────────────────────────────────

  Widget _reasonSection() {
    return _SectionCard(
      title: 'Lý do hoàn trả',
      icon: Icons.help_outline_rounded,
      child: Column(
        children: _reasons.map((r) {
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
  // 2. Items
  // ─────────────────────────────────────────────────────────────────────────

  Widget _itemsSection() {
    return _SectionCard(
      title: 'Chọn sản phẩm hoàn trả',
      icon: Icons.inventory_2_outlined,
      child: Column(
        children: widget.orderItems.asMap().entries.map((entry) {
          final i = entry.key;
          final item = entry.value;
          final qty = _selectedItems[item.id] ?? 0;
          final isChecked = qty > 0;

          return Column(
            children: [
              if (i > 0) const Divider(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (v) => setState(() {
                      if (v == true) {
                        _selectedItems[item.id] = 1;
                      } else {
                        _selectedItems.remove(item.id);
                      }
                    }),
                    activeColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity.compact,
                  ),
                  const SizedBox(width: 4),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: item.imageUrl != null
                        ? Image.network(
                            ImageUrlHelper.resolve(item.imageUrl!),
                            width: 52,
                            height: 52,
                            fit: BoxFit.cover,
                            errorBuilder: (_, a, b) => _imgPlaceholder(52),
                          )
                        : _imgPlaceholder(52),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.variantName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _currencyFmt.format(item.unitPrice),
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                        if (isChecked) ...[
                          const SizedBox(height: 8),
                          _QuantitySelector(
                            value: qty,
                            max: item.quantity,
                            onChanged: (v) =>
                                setState(() => _selectedItems[item.id] = v),
                          ),
                        ],
                      ],
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

  Widget _imgPlaceholder(double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: AppColors.skeleton,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Icon(
        Icons.image_outlined,
        color: AppColors.textSecondary,
        size: 20,
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // 3. Refund estimate
  // ─────────────────────────────────────────────────────────────────────────

  Widget _refundEstimate() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primary.withValues(alpha: 0.08),
            AppColors.primary.withValues(alpha: 0.03),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.primaryBorder),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.account_balance_wallet_rounded,
              color: AppColors.primary,
              size: 22,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ước tính hoàn tiền',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  _currencyFmt.format(_estimatedRefund),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // 4. Resolution
  // ─────────────────────────────────────────────────────────────────────────

  Widget _resolutionSection() {
    return _SectionCard(
      title: 'Phương thức giải quyết',
      icon: Icons.settings_suggest_outlined,
      child: Column(
        children: [
          _radioTile(
            title: 'Trả hàng và hoàn tiền',
            subtitle: 'Gửi trả sản phẩm và nhận hoàn tiền',
            icon: Icons.swap_horiz_rounded,
            value: false,
            groupValue: _isRefundOnly,
            onChanged: (v) => setState(() => _isRefundOnly = v),
          ),
          const SizedBox(height: 8),
          _radioTile(
            title: 'Chỉ hoàn tiền',
            subtitle: 'Nhận hoàn tiền mà không cần trả hàng',
            icon: Icons.money_rounded,
            value: true,
            groupValue: _isRefundOnly,
            onChanged: (v) => setState(() => _isRefundOnly = v),
          ),
        ],
      ),
    );
  }

  Widget _radioTile<T>({
    required String title,
    required String subtitle,
    required IconData icon,
    required T value,
    required T groupValue,
    required ValueChanged<T> onChanged,
  }) {
    final selected = value == groupValue;
    return Material(
      color: selected ? AppColors.primaryLight : Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () => onChanged(value),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
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
                  icon,
                  size: 18,
                  color: selected ? AppColors.primary : AppColors.textSecondary,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: selected
                            ? FontWeight.w600
                            : FontWeight.w500,
                        fontSize: 13.5,
                        color: selected
                            ? AppColors.primary
                            : AppColors.textPrimary,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 11.5,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                selected ? Icons.radio_button_checked : Icons.radio_button_off,
                size: 20,
                color: selected ? AppColors.primary : AppColors.textSecondary,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // 5. Note
  // ─────────────────────────────────────────────────────────────────────────

  Widget _noteSection() {
    return _SectionCard(
      title: 'Ghi chú',
      icon: Icons.note_alt_outlined,
      child: TextField(
        controller: _noteController,
        decoration: _inputDecoration('Nhập ghi chú bổ sung (tuỳ chọn)…'),
        maxLines: 3,
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // 6. Evidence
  // ─────────────────────────────────────────────────────────────────────────

  Widget _evidenceSection() {
    return _SectionCard(
      title: 'Bằng chứng',
      icon: Icons.camera_alt_outlined,
      accentColor: Colors.amber.shade700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber.shade50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.amber.shade200),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 16,
                  color: Colors.amber.shade800,
                ),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Video bắt buộc. Vui lòng quay video sản phẩm.',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: _pickBtn(Icons.photo_rounded, 'Ảnh', _pickImages),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _pickBtn(
                  Icons.videocam_rounded,
                  'Video',
                  _pickVideos,
                  highlight: _videos.isEmpty,
                ),
              ),
            ],
          ),
          if (_images.isNotEmpty || _videos.isNotEmpty) ...[
            const SizedBox(height: 14),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ..._images.asMap().entries.map(
                  (e) => _thumb(
                    e.value.bytes,
                    isVideo: false,
                    onRemove: () => setState(() => _images.removeAt(e.key)),
                  ),
                ),
                ..._videos.asMap().entries.map(
                  (e) => _thumb(
                    e.value.bytes,
                    isVideo: true,
                    onRemove: () => setState(() => _videos.removeAt(e.key)),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _pickBtn(
    IconData icon,
    String label,
    VoidCallback onPressed, {
    bool highlight = false,
  }) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: Text(label, style: const TextStyle(fontSize: 13)),
      style: OutlinedButton.styleFrom(
        foregroundColor: highlight ? Colors.amber.shade800 : AppColors.primary,
        side: BorderSide(
          color: highlight ? Colors.amber.shade400 : AppColors.primaryBorder,
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget _thumb(
    Uint8List? bytes, {
    required bool isVideo,
    required VoidCallback onRemove,
  }) {
    return Stack(
      children: [
        Container(
          width: 68,
          height: 68,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.border),
          ),
          clipBehavior: Clip.antiAlias,
          child: isVideo
              ? Container(
                  color: Colors.grey.shade100,
                  child: const Center(
                    child: Icon(
                      Icons.videocam_rounded,
                      size: 24,
                      color: AppColors.textSecondary,
                    ),
                  ),
                )
              : (bytes != null
                    ? Image.memory(bytes, fit: BoxFit.cover)
                    : Container(
                        color: Colors.grey.shade100,
                        child: const Center(
                          child: Icon(
                            Icons.image_rounded,
                            size: 24,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      )),
        ),
        Positioned(
          top: -2,
          right: -2,
          child: GestureDetector(
            onTap: onRemove,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.close, size: 11, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _pickImages() async {
    final files = await ImagePicker().pickMultiImage(imageQuality: 80);
    final picked = <PendingUploadMedia>[];
    for (final f in files) {
      final bytes = await f.readAsBytes();
      picked.add((filename: f.name, bytes: bytes, filePath: f.path));
    }
    if (picked.isNotEmpty && mounted) {
      setState(() => _images.addAll(picked));
    }
  }

  Future<void> _pickVideos() async {
    final file = await ImagePicker().pickVideo(source: ImageSource.gallery);
    if (file != null) {
      setState(
        () => _videos.add((
          filename: file.name,
          bytes: null,
          filePath: file.path,
        )),
      );
    }
  }

  // ─────────────────────────────────────────────────────────────────────────
  // 7. Bank info
  // ─────────────────────────────────────────────────────────────────────────

  Widget _bankInfoSection() {
    final banksAsync = ref.watch(vnBanksProvider);
    return _SectionCard(
      title: 'Thông tin nhận tiền hoàn trả (bắt buộc)',
      icon: Icons.account_balance_outlined,
      child: Column(
        children: [
          // Bank picker
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
  // 8. Address
  // ─────────────────────────────────────────────────────────────────────────

  Widget _addressSection() {
    return _SectionCard(
      title: 'Địa chỉ lấy hàng',
      icon: Icons.location_on_outlined,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: _radioTile<bool>(
                  title: 'Địa chỉ đã lưu',
                  subtitle: 'Chọn từ danh sách có sẵn',
                  icon: Icons.bookmark_outline,
                  value: false,
                  groupValue: _useCustomAddress,
                  onChanged: (v) => setState(() => _useCustomAddress = v),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: _radioTile<bool>(
                  title: 'Địa chỉ mới',
                  subtitle: 'Nhập địa chỉ lấy hàng mới',
                  icon: Icons.add_location_alt_outlined,
                  value: true,
                  groupValue: _useCustomAddress,
                  onChanged: (v) => setState(() => _useCustomAddress = v),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          if (!_useCustomAddress)
            _savedAddressPicker()
          else
            _customAddressForm(),
        ],
      ),
    );
  }

  Widget _savedAddressPicker() {
    final addressAsync = ref.watch(savedAddressesProvider);
    return addressAsync.when(
      loading: () => const Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: CircularProgressIndicator(
            color: AppColors.primary,
            strokeWidth: 2,
          ),
        ),
      ),
      error: (_, s) => const Text(
        'Không thể tải địa chỉ',
        style: TextStyle(color: Colors.red, fontSize: 13),
      ),
      data: (addresses) {
        if (addresses.isEmpty) {
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.skeleton,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'Chưa có địa chỉ nào',
                style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
              ),
            ),
          );
        }
        return Column(
          children: addresses.map((addr) {
            final selected = _selectedAddress?.id == addr.id;
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Material(
                color: selected ? AppColors.primaryLight : Colors.white,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () => setState(() => _selectedAddress = addr),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: selected ? AppColors.primary : AppColors.border,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          selected
                              ? Icons.radio_button_checked
                              : Icons.radio_button_off,
                          size: 20,
                          color: selected
                              ? AppColors.primary
                              : AppColors.textSecondary,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                addr.recipientName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                              ...[
                                const SizedBox(height: 2),
                                Text(
                                  '${addr.street}, ${addr.ward}, ${addr.district}, ${addr.city}',
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: AppColors.textSecondary,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }

  Widget _customAddressForm() {
    final provincesAsync = ref.watch(provincesProvider);

    return Column(
      children: [
        TextField(
          controller: _contactNameController,
          decoration: _inputDecoration('Tên liên hệ'),
          onChanged: (_) => setState(() {}),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _contactPhoneController,
          decoration: _inputDecoration('Số điện thoại'),
          keyboardType: TextInputType.phone,
          onChanged: (_) => setState(() {}),
        ),
        const SizedBox(height: 12),
        // Province
        provincesAsync.when(
          loading: () => _dropdownPlaceholder('Đang tải tỉnh/thành…'),
          error: (_, s) => _dropdownPlaceholder('Lỗi tải tỉnh/thành'),
          data: (provinces) => _searchableSelectField<ProvinceResponse>(
            hint: 'Tỉnh/Thành phố',
            value: _selectedProvince,
            items: provinces,
            labelOf: (p) => p.provinceName,
            onChanged: (p) => setState(() {
              _selectedProvince = p;
              _selectedDistrict = null;
              _selectedWard = null;
            }),
          ),
        ),
        const SizedBox(height: 12),
        // District
        if (_selectedProvince != null)
          ref
              .watch(districtsProvider(_selectedProvince!.provinceID ?? 0))
              .when(
                loading: () => _dropdownPlaceholder('Đang tải quận/huyện…'),
                error: (_, s) => _dropdownPlaceholder('Lỗi tải quận/huyện'),
                data: (districts) => _searchableSelectField<DistrictResponse>(
                  hint: 'Quận/Huyện',
                  value: _selectedDistrict,
                  items: districts,
                  labelOf: (d) => d.districtName,
                  onChanged: (d) => setState(() {
                    _selectedDistrict = d;
                    _selectedWard = null;
                  }),
                ),
              ),
        if (_selectedProvince != null) const SizedBox(height: 12),
        // Ward
        if (_selectedDistrict != null)
          ref
              .watch(wardsProvider(_selectedDistrict!.districtID ?? 0))
              .when(
                loading: () => _dropdownPlaceholder('Đang tải phường/xã…'),
                error: (_, s) => _dropdownPlaceholder('Lỗi tải phường/xã'),
                data: (wards) => _searchableSelectField<WardResponse>(
                  hint: 'Phường/Xã',
                  value: _selectedWard,
                  items: wards,
                  labelOf: (w) => w.wardName,
                  onChanged: (w) => setState(() => _selectedWard = w),
                ),
              ),
        if (_selectedDistrict != null) const SizedBox(height: 12),
        TextField(
          controller: _fullAddressController,
          decoration: _inputDecoration('Địa chỉ chi tiết'),
          onChanged: (_) => setState(() {}),
        ),
      ],
    );
  }

  Widget _searchableSelectField<T>({
    required String hint,
    required T? value,
    required List<T> items,
    required String Function(T) labelOf,
    required ValueChanged<T?> onChanged,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () async {
        final picked = await _showSearchableSelector<T>(
          title: hint,
          items: items,
          labelOf: labelOf,
        );
        if (picked != null) {
          onChanged(picked);
        }
      },
      child: InputDecorator(
        decoration: _inputDecoration(hint),
        child: Row(
          children: [
            Expanded(
              child: Text(
                value == null ? hint : labelOf(value),
                style: TextStyle(
                  fontSize: 13,
                  color: value == null
                      ? AppColors.textSecondary
                      : AppColors.textPrimary,
                ),
              ),
            ),
            const Icon(
              Icons.expand_more_rounded,
              color: AppColors.textSecondary,
            ),
          ],
        ),
      ),
    );
  }

  Future<T?> _showSearchableSelector<T>({
    required String title,
    required List<T> items,
    required String Function(T) labelOf,
  }) async {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) {
        var query = '';
        return StatefulBuilder(
          builder: (context, setSheetState) {
            final filtered = items.where((item) {
              final label = labelOf(item).toLowerCase();
              return label.contains(query.toLowerCase());
            }).toList();

            return SafeArea(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 14, 16, 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(Icons.close_rounded),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        autofocus: true,
                        decoration: const InputDecoration(
                          hintText: 'Tìm kiếm…',
                          prefixIcon: Icon(Icons.search_rounded),
                          border: OutlineInputBorder(),
                          isDense: true,
                        ),
                        onChanged: (value) =>
                            setSheetState(() => query = value),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: filtered.isEmpty
                          ? const Center(
                              child: Text(
                                'Không có kết quả',
                                style: TextStyle(
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            )
                          : ListView.separated(
                              itemCount: filtered.length,
                              separatorBuilder: (context, index) =>
                                  const Divider(height: 1),
                              itemBuilder: (_, index) {
                                final item = filtered[index];
                                return ListTile(
                                  dense: true,
                                  title: Text(
                                    labelOf(item),
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                  onTap: () => Navigator.of(context).pop(item),
                                );
                              },
                            ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _dropdownPlaceholder(String text) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.border),
      ),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Submit
  // ─────────────────────────────────────────────────────────────────────────

  Widget _submitButton() {
    return SizedBox(
      width: double.infinity,
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
            : const Icon(Icons.send_rounded, size: 18),
        label: Text(
          _isSubmitting ? 'Đang gửi…' : 'Gửi yêu cầu hoàn trả',
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.primary,
          disabledBackgroundColor: AppColors.primary.withValues(alpha: 0.4),
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }

  Future<void> _submit() async {
    setState(() => _isSubmitting = true);
    try {
      final repo = ref.read(returnRequestRepositoryProvider);

      List<String> tempMediaIds = [];
      if (_images.isNotEmpty || _videos.isNotEmpty) {
        tempMediaIds = await repo.uploadTemporaryMedia(
          images: _images.isNotEmpty ? _images : null,
          videos: _videos.isNotEmpty ? _videos : null,
        );
      }

      final returnItems = _selectedItems.entries
          .where((e) => e.value > 0)
          .map((e) => (orderDetailId: e.key, quantity: e.value))
          .toList();

      ({
        String contactName,
        String contactPhoneNumber,
        String fullAddress,
        int? provinceId,
        String provinceName,
        int? districtId,
        String districtName,
        String wardCode,
        String wardName,
      })?
      recipient;

      if (!_isRefundOnly && _useCustomAddress) {
        recipient = (
          contactName: _contactNameController.text,
          contactPhoneNumber: _contactPhoneController.text,
          fullAddress: _fullAddressController.text,
          provinceId: _selectedProvince?.provinceID,
          provinceName: _selectedProvince?.provinceName ?? '',
          districtId: _selectedDistrict?.districtID,
          districtName: _selectedDistrict?.districtName ?? '',
          wardCode: _selectedWard?.wardCode ?? '',
          wardName: _selectedWard?.wardName ?? '',
        );
      }

      await repo.create(
        orderId: widget.orderId,
        reason: _selectedReason!,
        returnItems: returnItems,
        customerNote: _noteController.text.isNotEmpty
            ? _noteController.text
            : null,
        temporaryMediaIds: tempMediaIds.isNotEmpty ? tempMediaIds : null,
        isRefundOnly: _isRefundOnly,
        refundBankName: _selectedBank?.shortName,
        refundAccountNumber: _bankAccountController.text.isNotEmpty
            ? _bankAccountController.text
            : null,
        refundAccountName: _bankHolderController.text.isNotEmpty
            ? _bankHolderController.text
            : null,
        savedAddressId: !_isRefundOnly && !_useCustomAddress
            ? _selectedAddress?.id
            : null,
        recipient: recipient,
      );

      if (mounted) {
        ref.invalidate(myReturnRequestsProvider);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Đã tạo yêu cầu hoàn trả'),
            backgroundColor: Colors.green,
          ),
        );
        context.pop(true);
      }
    } on DioException catch (e) {
      if (mounted) {
        final body = e.response?.data;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Lỗi ${e.response?.statusCode}: $body'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 10),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Lỗi: $e'), backgroundColor: Colors.red),
        );
      }
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Shared input decoration
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
  final Color? accentColor;

  const _SectionCard({
    required this.title,
    required this.icon,
    required this.child,
    this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    final color = accentColor ?? AppColors.primary;
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

class _QuantitySelector extends StatelessWidget {
  final int value;
  final int max;
  final ValueChanged<int> onChanged;

  const _QuantitySelector({
    required this.value,
    required this.max,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _qtyBtn(Icons.remove, value > 1 ? () => onChanged(value - 1) : null),
          Container(
            constraints: const BoxConstraints(minWidth: 36),
            alignment: Alignment.center,
            child: Text(
              '$value',
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
          ),
          _qtyBtn(Icons.add, value < max ? () => onChanged(value + 1) : null),
        ],
      ),
    );
  }

  Widget _qtyBtn(IconData icon, VoidCallback? onPressed) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(6),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Icon(
            icon,
            size: 16,
            color: onPressed != null
                ? AppColors.primary
                : AppColors.textSecondary.withValues(alpha: 0.3),
          ),
        ),
      ),
    );
  }
}
