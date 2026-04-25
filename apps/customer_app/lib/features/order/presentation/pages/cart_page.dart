import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/price_formatter.dart';
import '../../../../domain/entities/cart_item.dart';
import '../../../../domain/entities/cart_total.dart';
import '../../../../domain/entities/voucher.dart';
import '../../../voucher/presentation/providers/voucher_providers.dart';
import '../providers/cart_provider.dart';

class CartPage extends ConsumerStatefulWidget {
  const CartPage({super.key});

  @override
  ConsumerState<CartPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  bool _hasInitializedSelection = false;
  bool _isClearing = false;

  // Voucher state
  final _voucherController = TextEditingController();
  bool _isApplyingVoucher = false;
  String? _appliedVoucherCode;
  String? _voucherError;
  CartTotal? _computedTotal;

  @override
  void dispose() {
    _voucherController.dispose();
    super.dispose();
  }

  Set<String> _getSelectableItemIds(List<CartItem> items) {
    return items
        .map((e) => e.cartItemId ?? '')
        .where((id) => id.isNotEmpty)
        .toSet();
  }

  void _clearVoucherOnCartChange() {
    if (_appliedVoucherCode == null) return;
    setState(() {
      _appliedVoucherCode = null;
      _voucherError = null;
      _voucherController.clear();
      _computedTotal = null;
    });
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Mã giảm giá đã bị xóa do thay đổi giỏ hàng'),
        ),
      );
    }
  }

  void _handleToggleItem(String? cartItemId) {
    if (cartItemId == null || cartItemId.isEmpty) return;
    final selectedIds = ref.read(selectedCartItemIdsProvider);
    if (selectedIds.contains(cartItemId)) {
      _clearVoucherOnCartChange();
    }
    ref.read(selectedCartItemIdsProvider.notifier).toggle(cartItemId);
  }

  void _handleToggleSelectAll(bool checked, Set<String> allIds) {
    if (!checked) {
      _clearVoucherOnCartChange();
    }
    ref
        .read(selectedCartItemIdsProvider.notifier)
        .update(checked ? allIds : {});
  }

  Future<void> _confirmDeleteItem(CartItem item) async {
    final cartItemId = item.cartItemId;
    if (cartItemId == null || cartItemId.isEmpty) return;

    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Xóa sản phẩm'),
        content: const Text('Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Hủy'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Xóa', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
    if (confirm == true) {
      _clearVoucherOnCartChange();
      await ref.read(cartProvider.notifier).removeItem(cartItemId);
    }
  }

  Future<void> _confirmClearCart() async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Xóa toàn bộ giỏ hàng'),
        content: const Text(
          'Toàn bộ sản phẩm trong giỏ hàng sẽ bị xóa. Bạn có chắc chắn không?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Hủy'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Xóa hết', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
    if (confirm == true) {
      setState(() => _isClearing = true);
      try {
        _clearVoucherOnCartChange();
        await ref.read(cartProvider.notifier).clearCart();
        ref.read(selectedCartItemIdsProvider.notifier).clear();
        _hasInitializedSelection = false;
      } finally {
        if (mounted) setState(() => _isClearing = false);
      }
    }
  }

  // ─── Voucher helpers (matching React FE CartPage pattern) ──────

  (List<String>, List<String>) _computeEffectiveItemIds() {
    final cartItems = ref.read(cartProvider).value ?? [];
    final allIds = cartItems
        .map((e) => e.cartItemId ?? '')
        .where((id) => id.isNotEmpty)
        .toList();
    final selectedIds = ref.read(selectedCartItemIdsProvider);

    if (selectedIds.isNotEmpty) {
      final validSelected = selectedIds
          .where((id) => allIds.contains(id))
          .toList();
      if (validSelected.isNotEmpty && validSelected.length < allIds.length) {
        return (allIds, validSelected);
      }
    }
    return (allIds, allIds);
  }

  Future<CartTotal?> _loadTotals(
    List<String> selectedIds, [
    String? voucherCodeOverride,
  ]) async {
    final (allIds, effectiveIds) = _computeEffectiveItemIds();
    if (allIds.isEmpty || selectedIds.isEmpty) {
      return null;
    }

    final activeVoucher = voucherCodeOverride ?? _appliedVoucherCode;
    final isSubset = effectiveIds.length < allIds.length;

    try {
      final total = await ref
          .read(cartRepositoryProvider)
          .getTotal(
            voucherCode: (activeVoucher != null && activeVoucher.isNotEmpty)
                ? activeVoucher
                : null,
            itemIds: isSubset ? effectiveIds : null,
          );
      if (mounted) setState(() => _computedTotal = total);
      return total;
    } catch (_) {
      return null;
    }
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
      final selectedIds = ref.read(selectedCartItemIdsProvider).toList();
      final total = await _loadTotals(selectedIds, code);
      if (!mounted) return;

      if (total == null) {
        setState(() {
          _appliedVoucherCode = null;
          _voucherError = 'Mã giảm giá không tồn tại hoặc đã hết hạn';
          _isApplyingVoucher = false;
        });
        return;
      }

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
      _isApplyingVoucher = true;
    });
    try {
      _appliedVoucherCode = null;
      _voucherController.clear();
      _voucherError = null;
      final selectedIds = ref.read(selectedCartItemIdsProvider).toList();
      final total = await _loadTotals(selectedIds);
      if (mounted) {
        setState(() {
          _computedTotal = total;
          _isApplyingVoucher = false;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _isApplyingVoucher = false);
    }
  }

  void _showVoucherPicker() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => _VoucherPickerSheet(
        onSelect: (voucher) {
          Navigator.pop(ctx);
          _voucherController.text = voucher.code;
          _applyVoucher();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cartAsync = ref.watch(cartProvider);
    final selectedIds = ref.watch(selectedCartItemIdsProvider);
    final selectedTotalAsync = ref.watch(selectedCartTotalProvider);

    final items = cartAsync.asData?.value ?? [];

    // Initialize selection on first load (matching React FE pattern)
    if (!_hasInitializedSelection && items.isNotEmpty) {
      _hasInitializedSelection = true;
      final allIds = _getSelectableItemIds(items);
      if (selectedIds.isEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(selectedCartItemIdsProvider.notifier).update(allIds);
        });
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.canPop() ? context.pop() : context.go('/'),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Giỏ hàng'),
            if (items.isNotEmpty)
              Text(
                '(${items.length} sản phẩm)',
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
              ),
          ],
        ),
        actions: [
          if (items.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_sweep_outlined),
              tooltip: 'Xóa giỏ hàng',
              onPressed: _isClearing ? null : _confirmClearCart,
            ),
        ],
      ),
      body: cartAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 12),
              Text('Error: $error'),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () => ref.invalidate(cartProvider),
                child: const Text('Thử lại'),
              ),
            ],
          ),
        ),
        data: (items) {
          if (items.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 80,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Giỏ hàng đang trống',
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Khám phá các sản phẩm mới của chúng tôi.',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                  ),
                  const SizedBox(height: 24),
                  FilledButton(
                    onPressed: () => context.go('/store'),
                    child: const Text('Khám phá ngay'),
                  ),
                ],
              ),
            );
          }

          final allIds = _getSelectableItemIds(items);
          final isAllSelected =
              allIds.isNotEmpty && selectedIds.containsAll(allIds);
          final isIndeterminate =
              selectedIds.isNotEmpty &&
              !isAllSelected &&
              selectedIds.intersection(allIds).isNotEmpty;

          return Column(
            children: [
              // Select all row
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                child: Row(
                  children: [
                    Checkbox(
                      value: isAllSelected
                          ? true
                          : isIndeterminate
                          ? null
                          : false,
                      tristate: true,
                      onChanged: (val) =>
                          _handleToggleSelectAll(val == true, allIds),
                      shape: const CircleBorder(),
                      activeColor: Theme.of(context).colorScheme.error,
                    ),
                    const Text(
                      'Chọn tất cả',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(
                      'Đã chọn ${selectedIds.intersection(allIds).length}/${allIds.length}',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(height: 1),

              // Items list
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(4, 8, 12, 8),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    final isSelected =
                        item.cartItemId != null &&
                        selectedIds.contains(item.cartItemId);
                    return _CartItemCard(
                      item: item,
                      isSelected: isSelected,
                      onToggle: () => _handleToggleItem(item.cartItemId),
                      onDelete: () => _confirmDeleteItem(item),
                      onBeforeDecrease: _clearVoucherOnCartChange,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: items.isEmpty
          ? null
          : _CartBottomBar(
              selectedTotalAsync: selectedTotalAsync,
              computedTotal: _computedTotal,
              selectedCount: selectedIds
                  .intersection(_getSelectableItemIds(items))
                  .length,
              onCheckout: () => context.push(
                '/checkout',
                extra: {
                  'voucherCode': _appliedVoucherCode,
                  'selectedItemIds': selectedIds.toList(),
                },
              ),
              // Voucher props
              voucherController: _voucherController,
              isApplyingVoucher: _isApplyingVoucher,
              appliedVoucherCode: _appliedVoucherCode,
              voucherError: _voucherError,
              onApplyVoucher: _applyVoucher,
              onRemoveVoucher: _removeVoucher,
              onShowVoucherPicker: _showVoucherPicker,
            ),
    );
  }
}

// ─── Cart item card ────────────────────────────────────────────────────────

class _CartItemCard extends ConsumerWidget {
  final CartItem item;
  final bool isSelected;
  final VoidCallback onToggle;
  final VoidCallback onDelete;
  final VoidCallback onBeforeDecrease;

  const _CartItemCard({
    required this.item,
    required this.isSelected,
    required this.onToggle,
    required this.onDelete,
    required this.onBeforeDecrease,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final notifier = ref.read(cartProvider.notifier);
    final idToUse = (item.cartItemId == null || item.cartItemId!.isEmpty)
        ? item.variantId
        : item.cartItemId!;
    final quantity = item.quantity < 1 ? 1 : item.quantity;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Checkbox
          Checkbox(
            value: isSelected,
            onChanged: item.cartItemId != null ? (_) => onToggle() : null,
            shape: const CircleBorder(),
            activeColor: theme.colorScheme.error,
          ),

          // Card
          Expanded(
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Thumbnail
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: item.imageUrl.isNotEmpty
                          ? Image.network(
                              item.imageUrl,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                              gaplessPlayback: true,
                              errorBuilder: (_, _, _) => _imageFallback(),
                            )
                          : _imageFallback(),
                    ),
                    const SizedBox(width: 12),

                    // Info + controls
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.variantName,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 2),

                          // Volume / type tags
                          Wrap(
                            spacing: 6,
                            children: [
                              if (item.volumeMl != null)
                                _Tag('${item.volumeMl} ml'),
                              if (item.type != null) _Tag(item.type!),
                              if (!item.isAvailable)
                                _Tag(
                                  'Hết hàng',
                                  color: Colors.red.shade100,
                                  textColor: Colors.red,
                                ),
                            ],
                          ),
                          const SizedBox(height: 4),

                          // Price
                          if (item.hasDiscount) ...[
                            Row(
                              children: [
                                Text(
                                  PriceFormatter.format(item.unitFinalPrice),
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    color: theme.colorScheme.error,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  PriceFormatter.format(item.variantPrice),
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey.shade400,
                                    decoration: TextDecoration.lineThrough,
                                    decorationColor: Colors.grey.shade400,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 4,
                                    vertical: 1,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red.shade50,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    '-${(item.subTotal > 0 ? (item.discount / item.subTotal * 100).round() : 0)}%',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.red.shade700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ] else
                            Text(
                              PriceFormatter.format(item.variantPrice),
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                          const SizedBox(height: 8),

                          // Divider
                          Divider(height: 1, color: Colors.grey.shade200),
                          const SizedBox(height: 8),

                          // Quantity + line total + delete
                          Row(
                            children: [
                              // Quantity controls
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _QtyButton(
                                      icon: Icons.remove,
                                      onTap: quantity <= 1
                                          ? null
                                          : () {
                                              onBeforeDecrease();
                                              notifier.updateItem(
                                                idToUse,
                                                quantity - 1,
                                              );
                                            },
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        '$quantity',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    _QtyButton(
                                      icon: Icons.add,
                                      onTap: () => notifier.updateItem(
                                        idToUse,
                                        quantity + 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),

                              // Line total
                              if (item.hasDiscount)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      PriceFormatter.format(item.finalTotal),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: theme.colorScheme.error,
                                      ),
                                    ),
                                    Text(
                                      PriceFormatter.format(item.subTotal),
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.grey.shade400,
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: Colors.grey.shade400,
                                      ),
                                    ),
                                  ],
                                )
                              else
                                Text(
                                  PriceFormatter.format(item.subTotal),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: theme.colorScheme.error,
                                  ),
                                ),
                              const SizedBox(width: 8),

                              // Delete
                              IconButton(
                                icon: Icon(
                                  Icons.delete_outline,
                                  color: Colors.red.shade400,
                                  size: 20,
                                ),
                                onPressed: onDelete,
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(
                                  minWidth: 32,
                                  minHeight: 32,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageFallback() => Container(
    width: 80,
    height: 80,
    color: Colors.grey.shade100,
    child: const Icon(Icons.image_not_supported, color: Colors.grey, size: 32),
  );
}

// ─── Bottom bar with totals ────────────────────────────────────────────────

class _CartBottomBar extends StatelessWidget {
  final AsyncValue<CartTotal> selectedTotalAsync;
  final CartTotal? computedTotal;
  final int selectedCount;
  final VoidCallback onCheckout;
  // Voucher
  final TextEditingController voucherController;
  final bool isApplyingVoucher;
  final String? appliedVoucherCode;
  final String? voucherError;
  final VoidCallback onApplyVoucher;
  final VoidCallback onRemoveVoucher;
  final VoidCallback onShowVoucherPicker;

  const _CartBottomBar({
    required this.selectedTotalAsync,
    this.computedTotal,
    required this.selectedCount,
    required this.onCheckout,
    required this.voucherController,
    required this.isApplyingVoucher,
    this.appliedVoucherCode,
    this.voucherError,
    required this.onApplyVoucher,
    required this.onRemoveVoucher,
    required this.onShowVoucherPicker,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // Use computedTotal (with voucher) if available, otherwise provider total
    final total = computedTotal ?? selectedTotalAsync.asData?.value;

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 12,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ── Voucher section ──
            _buildVoucherSection(context),
            const Divider(height: 16),

            // ── Totals ──
            if (total != null) ...[
              _TotalRow('Tạm tính', PriceFormatter.format(total.subtotal)),
              if (total.shippingFee > 0)
                _TotalRow(
                  'Phí vận chuyển',
                  PriceFormatter.format(total.shippingFee),
                ),
              if (total.discount > 0)
                _TotalRow(
                  'Giảm giá',
                  '- ${PriceFormatter.format(total.discount)}',
                  valueColor: Colors.green,
                ),
              const Divider(height: 16),
              _TotalRow(
                'Tổng',
                PriceFormatter.format(total.totalPrice),
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                valueColor: theme.colorScheme.error,
                valueFontSize: 18,
              ),
              const SizedBox(height: 12),
            ] else ...[
              selectedTotalAsync.when(
                loading: () => const LinearProgressIndicator(),
                error: (_, _) => const SizedBox.shrink(),
                data: (t) => Column(
                  children: [
                    _TotalRow('Tạm tính', PriceFormatter.format(t.subtotal)),
                    if (t.shippingFee > 0)
                      _TotalRow(
                        'Phí vận chuyển',
                        PriceFormatter.format(t.shippingFee),
                      ),
                    if (t.discount > 0)
                      _TotalRow(
                        'Giảm giá',
                        '- ${PriceFormatter.format(t.discount)}',
                        valueColor: Colors.green,
                      ),
                    const Divider(height: 16),
                    _TotalRow(
                      'Tổng',
                      PriceFormatter.format(t.totalPrice),
                      labelStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      valueColor: theme.colorScheme.error,
                      valueFontSize: 18,
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ],

            // ── Checkout button ──
            FilledButton(
              onPressed: selectedCount == 0 ? null : onCheckout,
              style: FilledButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: theme.colorScheme.error,
                foregroundColor: Colors.white,
                disabledBackgroundColor: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Thanh toán ($selectedCount)',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVoucherSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Input row
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 40,
                child: TextField(
                  controller: voucherController,
                  enabled: appliedVoucherCode == null && !isApplyingVoucher,
                  decoration: InputDecoration(
                    hintText: 'Mã giảm giá',
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    isDense: true,
                    errorText: voucherError,
                    errorMaxLines: 2,
                    errorStyle: const TextStyle(fontSize: 11),
                  ),
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ),
            if (appliedVoucherCode == null) ...[
              const SizedBox(width: 8),
              SizedBox(
                height: 40,
                child: FilledButton(
                  onPressed:
                      isApplyingVoucher || voucherController.text.trim().isEmpty
                      ? null
                      : onApplyVoucher,
                  child: isApplyingVoucher
                      ? const SizedBox(
                          width: 18,
                          height: 18,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Text('Áp dụng'),
                ),
              ),
            ],
          ],
        ),

        // Voucher picker button
        if (appliedVoucherCode == null) ...[
          const SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            height: 36,
            child: OutlinedButton.icon(
              onPressed: isApplyingVoucher ? null : onShowVoucherPicker,
              icon: const Icon(Icons.local_offer_outlined, size: 18),
              label: const Text('Chọn voucher'),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.primary,
                side: BorderSide(
                  color: AppColors.primary.withValues(alpha: 0.4),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],

        // Applied voucher badge
        if (appliedVoucherCode != null) ...[
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.green.shade700,
                  size: 18,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        appliedVoucherCode!,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.green.shade700,
                        ),
                      ),
                      if (computedTotal != null && computedTotal!.discount > 0)
                        Text(
                          '-${PriceFormatter.format(computedTotal!.discount)}',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.green.shade700,
                          ),
                        ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: isApplyingVoucher ? null : onRemoveVoucher,
                  child: Text(
                    'Xóa',
                    style: TextStyle(
                      color: Colors.red.shade600,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}

// ─── Small helpers ─────────────────────────────────────────────────────────

class _Tag extends StatelessWidget {
  final String label;
  final Color? color;
  final Color? textColor;

  const _Tag(this.label, {this.color, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color ?? Colors.grey.shade100,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          color: textColor ?? Colors.grey.shade700,
        ),
      ),
    );
  }
}

class _QtyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const _QtyButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final isDisabled = onTap == null;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isDisabled
                ? Colors.grey.shade200
                : Theme.of(context).colorScheme.outline,
          ),
        ),
        child: Icon(
          icon,
          size: 16,
          color: isDisabled ? Colors.grey.shade300 : null,
        ),
      ),
    );
  }
}

class _TotalRow extends StatelessWidget {
  final String label;
  final String value;
  final TextStyle? labelStyle;
  final Color? valueColor;
  final double? valueFontSize;

  const _TotalRow(
    this.label,
    this.value, {
    this.labelStyle,
    this.valueColor,
    this.valueFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style:
                labelStyle ?? const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: valueFontSize ?? 14,
              fontWeight: FontWeight.w600,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Voucher Picker Bottom Sheet (reused from checkout, matching React FE) ─

class _VoucherPickerSheet extends ConsumerWidget {
  final void Function(Voucher voucher) onSelect;
  const _VoucherPickerSheet({required this.onSelect});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncVouchers = ref.watch(myVouchersProvider);
    final fmt = NumberFormat('#,###', 'vi_VN');

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.65,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 4),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
            child: Row(
              children: [
                const Icon(Icons.local_offer, color: AppColors.primary),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                    'Chọn voucher',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close, size: 20),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Flexible(
            child: asyncVouchers.when(
              loading: () => const Center(
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: CircularProgressIndicator(),
                ),
              ),
              error: (e, _) => Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 40,
                      color: Colors.red.shade300,
                    ),
                    const SizedBox(height: 8),
                    const Text('Không thể tải voucher'),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () => ref.invalidate(myVouchersProvider),
                      child: const Text('Thử lại'),
                    ),
                  ],
                ),
              ),
              data: (vouchers) {
                final active = vouchers.where((v) => v.isActive).toList();
                if (active.isEmpty) {
                  return const Padding(
                    padding: EdgeInsets.all(32),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.sentiment_dissatisfied,
                          size: 48,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Bạn chưa có voucher nào',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                }
                return ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  itemCount: active.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 8),
                  itemBuilder: (_, i) {
                    final v = active[i];
                    return _VoucherPickerCard(
                      voucher: v,
                      fmt: fmt,
                      onTap: () => onSelect(v),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _VoucherPickerCard extends StatelessWidget {
  final Voucher voucher;
  final NumberFormat fmt;
  final VoidCallback onTap;

  const _VoucherPickerCard({
    required this.voucher,
    required this.fmt,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      elevation: 0.5,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                width: 72,
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.08),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.local_offer,
                      color: AppColors.primary,
                      size: 22,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      voucher.discountLabel,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        voucher.code,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: voucher.isMemberOnly
                                  ? AppColors.primaryLight
                                  : Colors.teal.withValues(alpha: 0.12),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              voucher.isMemberOnly ? 'Member' : 'Public',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: voucher.isMemberOnly
                                    ? AppColors.primaryDark
                                    : Colors.teal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      if ((voucher.minOrderValue ?? 0) > 0)
                        Text(
                          'Đơn tối thiểu: ${fmt.format(voucher.minOrderValue!)}đ',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      if (voucher.expiryDate != null) ...[
                        const SizedBox(height: 2),
                        Text(
                          'HSD: ${DateFormat('dd/MM/yyyy').format(voucher.expiryDate!)}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  'Dùng',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
