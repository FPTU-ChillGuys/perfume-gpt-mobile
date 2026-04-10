import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/cart_total.dart';
import '../../../../domain/repositories/order_repository.dart';
import '../providers/address_provider.dart';
import '../providers/cart_provider.dart';
import '../providers/order_provider.dart';

String _formatCurrency(double value) {
  final str = value.toStringAsFixed(0);
  final buf = StringBuffer();
  for (var i = 0; i < str.length; i++) {
    if (i > 0 && (str.length - i) % 3 == 0) buf.write('.');
    buf.write(str[i]);
  }
  return '$buf\u0111';
}

class CheckoutPage extends ConsumerStatefulWidget {
  const CheckoutPage({super.key});

  @override
  ConsumerState<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends ConsumerState<CheckoutPage> {
  // Delivery
  bool _isPickupInStore = false;

  // Payment
  String _selectedPayment = 'CashOnDelivery';

  // Address
  String? _selectedAddressId;
  bool _useNewAddress = false;

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _streetController = TextEditingController();

  ProvinceResponse? _selectedProvince;
  DistrictResponse? _selectedDistrict;
  WardResponse? _selectedWard;

  // Voucher
  final _voucherController = TextEditingController();
  bool _isApplyingVoucher = false;
  String? _appliedVoucherCode;
  String? _voucherError;

  // Totals with voucher
  CartTotal? _computedTotal;

  // Order
  bool _isPlacingOrder = false;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _streetController.dispose();
    _voucherController.dispose(); 
    super.dispose();
  }

  // ─── Selected items helpers (matching React FE pattern) ───────────
  /// Returns (allItemIds, effectiveItemIds).
  /// If selectedCartItemIds has a valid subset, use that; otherwise all.
  (List<String>, List<String>) _computeEffectiveItemIds() {
    final cartItems = ref.read(cartProvider).value ?? [];
    final allIds = cartItems
        .map((e) => e.cartItemId ?? '')
        .where((id) => id.isNotEmpty)
        .toList();
    final selectedIds = ref.read(selectedCartItemIdsProvider);

    if (selectedIds.isNotEmpty) {
      final validSelected =
          selectedIds.where((id) => allIds.contains(id)).toList();
      if (validSelected.isNotEmpty && validSelected.length < allIds.length) {
        return (allIds, validSelected);
      }
    }
    return (allIds, allIds);
  }

  /// Only pass itemIds to API when it's a proper subset of all items.
  bool _shouldQuerySelectedItems(List<String> allIds, List<String> effectiveIds) {
    return effectiveIds.isNotEmpty && effectiveIds.length < allIds.length;
  }

  void _onDeliveryMethodChanged(bool pickupInStore) {
    setState(() {
      _isPickupInStore = pickupInStore;
      _selectedPayment = pickupInStore ? 'CashInStore' : 'CashOnDelivery';
    });
    _refreshTotals();
  }

  Future<void> _refreshTotals([String? voucherOverride]) async {
    final (allIds, effectiveIds) = _computeEffectiveItemIds();
    if (effectiveIds.isEmpty) return;

    final voucher = voucherOverride ?? _appliedVoucherCode;

    try {
      final total = await ref.read(cartRepositoryProvider).getTotal(
            voucherCode: (voucher != null && voucher.isNotEmpty) ? voucher : null,
            itemIds: _shouldQuerySelectedItems(allIds, effectiveIds) ? effectiveIds : null,
          );
      if (mounted) setState(() => _computedTotal = total);
    } catch (_) {}
  }

