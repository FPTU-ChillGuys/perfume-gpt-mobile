import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/cart_provider.dart';
import '../../../../domain/entities/cart_item.dart';
import '../../../../core/utils/price_formatter.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartAsync = ref.watch(cartProvider);
    final cartTotalAsync = ref.watch(cartTotalProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        actions: [
          cartAsync.maybeWhen(
            data: (items) => items.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.delete_sweep_outlined),
                    tooltip: 'Clear cart',
                    onPressed: () async {
                      final confirm = await showDialog<bool>(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: const Text('Clear Cart'),
                          content: const Text(
                              'Remove all items from your cart?'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(ctx, false),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(ctx, true),
                              child: const Text(
                                'Clear',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      );
                      if (confirm == true) {
                        await ref.read(cartProvider.notifier).clearCart();
                      }
                    },
                  )
                : const SizedBox.shrink(),
            orElse: () => const SizedBox.shrink(),
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
              const Text('Failed to load cart'),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () => ref.invalidate(cartProvider),
                child: const Text('Retry'),
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
                  const Icon(
                    Icons.shopping_cart_outlined,
                    size: 100,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Your cart is empty',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => context.go('/store'),
                    child: const Text('Shop Now'),
                  ),
                ],
              ),
            );
          }
          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            itemCount: items.length,
            itemBuilder: (context, index) =>
                _CartItemCard(item: items[index]),
          );
        },
      ),
      bottomNavigationBar: cartAsync.maybeWhen(
        data: (items) => items.isEmpty
            ? null
            : _CartBottomBar(
                cartTotalAsync: cartTotalAsync,
                onCheckout: () => context.push('/checkout'),
              ),
        orElse: () => null,
      ),
    );
  }
}

// ─── Cart item card ────────────────────────────────────────────────────────

class _CartItemCard extends ConsumerWidget {
  final CartItem item;

  const _CartItemCard({required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final notifier = ref.read(cartProvider.notifier);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
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
                  // Name
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
                      if (item.type != null)
                        _Tag(item.type!),
                      if (!item.isAvailable)
                        _Tag('Unavailable',
                            color: Colors.red.shade100,
                            textColor: Colors.red),
                    ],
                  ),
                  const SizedBox(height: 6),

                  // Price row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        PriceFormatter.format(item.variantPrice),
                        style: theme.textTheme.bodySmall
                            ?.copyWith(color: Colors.grey),
                      ),
                      Text(
                        PriceFormatter.format(item.subTotal),
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),

                  // Quantity controls + remove
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          _QtyButton(
                            icon: Icons.remove,
                            onTap: () => notifier.updateItem(
                              item.cartItemId,
                              item.quantity - 1,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              '${item.quantity}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          _QtyButton(
                            icon: Icons.add,
                            onTap: () => notifier.updateItem(
                              item.cartItemId,
                              item.quantity + 1,
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () =>
                            notifier.removeItem(item.cartItemId),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.red,
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(48, 32),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text('Remove'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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
  final AsyncValue<dynamic> cartTotalAsync;
  final VoidCallback onCheckout;

  const _CartBottomBar({
    required this.cartTotalAsync,
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
            cartTotalAsync.when(
              loading: () =>
                  const LinearProgressIndicator(),
              error: (_, _) => const SizedBox.shrink(),
              data: (total) => Column(
                children: [
                  _TotalRow('Subtotal',
                      PriceFormatter.format(total.subtotal)),
                  if (total.shippingFee > 0)
                    _TotalRow('Shipping',
                        PriceFormatter.format(total.shippingFee)),
                  if (total.discount > 0)
                    _TotalRow(
                      'Discount',
                      '- ${PriceFormatter.format(total.discount)}',
                      valueColor: Colors.green,
                    ),
                  const Divider(height: 16),
                  _TotalRow(
                    'Total',
                    PriceFormatter.format(total.totalPrice),
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    valueColor: theme.colorScheme.primary,
                    valueFontSize: 18,
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),

            // Checkout button
            ElevatedButton(
              onPressed: onCheckout,
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: theme.colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text(
                'Proceed to Checkout',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
  final VoidCallback onTap;

  const _QtyButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: Theme.of(context).colorScheme.outline),
        ),
        child: Icon(icon, size: 16),
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
