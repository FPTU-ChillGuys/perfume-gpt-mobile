import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/cart_provider.dart';
import '../../../../domain/entities/cart_item.dart';
import '../../../../domain/entities/cart_total.dart';
import '../../../../core/utils/price_formatter.dart';

class CartPage extends ConsumerStatefulWidget {
  const CartPage({super.key});

  @override
  ConsumerState<CartPage> createState() => _CartPageState();
}

class _CartPageState extends ConsumerState<CartPage> {
  bool _hasInitializedSelection = false;
  bool _isClearing = false;

  Set<String> _getSelectableItemIds(List<CartItem> items) {
    return items
        .map((e) => e.cartItemId ?? '')
        .where((id) => id.isNotEmpty)
        .toSet();
  }

  void _handleToggleItem(String? cartItemId) {
    if (cartItemId == null || cartItemId.isEmpty) return;
    ref.read(selectedCartItemIdsProvider.notifier).toggle(cartItemId);
  }

  void _handleToggleSelectAll(bool checked, Set<String> allIds) {
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
      await ref.read(cartProvider.notifier).removeItem(cartItemId);
    }
  }

  Future<void> _confirmClearCart() async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Xóa toàn bộ giỏ hàng'),
        content: const Text(
            'Toàn bộ sản phẩm trong giỏ hàng sẽ bị xóa. Bạn có chắc chắn không?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Hủy'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child:
                const Text('Xóa hết', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
    if (confirm == true) {
      setState(() => _isClearing = true);
      try {
        await ref.read(cartProvider.notifier).clearCart();
        ref.read(selectedCartItemIdsProvider.notifier).clear();
        _hasInitializedSelection = false;
      } finally {
        if (mounted) setState(() => _isClearing = false);
      }
    }
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
                  Icon(Icons.shopping_cart_outlined,
                      size: 80, color: Colors.grey.shade400),
                  const SizedBox(height: 16),
                  Text('Giỏ hàng đang trống',
                      style: TextStyle(
                          fontSize: 18, color: Colors.grey.shade600)),
                  const SizedBox(height: 8),
                  Text('Khám phá các sản phẩm mới của chúng tôi.',
                      style: TextStyle(
                          fontSize: 14, color: Colors.grey.shade500)),
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
          final isIndeterminate = selectedIds.isNotEmpty &&
              !isAllSelected &&
              selectedIds.intersection(allIds).isNotEmpty;

          return Column(
            children: [
              // Select all row
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                    const Text('Chọn tất cả',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    const Spacer(),
                    Text(
                      'Đã chọn ${selectedIds.intersection(allIds).length}/${allIds.length}',
                      style: TextStyle(
                          fontSize: 13, color: Colors.grey.shade600),
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
                    final isSelected = item.cartItemId != null &&
                        selectedIds.contains(item.cartItemId);
                    return _CartItemCard(
                      item: item,
                      isSelected: isSelected,
                      onToggle: () => _handleToggleItem(item.cartItemId),
                      onDelete: () => _confirmDeleteItem(item),
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
              selectedCount: selectedIds.intersection(
                  _getSelectableItemIds(items)).length,
              onCheckout: () => context.push('/checkout'),
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

  const _CartItemCard({
    required this.item,
    required this.isSelected,
    required this.onToggle,
    required this.onDelete,
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
                            style: theme.textTheme.bodyMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
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
                                _Tag('Hết hàng',
                                    color: Colors.red.shade100,
                                    textColor: Colors.red),
                            ],
                          ),
                          const SizedBox(height: 4),

                          // Price
                          Text(
                            PriceFormatter.format(item.variantPrice),
                            style: theme.textTheme.bodySmall
                                ?.copyWith(color: Colors.grey),
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
                                      color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _QtyButton(
                                      icon: Icons.remove,
                                      onTap: quantity <= 1
                                          ? null
                                          : () => notifier.updateItem(
                                              idToUse, quantity - 1),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        '$quantity',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    _QtyButton(
                                      icon: Icons.add,
                                      onTap: () => notifier.updateItem(
                                          idToUse, quantity + 1),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),

                              // Line total
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
                                icon: Icon(Icons.delete_outline,
                                    color: Colors.red.shade400, size: 20),
                                onPressed: onDelete,
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(
                                    minWidth: 32, minHeight: 32),
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
        child: const Icon(Icons.image_not_supported,
            color: Colors.grey, size: 32),
      );
}

// ─── Bottom bar with totals ────────────────────────────────────────────────

class _CartBottomBar extends StatelessWidget {
  final AsyncValue<CartTotal> selectedTotalAsync;
  final int selectedCount;
  final VoidCallback onCheckout;

  const _CartBottomBar({
    required this.selectedTotalAsync,
    required this.selectedCount,
    required this.onCheckout,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
            // Totals
            selectedTotalAsync.when(
              loading: () => const LinearProgressIndicator(),
              error: (_, _) => const SizedBox.shrink(),
              data: (total) => Column(
                children: [
                  _TotalRow('Tạm tính',
                      PriceFormatter.format(total.subtotal)),
                  if (total.shippingFee > 0)
                    _TotalRow('Phí vận chuyển',
                        PriceFormatter.format(total.shippingFee)),
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
                        fontSize: 16, fontWeight: FontWeight.bold),
                    valueColor: theme.colorScheme.error,
                    valueFontSize: 18,
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),

            // Checkout button
            FilledButton(
              onPressed: selectedCount == 0 ? null : onCheckout,
              style: FilledButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: theme.colorScheme.error,
                foregroundColor: Colors.white,
                disabledBackgroundColor: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              child: Text(
                'Thanh toán ($selectedCount)',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
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
                  : Theme.of(context).colorScheme.outline),
        ),
        child: Icon(icon, size: 16,
            color: isDisabled ? Colors.grey.shade300 : null),
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
          Text(label,
              style: labelStyle ??
                  const TextStyle(fontSize: 14, color: Colors.grey)),
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