  Future<void> _applyVoucher() async {
    final code = _voucherController.text.trim();
    if (code.isEmpty) return;
    if (_appliedVoucherCode?.toLowerCase() == code.toLowerCase()) return;

    setState(() {
      _isApplyingVoucher = true;
      _voucherError = null;
    });

    try {
      final (allIds, effectiveIds) = _computeEffectiveItemIds();
      final total = await ref.read(cartRepositoryProvider).getTotal(
            voucherCode: code,
            itemIds: _shouldQuerySelectedItems(allIds, effectiveIds) ? effectiveIds : null,
          );
      if (mounted) {
        setState(() {
          _appliedVoucherCode = code;
          _computedTotal = total;
          _isApplyingVoucher = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Đã áp dụng mã giảm giá'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _voucherError = 'Mã giảm giá không hợp lệ hoặc đã hết hạn';
          _isApplyingVoucher = false;
        });
      }
    }
  }

  Future<void> _removeVoucher() async {
    setState(() {
      _appliedVoucherCode = null;
      _voucherController.clear();
      _voucherError = null;
    });
    await _refreshTotals();
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Đã bỏ mã giảm giá')),
      );
    }
  }

  Future<void> _placeOrder() async {
    // Validate
    if (!_isPickupInStore) {
      if (!_useNewAddress && (_selectedAddressId == null || _selectedAddressId!.isEmpty)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Vui lòng chọn địa chỉ giao hàng'),
            backgroundColor: Colors.orange,
          ),
        );
        return;
      }
      if (_useNewAddress) {
        if (_nameController.text.trim().isEmpty ||
            _phoneController.text.trim().isEmpty ||
            _streetController.text.trim().isEmpty ||
            _selectedProvince == null ||
            _selectedDistrict == null ||
            _selectedWard == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Vui lòng điền đầy đủ thông tin địa chỉ'),
              backgroundColor: Colors.orange,
            ),
          );
          return;
        }
      }
    }

    setState(() => _isPlacingOrder = true);

    try {
      final (_, effectiveIds) = _computeEffectiveItemIds();
      final total = _computedTotal ?? ref.read(cartTotalProvider).value;

      if (effectiveIds.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Vui lòng chọn sản phẩm để thanh toán'),
            backgroundColor: Colors.orange,
          ),
        );
        return;
      }

      RecipientAddress? recipient;
      String? savedAddressId;

      if (!_isPickupInStore) {
        if (_useNewAddress) {
          recipient = RecipientAddress(
            contactName: _nameController.text.trim(),
            contactPhoneNumber: _phoneController.text.trim(),
            provinceId: _selectedProvince?.provinceID,
            provinceName: _selectedProvince?.provinceName ?? '',
            districtId: _selectedDistrict?.districtID,
            districtName: _selectedDistrict?.districtName ?? '',
            wardCode: _selectedWard?.wardCode ?? '',
            wardName: _selectedWard?.wardName ?? '',
            fullAddress: _streetController.text.trim(),
          );
        } else {
          savedAddressId = _selectedAddressId;
        }
      }

      final request = CheckoutRequest(
        paymentMethod: _selectedPayment,
        deliveryMethod: _isPickupInStore ? 'PickupInStore' : 'Delivery',
        itemIds: effectiveIds,
        expectedTotalPrice: total?.totalPrice,
        voucherCode: _appliedVoucherCode,
        savedAddressId: savedAddressId,
        recipient: recipient,
      );

      final result = await ref.read(orderRepositoryProvider).checkout(request);
      ref.invalidate(cartProvider);
      ref.invalidate(cartTotalProvider);
      ref.invalidate(myOrdersProvider);
      ref.read(selectedCartItemIdsProvider.notifier).clear();

      if (!mounted) return;

      // Handle payment redirect based on payment method (matching React FE)
      final isOnlinePayment = _selectedPayment == 'VnPay' ||
          _selectedPayment == 'Momo' ||
          _selectedPayment == 'PayOs';

      if (isOnlinePayment) {
        if (result.paymentUrl != null && result.paymentUrl!.isNotEmpty) {
          if (mounted) {
            context.push('/payment-webview?url=${Uri.encodeComponent(result.paymentUrl!)}');
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Không thể chuyển đến trang thanh toán'),
              backgroundColor: Colors.red,
            ),
          );
        }
      } else {
        // COD / CashInStore — show success
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) => AlertDialog(
            icon: const Icon(Icons.check_circle, color: Colors.green, size: 48),
            title: const Text('Đặt hàng thành công!'),
            content: const Text(
              'Đơn hàng của bạn đã được đặt thành công. Bạn có thể theo dõi trạng thái trong Đơn hàng của tôi.',
            ),
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
                  context.go('/orders');
                },
                child: const Text('Xem đơn hàng'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Đặt hàng thất bại: ${e.toString().replaceFirst('Exception: ', '')}',
            ),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _isPlacingOrder = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);
    final cartAsync = ref.watch(cartProvider);
    final cartTotalAsync = ref.watch(cartTotalProvider);
    final selectedIds = ref.watch(selectedCartItemIdsProvider);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
        title: const Text('Thanh toán'),
      ),
      body: authState.when(
        data: (user) {
          if (user == null) {
            return _buildAuthRequired();
          }

          if (_nameController.text.isEmpty && user.name != null) {
            _nameController.text = user.name!;
          }

          final cartItems = cartAsync.value ?? [];
          if (cartItems.isEmpty && !cartAsync.isLoading) {
            return _buildEmptyCart();
          }

          // Filter visible items based on selected IDs (React FE pattern)
          final allIds = cartItems
              .map((e) => e.cartItemId ?? '')
              .where((id) => id.isNotEmpty)
              .toSet();
          final validSelected = selectedIds.isNotEmpty
              ? selectedIds.intersection(allIds)
              : allIds;
          final effectiveIds =
              validSelected.isNotEmpty ? validSelected : allIds;
          final visibleItems = effectiveIds.length < allIds.length
              ? cartItems
                  .where((item) => effectiveIds.contains(item.cartItemId))
                  .toList()
              : cartItems;

          final total = _computedTotal ?? cartTotalAsync.value;
          final totalPrice = total?.totalPrice ?? 0.0;

          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // --- Delivery Method ---
                      _buildSectionTitle('Phương thức nhận hàng'),
                      const SizedBox(height: 8),
                      _buildDeliveryMethodCards(),
                      const SizedBox(height: 24),

                      // --- Address (only for Delivery) ---
                      if (!_isPickupInStore) ...[
                        _buildSectionTitle('Địa chỉ giao hàng'),
                        const SizedBox(height: 8),
                        _buildAddressSection(),
                        const SizedBox(height: 24),
                      ],

                      // --- Order Summary ---
                      _buildSectionTitle('Đơn hàng'),
                      const SizedBox(height: 8),
                      _buildOrderItems(visibleItems),
                      const SizedBox(height: 16),

                      // --- Voucher ---
                      _buildVoucherSection(),
                      const SizedBox(height: 16),

                      // --- Price Breakdown ---
                      _buildPriceBreakdown(total, cartTotalAsync),
                      const SizedBox(height: 24),

                      // --- Payment Method ---
                      _buildSectionTitle('Phương thức thanh toán'),
                      const SizedBox(height: 8),
                      _buildPaymentMethods(),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),

              // --- Bottom bar with Place Order ---
              _buildBottomBar(totalPrice),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }

  // ─── Auth Required ─────────────────────────────────────────────
  Widget _buildAuthRequired() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_outline, size: 80, color: Colors.grey),
            const SizedBox(height: 24),
            const Text(
              'Yêu cầu đăng nhập',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Vui lòng đăng nhập để hoàn tất đặt hàng.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => context.push('/login'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Đăng nhập'),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Quay lại giỏ hàng'),
            ),
          ],
        ),
      ),
    );
  }

  // ─── Empty Cart ────────────────────────────────────────────────
  Widget _buildEmptyCart() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.shopping_cart_outlined, size: 64, color: Colors.grey),
          SizedBox(height: 16),
          Text('Giỏ hàng trống',
              style: TextStyle(fontSize: 18, color: Colors.grey)),
        ],
      ),
    );
  }

  // ─── Section Title ──────────────────────────────────────────────
  Widget _buildSectionTitle(String text) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  // ─── Delivery Method Cards ──────────────────────────────────────
  Widget _buildDeliveryMethodCards() {
    return Row(
      children: [
        Expanded(
          child: _deliveryCard(
            icon: Icons.local_shipping_outlined,
            title: 'Giao hàng tận nơi',
            subtitle: 'Giao đến địa chỉ của bạn',
            selected: !_isPickupInStore,
            onTap: () => _onDeliveryMethodChanged(false),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _deliveryCard(
            icon: Icons.store_outlined,
            title: 'Nhận tại cửa hàng',
            subtitle: 'Nhận hàng trực tiếp',
            selected: _isPickupInStore,
            onTap: () => _onDeliveryMethodChanged(true),
          ),
        ),
      ],
    );
  }

  Widget _deliveryCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required bool selected,
    required VoidCallback onTap,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: selected ? colorScheme.primary : Colors.grey.shade300,
            width: selected ? 2 : 1,
          ),
          borderRadius: BorderRadius.circular(12),
          color: selected ? colorScheme.primary.withValues(alpha: 0.05) : null,
        ),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(icon, size: 40,
                    color: selected ? colorScheme.primary : Colors.grey),
                if (selected)
                  Positioned(
                    right: -4,
                    top: -4,
                    child: Icon(Icons.check_circle,
                        size: 18, color: colorScheme.primary),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Text(title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: selected ? colorScheme.primary : null,
                ),
                textAlign: TextAlign.center),
            const SizedBox(height: 2),
            Text(subtitle,
                style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }

  // ─── Address Section ────────────────────────────────────────────
  Widget _buildAddressSection() {
    final savedAddrAsync = ref.watch(savedAddressesProvider);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Saved addresses dropdown
            savedAddrAsync.when(
              data: (addresses) {
                if (addresses.isEmpty) {
                  // No saved addresses, force new address form
                  if (!_useNewAddress) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (mounted) setState(() => _useNewAddress = true);
                    });
                  }
                  return const SizedBox.shrink();
                }

                // Set default address on first load
                if (_selectedAddressId == null && !_useNewAddress) {
                  final defaultAddr = addresses
                      .where((a) => a.isDefault == true)
                      .firstOrNull;
                  if (defaultAddr?.id != null) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (mounted) {
                        setState(() => _selectedAddressId = defaultAddr!.id!);
                      }
                    });
                  }
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownButtonFormField<String>(
                      initialValue: _useNewAddress ? 'new' : _selectedAddressId,
                      isExpanded: true,
                      decoration: const InputDecoration(
                        labelText: 'Chọn địa chỉ',
                        prefixIcon: Icon(Icons.location_on_outlined),
                        border: OutlineInputBorder(),
                      ),
                      items: [
                        ...addresses.map((addr) => DropdownMenuItem(
                              value: addr.id,
                              child: Text(
                                '${addr.street}, ${addr.ward}, ${addr.district}, ${addr.city}'
                                '${addr.isDefault == true ? " (Mặc định)" : ""}',
                                overflow: TextOverflow.ellipsis,
                              ),
                            )),
                        const DropdownMenuItem(
                          value: 'new',
                          child: Text('+ Nhập địa chỉ mới'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          if (value == 'new') {
                            _useNewAddress = true;
                            _selectedAddressId = null;
                          } else {
                            _useNewAddress = false;
                            _selectedAddressId = value;
                          }
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              },
              loading: () => const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
              ),
              error: (_, _) {
                if (!_useNewAddress) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (mounted) setState(() => _useNewAddress = true);
                  });
                }
                return const SizedBox.shrink();
              },
            ),

            // New address form
            if (_useNewAddress) _buildNewAddressForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildNewAddressForm() {
    return Column(
      children: [
        TextField(
          controller: _nameController,
          decoration: const InputDecoration(
            labelText: 'Tên người nhận *',
            prefixIcon: Icon(Icons.person_outline),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: _phoneController,
          decoration: const InputDecoration(
            labelText: 'Số điện thoại *',
            prefixIcon: Icon(Icons.phone_outlined),
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.phone,
        ),
        const SizedBox(height: 12),
        _buildProvinceDropdown(),
        const SizedBox(height: 12),
        _buildDistrictDropdown(),
        const SizedBox(height: 12),
        _buildWardDropdown(),
        const SizedBox(height: 12),
        TextField(
          controller: _streetController,
          decoration: const InputDecoration(
            labelText: 'Địa chỉ cụ thể (Số nhà, tên đường) *',
            prefixIcon: Icon(Icons.home_outlined),
            border: OutlineInputBorder(),
            hintText: 'VD: 123 Nguyễn Trãi',
          ),
          maxLines: 2,
        ),
      ],
    );
  }

  // ─── Province / District / Ward Dropdowns ───────────────────────
  Widget _buildProvinceDropdown() {
    final provincesAsync = ref.watch(provincesProvider);
    return provincesAsync.when(
      data: (provinces) => DropdownButtonFormField<ProvinceResponse>(
        initialValue: _selectedProvince,
        isExpanded: true,
        decoration: const InputDecoration(
          labelText: 'Tỉnh/Thành phố *',
          prefixIcon: Icon(Icons.location_city_outlined),
          border: OutlineInputBorder(),
        ),
        items: provinces
            .map((p) => DropdownMenuItem(
                  value: p,
                  child: Text(p.provinceName, overflow: TextOverflow.ellipsis),
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            _selectedProvince = value;
            _selectedDistrict = null;
            _selectedWard = null;
          });
        },
      ),
      loading: () => const _LoadingField(label: 'Tỉnh/Thành phố *'),
      error: (e, _) => const _ErrorField(
        label: 'Tỉnh/Thành phố *',
        message: 'Không thể tải danh sách tỉnh/thành',
      ),
    );
  }

  Widget _buildDistrictDropdown() {
    if (_selectedProvince?.provinceID == null) {
      return const _DisabledField(
        label: 'Quận/Huyện *',
        hint: 'Chọn tỉnh/thành trước',
      );
    }

    final districtsAsync =
        ref.watch(districtsProvider(_selectedProvince!.provinceID!));
    return districtsAsync.when(
      data: (districts) => DropdownButtonFormField<DistrictResponse>(
        initialValue: _selectedDistrict,
        isExpanded: true,
        decoration: const InputDecoration(
          labelText: 'Quận/Huyện *',
          prefixIcon: Icon(Icons.map_outlined),
          border: OutlineInputBorder(),
        ),
        items: districts
            .map((d) => DropdownMenuItem(
                  value: d,
                  child: Text(d.districtName, overflow: TextOverflow.ellipsis),
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            _selectedDistrict = value;
            _selectedWard = null;
          });
        },
      ),
      loading: () => const _LoadingField(label: 'Quận/Huyện *'),
      error: (e, _) => const _ErrorField(
        label: 'Quận/Huyện *',
        message: 'Không thể tải danh sách quận/huyện',
      ),
    );
  }

  Widget _buildWardDropdown() {
    if (_selectedDistrict?.districtID == null) {
      return const _DisabledField(
        label: 'Phường/Xã *',
        hint: 'Chọn quận/huyện trước',
      );
    }

    final wardsAsync =
        ref.watch(wardsProvider(_selectedDistrict!.districtID!));
    return wardsAsync.when(
      data: (wards) => DropdownButtonFormField<WardResponse>(
        initialValue: _selectedWard,
        isExpanded: true,
        decoration: const InputDecoration(
          labelText: 'Phường/Xã *',
          prefixIcon: Icon(Icons.place_outlined),
          border: OutlineInputBorder(),
        ),
        items: wards
            .map((w) => DropdownMenuItem(
                  value: w,
                  child: Text(w.wardName, overflow: TextOverflow.ellipsis),
                ))
            .toList(),
        onChanged: (value) {
          setState(() => _selectedWard = value);
        },
      ),
      loading: () => const _LoadingField(label: 'Phường/Xã *'),
      error: (e, _) => const _ErrorField(
        label: 'Phường/Xã *',
        message: 'Không thể tải danh sách phường/xã',
      ),
    );
  }

  // ─── Order Items ────────────────────────────────────────────────
  Widget _buildOrderItems(List items) {
    return Card(
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        separatorBuilder: (_, _) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final item = items[index];
          return Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                if (item.imageUrl.isNotEmpty)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      item.imageUrl,
                      width: 56,
                      height: 56,
                      fit: BoxFit.cover,
                      errorBuilder: (_, _, _) => Container(
                        width: 56,
                        height: 56,
                        color: Colors.grey.shade200,
                        child: const Icon(Icons.image_not_supported, size: 24),
                      ),
                    ),
                  ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.variantName ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w500)),
                      const SizedBox(height: 4),
                      Text('x${item.quantity}',
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13)),
                    ],
                  ),
                ),
                Text(
                  _formatCurrency(item.subTotal),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // ─── Voucher Section ────────────────────────────────────────────
  Widget _buildVoucherSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _voucherController,
                    enabled: _appliedVoucherCode == null && !_isApplyingVoucher,
                    decoration: InputDecoration(
                      hintText: 'Mã giảm giá',
                      border: const OutlineInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      errorText: _voucherError,
                      isDense: true,
                    ),
                  ),
                ),
                if (_appliedVoucherCode == null) ...[
                  const SizedBox(width: 8),
                  SizedBox(
                    height: 44,
                    child: FilledButton(
                      onPressed: _isApplyingVoucher ||
                              _voucherController.text.trim().isEmpty
                          ? null
                          : _applyVoucher,
                      child: _isApplyingVoucher
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(
                                  strokeWidth: 2, color: Colors.white),
                            )
                          : const Text('Áp dụng'),
                    ),
                  ),
                ],
              ],
            ),
            if (_appliedVoucherCode != null) ...[
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green.shade700, size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _appliedVoucherCode!,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.green.shade700,
                        ),
                      ),
                    ),
                    if (_computedTotal != null && _computedTotal!.discount > 0)
                      Text(
                        '-${_formatCurrency(_computedTotal!.discount)}',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.green.shade700,
                        ),
                      ),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: _isApplyingVoucher ? null : _removeVoucher,
                      child: Text('Xóa',
                          style: TextStyle(
                            color: Colors.red.shade600,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  // ─── Price Breakdown ────────────────────────────────────────────
  Widget _buildPriceBreakdown(CartTotal? total, AsyncValue<CartTotal> cartTotalAsync) {
    if (total == null) {
      return cartTotalAsync.when(
        data: (_) => const SizedBox.shrink(),
        loading: () => const Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
        error: (_, _) => const Text('Không thể tải tổng tiền'),
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _priceRow('Tạm tính', total.subtotal),
            if (total.discount > 0)
              _priceRow('Giảm giá', -total.discount, color: Colors.green),
            _priceRow('Phí vận chuyển', total.shippingFee,
                freeLabel: total.shippingFee == 0),
            const Divider(height: 16),
            _priceRow('Tổng cộng', total.totalPrice, bold: true),
          ],
        ),
      ),
    );
  }

  Widget _priceRow(String label, double amount,
      {bool bold = false, Color? color, bool freeLabel = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: TextStyle(
                fontSize: bold ? 16 : 14,
                fontWeight: bold ? FontWeight.bold : FontWeight.normal,
              )),
          freeLabel
              ? Text('FREE',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.green.shade700,
                  ))
              : Text(
                  '${color != null ? "-" : ""}${_formatCurrency(amount.abs())}',
                  style: TextStyle(
                    fontSize: bold ? 16 : 14,
                    fontWeight: bold ? FontWeight.bold : FontWeight.w600,
                    color: color ??
                        (bold ? Theme.of(context).colorScheme.error : null),
                  ),
                ),
        ],
      ),
    );
  }

  // ─── Payment Methods ────────────────────────────────────────────
  Widget _buildPaymentMethods() {
    final methods = _isPickupInStore
        ? [
            _PaymentOption('CashInStore', 'Thanh toán tại cửa hàng',
                'Thanh toán trực tiếp tại cửa hàng', Icons.store, Colors.teal),
            _PaymentOption('VnPay', 'VNPay', 'Thanh toán qua VNPay',
                Icons.payment, AppColors.primary),
            _PaymentOption('Momo', 'MoMo', 'Thanh toán qua MoMo',
                Icons.account_balance_wallet, Colors.pink),
            _PaymentOption('PayOs', 'PayOS', 'Thanh toán qua PayOS',
                Icons.account_balance, Colors.blue),
          ]
        : [
            _PaymentOption(
                'CashOnDelivery',
                'Thanh toán khi nhận hàng',
                'Thanh toán bằng tiền mặt khi nhận hàng',
                Icons.money,
                Colors.green),
            _PaymentOption('VnPay', 'VNPay', 'Thanh toán qua VNPay',
                Icons.payment, AppColors.primary),
            _PaymentOption('Momo', 'MoMo', 'Thanh toán qua MoMo',
                Icons.account_balance_wallet, Colors.pink),
            _PaymentOption('PayOs', 'PayOS', 'Thanh toán qua PayOS',
                Icons.account_balance, Colors.blue),
          ];

    return Card(
      child: RadioGroup<String>(
        groupValue: _selectedPayment,
        onChanged: (v) { if (v != null) setState(() => _selectedPayment = v); },
        child: Column(
          children: methods.map((m) {
            final isSelected = _selectedPayment == m.value;
            return RadioListTile<String>(
              value: m.value,
              secondary: Icon(m.icon, color: m.color),
              title: Text(m.label,
                  style: TextStyle(
                      fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal)),
              subtitle: Text(m.description,
                  style: const TextStyle(fontSize: 12)),
            );
          }).toList(),
        ),
      ),
    );
  }

  // ─── Bottom Bar ─────────────────────────────────────────────────
  Widget _buildBottomBar(double totalPrice) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: FilledButton(
            onPressed: _isPlacingOrder ? null : _placeOrder,
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
            child: _isPlacingOrder
                ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                        strokeWidth: 2, color: Colors.white),
                  )
                : Text(
                    'Đặt hàng - ${_formatCurrency(totalPrice)}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
          ),
        ),
      ),
    );
  }
}

// ─── Helper Widgets ──────────────────────────────────────────────

class _PaymentOption {
  final String value;
  final String label;
  final String description;
  final IconData icon;
  final Color color;

  const _PaymentOption(
      this.value, this.label, this.description, this.icon, this.color);
}

class _LoadingField extends StatelessWidget {
  final String label;
  const _LoadingField({required this.label});

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      child: const SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
    );
  }
}

class _ErrorField extends StatelessWidget {
  final String label;
  final String message;
  const _ErrorField({required this.label, required this.message});

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      child: Text(message,
          style: TextStyle(color: Theme.of(context).colorScheme.error)),
    );
  }
}

class _DisabledField extends StatelessWidget {
  final String label;
  final String hint;
  const _DisabledField({required this.label, required this.hint});

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      child: Text(hint, style: const TextStyle(color: Colors.grey)),
    );
  }
}
