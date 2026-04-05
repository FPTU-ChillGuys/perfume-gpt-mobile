import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import '../../../../data/repositories/product_repository_impl.dart';
import '../providers/cart_providers.dart';
import '../../../../core/utils/price_formatter.dart';

class PosScreen extends ConsumerWidget {
  const PosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(posCartProvider);
    final total = ref.watch(cartTotalProvider);
    final skuController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile POS'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_sweep),
            tooltip: 'Clear Cart',
            onPressed: () => ref.read(posCartProvider.notifier).clearCart(),
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              ref.read(authProvider.notifier).logout();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: skuController,
                    decoration: const InputDecoration(
                      labelText: 'Scan or Enter SKU',
                      prefixIcon: Icon(Icons.qr_code_scanner),
                    ),
                    onSubmitted: (value) async {
                      final product = await ref
                          .read(productRepositoryProvider)
                          .getProductBySku(value);
                      if (product != null) {
                        ref.read(posCartProvider.notifier).addProduct(product);
                        skuController.clear();
                      } else {
                        if (context.mounted) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Product not found')),
                          );
                        }
                      }
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  onPressed: () async {
                    final product = await ref
                        .read(productRepositoryProvider)
                        .getProductBySku(skuController.text);
                    if (product != null) {
                      ref.read(posCartProvider.notifier).addProduct(product);
                      skuController.clear();
                    }
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: cart.isEmpty
                ? const Center(child: Text('Cart is empty'))
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final item = cart.values.elementAt(index);
                      return ListTile(
                        title: Text(item.product.name),
                        subtitle: Text(
                          'SKU: ${item.product.sku} | ${PriceFormatter.format(item.product.price)}',
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove_circle_outline),
                              onPressed: () => ref
                                  .read(posCartProvider.notifier)
                                  .updateQuantity(
                                    item.product.id,
                                    item.quantity - 1,
                                  ),
                            ),
                            Text('${item.quantity}'),
                            IconButton(
                              icon: const Icon(Icons.add_circle_outline),
                              onPressed: () => ref
                                  .read(posCartProvider.notifier)
                                  .updateQuantity(
                                    item.product.id,
                                    item.quantity + 1,
                                  ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total:',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      PriceFormatter.format(total),
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: cart.isEmpty
                        ? null
                        : () => _showCheckoutDialog(context, ref),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                    ),
                    child: const Text('PROCEED TO CHECKOUT'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showCheckoutDialog(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Checkout', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 24),
            ListTile(
              leading: const Icon(Icons.money),
              title: const Text('Cash'),
              onTap: () => _completeSale(context, ref, 'Cash'),
            ),
            ListTile(
              leading: const Icon(Icons.credit_card),
              title: const Text('Credit Card'),
              onTap: () => _completeSale(context, ref, 'Card'),
            ),
            ListTile(
              leading: const Icon(Icons.qr_code),
              title: const Text('E-Wallet (Momo/VNPay)'),
              onTap: () => _completeSale(context, ref, 'Wallet'),
            ),
          ],
        ),
      ),
    );
  }

  void _completeSale(BuildContext context, WidgetRef ref, String method) {
    // In a real app, this would call the repository to save the transaction
    ref.read(posCartProvider.notifier).clearCart();
    Navigator.pop(context); // Close sheet
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text('Sale completed with $method')));
  }
}
