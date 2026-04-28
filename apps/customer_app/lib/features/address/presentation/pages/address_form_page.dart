import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/address.dart';
import '../../../order/presentation/providers/address_provider.dart';
import '../providers/address_providers.dart';

class AddressFormPage extends ConsumerStatefulWidget {
  final String? addressId;
  const AddressFormPage({super.key, this.addressId});

  bool get isEditing => addressId != null;

  @override
  ConsumerState<AddressFormPage> createState() => _AddressFormPageState();
}

class _AddressFormPageState extends ConsumerState<AddressFormPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _streetCtrl = TextEditingController();

  int? _selectedProvinceId;
  String? _selectedProvinceName;
  int? _selectedDistrictId;
  String? _selectedDistrictName;
  String? _selectedWardCode;
  String? _selectedWardName;
  bool _isDefault = false;
  bool _saving = false;
  bool _didLoad = false;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    _streetCtrl.dispose();
    super.dispose();
  }

  void _loadExisting(Address a) {
    if (_didLoad) return;
    _didLoad = true;
    _nameCtrl.text = a.recipientName;
    _phoneCtrl.text = a.recipientPhoneNumber;
    _streetCtrl.text = a.street;
    _selectedProvinceId = a.provinceId;
    _selectedProvinceName = a.city;
    _selectedDistrictId = a.districtId;
    _selectedDistrictName = a.district;
    _selectedWardCode = a.wardCode;
    _selectedWardName = a.ward;
    _isDefault = a.isDefault;
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedProvinceId == null ||
        _selectedDistrictId == null ||
        _selectedWardCode == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Vui lòng chọn đầy đủ tỉnh/thành, quận/huyện, phường/xã',
          ),
        ),
      );
      return;
    }

    setState(() => _saving = true);
    try {
      final address = Address(
        id: widget.addressId ?? '',
        recipientName: _nameCtrl.text.trim(),
        recipientPhoneNumber: _phoneCtrl.text.trim(),
        street: _streetCtrl.text.trim(),
        ward: _selectedWardName ?? '',
        district: _selectedDistrictName ?? '',
        city: _selectedProvinceName ?? '',
        wardCode: _selectedWardCode!,
        districtId: _selectedDistrictId!,
        provinceId: _selectedProvinceId!,
        isDefault: _isDefault,
      );

      final repo = ref.read(addressRepositoryProvider);
      if (widget.isEditing) {
        await repo.update(widget.addressId!, address);
      } else {
        await repo.create(address);
      }
      if (mounted) context.pop(true);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Lỗi: $e')));
      }
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // If editing, load existing address
    if (widget.isEditing) {
      final addressList = ref.watch(addressListProvider);
      addressList.whenData((list) {
        final found = list.where((a) => a.id == widget.addressId);
        if (found.isNotEmpty) _loadExisting(found.first);
      });
    }

    final provincesAsync = ref.watch(provincesProvider);
    final districtsAsync = _selectedProvinceId != null
        ? ref.watch(districtsProvider(_selectedProvinceId!))
        : null;
    final wardsAsync = _selectedDistrictId != null
        ? ref.watch(wardsProvider(_selectedDistrictId!))
        : null;

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: Text(widget.isEditing ? 'Sửa địa chỉ' : 'Thêm địa chỉ mới'),
        backgroundColor: AppColors.primaryDark,
        foregroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // ── Recipient info ──
            _SectionTitle('Thông tin người nhận'),
            const SizedBox(height: 8),
            _buildField(
              _nameCtrl,
              'Họ và tên',
              Icons.person_outline,
              validator: (v) =>
                  (v == null || v.trim().isEmpty) ? 'Vui lòng nhập tên' : null,
            ),
            const SizedBox(height: 12),
            _buildField(
              _phoneCtrl,
              'Số điện thoại',
              Icons.phone_outlined,
              keyboard: TextInputType.phone,
              validator: (v) =>
                  (v == null || v.trim().isEmpty) ? 'Vui lòng nhập SĐT' : null,
            ),

            const SizedBox(height: 24),
            _SectionTitle('Địa chỉ'),
            const SizedBox(height: 8),

            // ── Province ──
            provincesAsync.when(
              data: (provinces) => _DropdownCard(
                label: 'Tỉnh/Thành phố',
                value: _selectedProvinceId?.toString(),
                items: provinces
                    .map(
                      (p) => DropdownMenuItem(
                        value: p.provinceID.toString(),
                        child: Text(p.provinceName),
                      ),
                    )
                    .toList(),
                onChanged: (val) {
                  final id = int.tryParse(val ?? '');
                  final prov = provinces.where(
                    (p) => p.provinceID.toString() == val,
                  );
                  setState(() {
                    _selectedProvinceId = id;
                    _selectedProvinceName = prov.isNotEmpty
                        ? prov.first.provinceName
                        : null;
                    _selectedDistrictId = null;
                    _selectedDistrictName = null;
                    _selectedWardCode = null;
                    _selectedWardName = null;
                  });
                },
              ),
              loading: () => _loadingDropdown('Đang tải tỉnh/thành...'),
              error: (_, _) => _errorDropdown('Lỗi tải tỉnh/thành'),
            ),
            const SizedBox(height: 12),

            // ── District ──
            if (districtsAsync != null)
              districtsAsync.when(
                data: (districts) => _DropdownCard(
                  label: 'Quận/Huyện',
                  value: _selectedDistrictId?.toString(),
                  items: districts
                      .map(
                        (d) => DropdownMenuItem(
                          value: d.districtID.toString(),
                          child: Text(d.districtName),
                        ),
                      )
                      .toList(),
                  onChanged: (val) {
                    final id = int.tryParse(val ?? '');
                    final dist = districts.where(
                      (d) => d.districtID.toString() == val,
                    );
                    setState(() {
                      _selectedDistrictId = id;
                      _selectedDistrictName = dist.isNotEmpty
                          ? dist.first.districtName
                          : null;
                      _selectedWardCode = null;
                      _selectedWardName = null;
                    });
                  },
                ),
                loading: () => _loadingDropdown('Đang tải quận/huyện...'),
                error: (_, _) => _errorDropdown('Lỗi tải quận/huyện'),
              )
            else
              _disabledDropdown('Chọn tỉnh/thành trước'),
            const SizedBox(height: 12),

            // ── Ward ──
            if (wardsAsync != null)
              wardsAsync.when(
                data: (wards) => _DropdownCard(
                  label: 'Phường/Xã',
                  value: _selectedWardCode,
                  items: wards
                      .map(
                        (w) => DropdownMenuItem(
                          value: w.wardCode,
                          child: Text(w.wardName),
                        ),
                      )
                      .toList(),
                  onChanged: (val) {
                    final ward = wards.where((w) => w.wardCode == val);
                    setState(() {
                      _selectedWardCode = val;
                      _selectedWardName = ward.isNotEmpty
                          ? ward.first.wardName
                          : '';
                    });
                  },
                ),
                loading: () => _loadingDropdown('Đang tải phường/xã...'),
                error: (_, _) => _errorDropdown('Lỗi tải phường/xã'),
              )
            else
              _disabledDropdown('Chọn quận/huyện trước'),
            const SizedBox(height: 12),

            // ── Street ──
            _buildField(
              _streetCtrl,
              'Số nhà, đường',
              Icons.home_outlined,
              validator: (v) => (v == null || v.trim().isEmpty)
                  ? 'Vui lòng nhập địa chỉ'
                  : null,
            ),

            const SizedBox(height: 16),
            // ── Default switch ──
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.border),
              ),
              child: SwitchListTile(
                title: const Text(
                  'Đặt làm địa chỉ mặc định',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                value: _isDefault,
                activeThumbColor: AppColors.primary,
                onChanged: (v) => setState(() => _isDefault = v),
              ),
            ),

            const SizedBox(height: 32),
            // ── Save button ──
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: _saving ? null : _save,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: _saving
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : Text(
                        widget.isEditing ? 'Cập nhật' : 'Thêm địa chỉ',
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildField(
    TextEditingController ctrl,
    String label,
    IconData icon, {
    TextInputType? keyboard,
    String? Function(String?)? validator,
  }) {
    return TextFormField(
      controller: ctrl,
      keyboardType: keyboard,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, size: 20),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.primary, width: 1.5),
        ),
      ),
    );
  }

  Widget _loadingDropdown(String text) => Container(
    height: 56,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: AppColors.border),
    ),
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      children: [
        const SizedBox(
          width: 16,
          height: 16,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(color: AppColors.textSecondary, fontSize: 14),
        ),
      ],
    ),
  );

  Widget _disabledDropdown(String text) => Container(
    height: 56,
    decoration: BoxDecoration(
      color: AppColors.skeleton,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: AppColors.border),
    ),
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Text(
      text,
      style: const TextStyle(color: AppColors.textSecondary, fontSize: 14),
    ),
  );

  Widget _errorDropdown(String text) => Container(
    height: 56,
    decoration: BoxDecoration(
      color: Colors.red.shade50,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.red.shade200),
    ),
    alignment: Alignment.centerLeft,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Text(
      text,
      style: TextStyle(color: Colors.red.shade700, fontSize: 14),
    ),
  );
}

class _SectionTitle extends StatelessWidget {
  final String text;
  const _SectionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        color: AppColors.textPrimary,
      ),
    );
  }
}

class _DropdownCard extends StatelessWidget {
  final String label;
  final String? value;
  final List<DropdownMenuItem<String>> items;
  final ValueChanged<String?> onChanged;

  const _DropdownCard({
    required this.label,
    this.value,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButtonFormField<String>(
        initialValue: items.any((i) => i.value == value) ? value : null,
        items: items,
        onChanged: onChanged,
        decoration: InputDecoration(labelText: label, border: InputBorder.none),
        isExpanded: true,
      ),
    );
  }
}
