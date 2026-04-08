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
import '../providers/address_provider.dart';
import '../providers/return_request_providers.dart';

final _currencyFmt = NumberFormat.currency(locale: 'vi_VN', symbol: '₫', decimalDigits: 0);

const _reasons = <(String value, String label)>[
  ('DamagedProduct', 'Sản phẩm bị hư hỏng'),
  ('WrongItemReceived', 'Nhận sai sản phẩm'),
  ('ItemNotAsDescribed', 'Không đúng mô tả'),
  ('ChangedMind', 'Đổi ý'),
  ('AllergicReaction', 'Dị ứng sản phẩm'),
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
  ConsumerState<CreateReturnRequestPage> createState() => _CreateReturnRequestPageState();
}

class _CreateReturnRequestPageState extends ConsumerState<CreateReturnRequestPage> {
  String? _selectedReason;
  final _noteController = TextEditingController();
  final Map<String, int> _selectedItems = {}; // orderDetailId -> quantity
  final List<({String filename, Uint8List bytes})> _images = [];
  final List<({String filename, Uint8List bytes})> _videos = [];
  bool _isSubmitting = false;

  // ── New fields ──
  bool _isRefundOnly = false;
  final _bankNameController = TextEditingController();
  final _bankAccountNumberController = TextEditingController();
  final _bankAccountNameController = TextEditingController();

  // Address mode: 'saved' or 'custom'
  String _addressMode = 'saved';
  AddressResponse? _selectedAddress;

  // Custom address
  final _contactNameController = TextEditingController();
  final _contactPhoneController = TextEditingController();
  final _fullAddressController = TextEditingController();
  ProvinceResponse? _selectedProvince;
  DistrictResponse? _selectedDistrict;
  WardResponse? _selectedWard;

  @override
  void initState() {
    super.initState();
    // Default select all items with full quantity
    for (final item in widget.orderItems) {
      _selectedItems[item.id] = item.quantity;
    }
  }

  @override
  void dispose() {
    _noteController.dispose();
    _bankNameController.dispose();
    _bankAccountNumberController.dispose();
    _bankAccountNameController.dispose();
    _contactNameController.dispose();
    _contactPhoneController.dispose();
    _fullAddressController.dispose();
    super.dispose();
  }

  bool get _canSubmit =>
      _selectedReason != null &&
      _selectedItems.isNotEmpty &&
      _selectedItems.values.any((q) => q > 0) &&
      _videos.isNotEmpty;

  double get _estimatedRefund {
    double total = 0;
    for (final entry in _selectedItems.entries) {
      if (entry.value <= 0) continue;
      final item = widget.orderItems.firstWhere((i) => i.id == entry.key, orElse: () => widget.orderItems.first);
      total += item.unitPrice * entry.value;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            pinned: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: AppColors.primaryDark,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Yêu cầu trả hàng',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
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
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                // ── Reason ──
                _buildReasonSection(),
                const SizedBox(height: 16),

                // ── Items ──
                _buildItemsSection(),
                const SizedBox(height: 16),

                // ── Estimated refund ──
                _buildEstimatedRefundSection(),
                const SizedBox(height: 16),

                // ── Resolution method ──
                _buildResolutionSection(),
                const SizedBox(height: 16),

                // ── Note ──
                _buildNoteSection(),
                const SizedBox(height: 16),

                // ── Evidence ──
                _buildEvidenceSection(),
                const SizedBox(height: 16),

                // ── Bank info ──
                _buildBankInfoSection(),
                const SizedBox(height: 16),

                // ── Pickup address (only when returning items) ──
                if (!_isRefundOnly) ...[
                  _buildPickupAddressSection(),
                  const SizedBox(height: 16),
                ],

                // ── Submit ──
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _canSubmit && !_isSubmitting ? _submit : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: _isSubmitting
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                          )
                        : const Text('Gửi yêu cầu trả hàng',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                  ),
                ),
                const SizedBox(height: 32),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  // ── Reason section ──

