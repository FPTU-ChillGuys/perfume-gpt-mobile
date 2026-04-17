import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import '../../../../data/repositories/product_repository_impl.dart';
import '../providers/cart_providers.dart';
import '../../../../core/utils/price_formatter.dart';
import 'scanner_screen.dart';
import '../../data/services/pos_signalr_service.dart';

class PosScreen extends ConsumerWidget {
  const PosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch cart sync to push to SignalR
    ref.watch(posCartSyncLegacyProvider);

    final cart = ref.watch(posCartProvider);
    final total = ref.watch(cartTotalProvider);
    final skuController = TextEditingController();

    final sessionId = ref.watch(posSignalRServiceProvider).currentSessionId;

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
          if (sessionId != null) ...[
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(16).copyWith(bottom: 0),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.cast, color: Colors.blue, size: 20),
                  const SizedBox(width: 8),
                  Flexible(
                    child: SelectableText(
                      'Session ID: $sessionId',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: skuController,
                    decoration: InputDecoration(
                      labelText: 'Scan or Enter SKU',
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.qr_code_scanner),
                        onPressed: () async {
                          final scannedSku = await Navigator.push<String>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScannerScreen(),
                            ),
                          );

                          if (scannedSku != null && context.mounted) {
                            final product = await ref
                                .read(productRepositoryProvider)
                                .getProductForPos(barcode: scannedSku);
                            if (product != null) {
                              ref
                                  .read(posCartProvider.notifier)
                                  .addProduct(product);
                            } else {
                              if (context.mounted) {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    title: const Text('Error'),
                                    content: Text(
                                      'Product with SKU "$scannedSku" not found.',
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            }
                          }
                        },
                      ),
                    ),
                    onSubmitted: (value) async {
                      final product = await ref
                          .read(productRepositoryProvider)
                          .getProductForPos(sku: value);
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
                        .getProductForPos(sku: skuController.text);
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
                            SizedBox(
                              width: 32,
                              height: 32,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.remove_circle_outline,
                                  size: 20,
                                ),
                                padding: EdgeInsets.zero,
                                onPressed: () => ref
                                    .read(posCartProvider.notifier)
                                    .updateQuantity(
                                      item.product.id,
                                      item.quantity - 1,
                                    ),
                              ),
                            ),
                            SizedBox(
                              width: 24,
                              child: Center(child: Text('${item.quantity}')),
                            ),
                            SizedBox(
                              width: 32,
                              height: 32,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.add_circle_outline,
                                  size: 20,
                                ),
                                padding: EdgeInsets.zero,
                                onPressed: () => ref
                                    .read(posCartProvider.notifier)
                                    .updateQuantity(
                                      item.product.id,
                                      item.quantity + 1,
                                    ),
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