  Widget _buildReasonSection() {
    return _SectionCard(
      title: 'Lý do trả hàng',
      icon: Icons.help_outline,
      child: RadioGroup<String>(
        groupValue: _selectedReason ?? '',
        onChanged: (v) => setState(() => _selectedReason = v),
        child: Column(
          children: _reasons.map((r) {
            return RadioListTile<String>(
              value: r.$1,
              title: Text(r.$2, style: const TextStyle(fontSize: 14)),
              activeColor: AppColors.primary,
              contentPadding: EdgeInsets.zero,
              dense: true,
            );
          }).toList(),
        ),
      ),
    );
  }

  // ── Items section ──

  Widget _buildItemsSection() {
    return _SectionCard(
      title: 'Sản phẩm trả',
      icon: Icons.inventory_2_outlined,
      child: Column(
        children: widget.orderItems.asMap().entries.map((entry) {
          final i = entry.key;
          final item = entry.value;
          final selectedQty = _selectedItems[item.id] ?? 0;
          final isSelected = selectedQty > 0;

          return Column(
            children: [
              if (i > 0) const Divider(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Checkbox
                  Checkbox(
                    value: isSelected,
                    activeColor: AppColors.primary,
                    onChanged: (v) {
                      setState(() {
                        if (v == true) {
                          _selectedItems[item.id] = item.quantity;
                        } else {
                          _selectedItems.remove(item.id);
                        }
                      });
                    },
                  ),
                  // Image
                  if (item.imageUrl != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        ImageUrlHelper.resolve(item.imageUrl!),
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        errorBuilder: (_, _, _) => Container(
                          width: 50,
                          height: 50,
                          color: Colors.grey.shade200,
                          child: const Icon(Icons.image, color: AppColors.textSecondary),
                        ),
                      ),
                    ),
                  if (item.imageUrl != null) const SizedBox(width: 10),
                  // Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.variantName,
                            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis),
                        const SizedBox(height: 4),
                        Text(_currencyFmt.format(item.unitPrice),
                            style: const TextStyle(fontSize: 12, color: AppColors.primary)),
                      ],
                    ),
                  ),
                  // Quantity selector
                  if (isSelected)
                    _QuantitySelector(
                      value: selectedQty,
                      max: item.quantity,
                      onChanged: (q) {
                        setState(() {
                          if (q <= 0) {
                            _selectedItems.remove(item.id);
                          } else {
                            _selectedItems[item.id] = q;
                          }
                        });
                      },
                    ),
                ],
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  // ── Note section ──

  Widget _buildNoteSection() {
    return _SectionCard(
      title: 'Ghi chú',
      icon: Icons.notes,
      child: TextField(
        controller: _noteController,
        decoration: InputDecoration(
          hintText: 'Mô tả chi tiết lý do trả hàng...',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        ),
        maxLines: 3,
        maxLength: 500,
      ),
    );
  }

  // ── Evidence section ──

  Widget _buildEvidenceSection() {
    return _SectionCard(
      title: 'Bằng chứng (ảnh / video)',
      icon: Icons.photo_library_outlined,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_videos.isEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                '* Bắt buộc tải lên ít nhất 1 video',
                style: TextStyle(fontSize: 12, color: Colors.red[700], fontWeight: FontWeight.w500),
              ),
            ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: _pickImages,
                  icon: const Icon(Icons.photo, size: 18),
                  label: Text('Ảnh (${_images.length})', style: const TextStyle(fontSize: 13)),
                  style: OutlinedButton.styleFrom(foregroundColor: AppColors.primary),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: _pickVideos,
                  icon: const Icon(Icons.videocam, size: 18),
                  label: Text('Video (${_videos.length})', style: const TextStyle(fontSize: 13)),
                  style: OutlinedButton.styleFrom(foregroundColor: AppColors.primary),
                ),
              ),
            ],
          ),
          if (_images.isNotEmpty || _videos.isNotEmpty) ...[
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ..._images.asMap().entries.map((e) => _buildThumb(
                      e.value.bytes,
                      isVideo: false,
                      onRemove: () => setState(() => _images.removeAt(e.key)),
                    )),
                ..._videos.asMap().entries.map((e) => _buildThumb(
                      e.value.bytes,
                      isVideo: true,
                      onRemove: () => setState(() => _videos.removeAt(e.key)),
                    )),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildThumb(Uint8List bytes, {required bool isVideo, required VoidCallback onRemove}) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 70,
            height: 70,
            color: Colors.grey.shade200,
            child: isVideo
                ? const Center(child: Icon(Icons.videocam, size: 28, color: AppColors.textSecondary))
                : Image.memory(bytes, fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            onTap: onRemove,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              child: const Icon(Icons.close, size: 12, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  // ── Estimated refund ──

  Widget _buildEstimatedRefundSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary.withAlpha(15),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.primary.withAlpha(50)),
      ),
      child: Row(
        children: [
          const Icon(Icons.account_balance_wallet, color: AppColors.primary, size: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Số tiền hoàn trả dự kiến',
                    style: TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                const SizedBox(height: 2),
                Text(
                  _currencyFmt.format(_estimatedRefund),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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

  // ── Resolution method ──

  Widget _buildResolutionSection() {
    return _SectionCard(
      title: 'Phương án giải quyết',
      icon: Icons.swap_horiz,
      child: RadioGroup<bool>(
        groupValue: _isRefundOnly,
        onChanged: (v) => setState(() => _isRefundOnly = v ?? false),
        child: Column(
          children: [
            RadioListTile<bool>(
              value: false,
              title: const Text('Trả hàng & Hoàn tiền', style: TextStyle(fontSize: 14)),
              subtitle: const Text('Gửi trả sản phẩm và nhận hoàn tiền', style: TextStyle(fontSize: 12)),
              activeColor: AppColors.primary,
              contentPadding: EdgeInsets.zero,
              dense: true,
            ),
            RadioListTile<bool>(
              value: true,
              title: const Text('Hoàn tiền (Không trả hàng)', style: TextStyle(fontSize: 14)),
              subtitle: const Text('Chỉ hoàn tiền, không cần gửi trả hàng', style: TextStyle(fontSize: 12)),
              activeColor: AppColors.primary,
              contentPadding: EdgeInsets.zero,
              dense: true,
            ),
          ],
        ),
      ),
    );
  }

  // ── Bank info ──

  Widget _buildBankInfoSection() {
    return _SectionCard(
      title: 'Thông tin hoàn tiền',
      icon: Icons.account_balance,
      child: Column(
        children: [
          TextField(
            controller: _bankNameController,
            decoration: InputDecoration(
              labelText: 'Tên ngân hàng',
              hintText: 'VD: Vietcombank, MB Bank...',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _bankAccountNumberController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Số tài khoản',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _bankAccountNameController,
            textCapitalization: TextCapitalization.characters,
            decoration: InputDecoration(
              labelText: 'Tên chủ tài khoản',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            ),
          ),
        ],
      ),
    );
  }

  // ── Pickup address ──

  Widget _buildPickupAddressSection() {
    return _SectionCard(
      title: 'Địa chỉ lấy hàng',
      icon: Icons.location_on_outlined,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RadioGroup<String>(
            groupValue: _addressMode,
            onChanged: (v) => setState(() {
              _addressMode = v ?? 'saved';
              if (v == 'saved') {
                _selectedProvince = null;
                _selectedDistrict = null;
                _selectedWard = null;
              } else {
                _selectedAddress = null;
              }
            }),
            child: Column(
              children: [
                RadioListTile<String>(
                  value: 'saved',
                  title: const Text('Chọn từ sổ địa chỉ', style: TextStyle(fontSize: 14)),
                  activeColor: AppColors.primary,
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                ),
                RadioListTile<String>(
                  value: 'custom',
                  title: const Text('Nhập địa chỉ mới', style: TextStyle(fontSize: 14)),
                  activeColor: AppColors.primary,
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          if (_addressMode == 'saved')
            _buildSavedAddressPicker()
          else
            _buildCustomAddressForm(),
        ],
      ),
    );
  }

  Widget _buildSavedAddressPicker() {
    final addressesAsync = ref.watch(savedAddressesProvider);
    return addressesAsync.when(
      loading: () => const Center(child: CircularProgressIndicator(color: AppColors.primary)),
      error: (_, _) => const Text('Không thể tải danh sách địa chỉ', style: TextStyle(color: Colors.red, fontSize: 13)),
      data: (addresses) {
        if (addresses.isEmpty) {
          return const Text('Chưa có địa chỉ nào được lưu', style: TextStyle(fontSize: 13, color: AppColors.textSecondary));
        }
        return Column(
          children: addresses.map((addr) {
            final isSelected = _selectedAddress?.id == addr.id;
            final fullAddr = [addr.street, addr.ward, addr.district, addr.city]
                .where((s) => s.isNotEmpty)
                .join(', ');
            return InkWell(
              onTap: () => setState(() => _selectedAddress = addr),
              borderRadius: BorderRadius.circular(10),
              child: Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isSelected ? AppColors.primary : AppColors.border,
                    width: isSelected ? 2 : 1,
                  ),
                  color: isSelected ? AppColors.primary.withAlpha(10) : null,
                ),
                child: Row(
                  children: [
                    Icon(
                      isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                      size: 20,
                      color: isSelected ? AppColors.primary : Colors.grey,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${addr.recipientName} - ${addr.recipientPhoneNumber}',
                            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 2),
                          Text(fullAddr, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                          if (addr.isDefault == true)
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: AppColors.primary.withAlpha(20),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text('Mặc định',
                                    style: TextStyle(fontSize: 10, color: AppColors.primary, fontWeight: FontWeight.w600)),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildCustomAddressForm() {
    return Column(
      children: [
        TextField(
          controller: _contactNameController,
          decoration: InputDecoration(
            labelText: 'Tên người gửi',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _contactPhoneController,
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            labelText: 'Số điện thoại',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          ),
        ),
        const SizedBox(height: 12),
        // Province
        _buildProvinceDropdown(),
        const SizedBox(height: 12),
        // District
        _buildDistrictDropdown(),
        const SizedBox(height: 12),
        // Ward
        _buildWardDropdown(),
        const SizedBox(height: 12),
        TextField(
          controller: _fullAddressController,
          decoration: InputDecoration(
            labelText: 'Địa chỉ chi tiết (số nhà, đường...)',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          ),
          maxLines: 2,
        ),
      ],
    );
  }

  Widget _buildProvinceDropdown() {
    final provincesAsync = ref.watch(provincesProvider);
    return provincesAsync.when(
      loading: () => const LinearProgressIndicator(),
      error: (_, _) => const Text('Lỗi tải tỉnh/thành phố'),
      data: (provinces) {
        return DropdownButtonFormField<ProvinceResponse>(
          initialValue: _selectedProvince,
          decoration: InputDecoration(
            labelText: 'Tỉnh / Thành phố',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          ),
          isExpanded: true,
          items: provinces
              .map((p) => DropdownMenuItem(value: p, child: Text(p.provinceName, style: const TextStyle(fontSize: 14))))
              .toList(),
          onChanged: (v) {
            setState(() {
              _selectedProvince = v;
              _selectedDistrict = null;
              _selectedWard = null;
            });
          },
        );
      },
    );
  }

  Widget _buildDistrictDropdown() {
    if (_selectedProvince == null) {
      return DropdownButtonFormField<DistrictResponse>(
        initialValue: null,
        decoration: InputDecoration(
          labelText: 'Quận / Huyện',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        ),
        items: const [],
        onChanged: null,
      );
    }
    final districtsAsync = ref.watch(districtsProvider(_selectedProvince!.provinceID!));
    return districtsAsync.when(
      loading: () => const LinearProgressIndicator(),
      error: (_, _) => const Text('Lỗi tải quận/huyện'),
      data: (districts) {
        return DropdownButtonFormField<DistrictResponse>(
          initialValue: _selectedDistrict,
          decoration: InputDecoration(
            labelText: 'Quận / Huyện',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          ),
          isExpanded: true,
          items: districts
              .map((d) => DropdownMenuItem(value: d, child: Text(d.districtName, style: const TextStyle(fontSize: 14))))
              .toList(),
          onChanged: (v) {
            setState(() {
              _selectedDistrict = v;
              _selectedWard = null;
            });
          },
        );
      },
    );
  }

  Widget _buildWardDropdown() {
    if (_selectedDistrict == null) {
      return DropdownButtonFormField<WardResponse>(
        initialValue: null,
        decoration: InputDecoration(
          labelText: 'Phường / Xã',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        ),
        items: const [],
        onChanged: null,
      );
    }
    final wardsAsync = ref.watch(wardsProvider(_selectedDistrict!.districtID!));
    return wardsAsync.when(
      loading: () => const LinearProgressIndicator(),
      error: (_, _) => const Text('Lỗi tải phường/xã'),
      data: (wards) {
        return DropdownButtonFormField<WardResponse>(
          initialValue: _selectedWard,
          decoration: InputDecoration(
            labelText: 'Phường / Xã',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          ),
          isExpanded: true,
          items: wards
              .map((w) => DropdownMenuItem(value: w, child: Text(w.wardName, style: const TextStyle(fontSize: 14))))
              .toList(),
          onChanged: (v) => setState(() => _selectedWard = v),
        );
      },
    );
  }

  // ── Pickers ──

  Future<void> _pickImages() async {
    final picker = ImagePicker();
    final files = await picker.pickMultiImage(imageQuality: 80);
    for (final f in files) {
      final bytes = await f.readAsBytes();
      setState(() => _images.add((filename: f.name, bytes: bytes)));
    }
  }

  Future<void> _pickVideos() async {
    final picker = ImagePicker();
    final file = await picker.pickVideo(source: ImageSource.gallery);
    if (file != null) {
      final bytes = await file.readAsBytes();
      setState(() => _videos.add((filename: file.name, bytes: bytes)));
    }
  }

  // ── Submit ──

  Future<void> _submit() async {
    if (!_canSubmit) return;
    setState(() => _isSubmitting = true);

    try {
      final repo = ref.read(returnRequestRepositoryProvider);

      // Upload media first
      List<String> tempIds = [];
      if (_images.isNotEmpty || _videos.isNotEmpty) {
        tempIds = await repo.uploadTemporaryMedia(
          images: _images.isNotEmpty ? _images : null,
          videos: _videos.isNotEmpty ? _videos : null,
        );
      }

      // Create the return request
      final items = _selectedItems.entries
          .where((e) => e.value > 0)
          .map((e) => (orderDetailId: e.key, quantity: e.value))
          .toList();

      // Build recipient for custom address
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
      })? recipient;

      if (!_isRefundOnly && _addressMode == 'custom') {
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
        returnItems: items,
        customerNote: _noteController.text.isNotEmpty ? _noteController.text : null,
        temporaryMediaIds: tempIds.isNotEmpty ? tempIds : null,
        isRefundOnly: _isRefundOnly,
        refundBankName: _bankNameController.text.isNotEmpty ? _bankNameController.text : null,
        refundAccountNumber: _bankAccountNumberController.text.isNotEmpty ? _bankAccountNumberController.text : null,
        refundAccountName: _bankAccountNameController.text.isNotEmpty ? _bankAccountNameController.text : null,
        savedAddressId: (!_isRefundOnly && _addressMode == 'saved') ? _selectedAddress?.id : null,
        recipient: recipient,
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Đã gửi yêu cầu trả hàng'), backgroundColor: Colors.green),
        );
        context.pop();
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
}

// ── Quantity selector ──

class _QuantitySelector extends StatelessWidget {
  final int value;
  final int max;
  final ValueChanged<int> onChanged;

  const _QuantitySelector({required this.value, required this.max, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _circleBtn(Icons.remove, value > 1 ? () => onChanged(value - 1) : null),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text('$value', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
        ),
        _circleBtn(Icons.add, value < max ? () => onChanged(value + 1) : null),
      ],
    );
  }

  Widget _circleBtn(IconData icon, VoidCallback? onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: onPressed != null ? AppColors.primary : AppColors.border),
        ),
        child: Icon(icon, size: 16, color: onPressed != null ? AppColors.primary : AppColors.border),
      ),
    );
  }
}

// ── Section card ──

class _SectionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;

  const _SectionCard({required this.title, required this.icon, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 8, offset: const Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(icon, size: 18, color: AppColors.primary),
                const SizedBox(width: 8),
                Text(title,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
              ],
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(16),
            child: child,
          ),
        ],
      ),
    );
  }
}
