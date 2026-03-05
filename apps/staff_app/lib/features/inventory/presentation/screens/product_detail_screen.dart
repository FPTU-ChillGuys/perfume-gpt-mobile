import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../data/repositories/product_repository_impl.dart';
import '../providers/inventory_providers.dart';

class ProductDetailScreen extends ConsumerWidget {
  const ProductDetailScreen({required this.sku, super.key});

  final String sku;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productRepository = ref.watch(productRepositoryProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Product Details')),
      body: FutureBuilder(
        future: productRepository.getProductBySku(sku),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final product = snapshot.data;
          if (product == null) {
            return const Center(child: Text('Product not found'));
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.network(product.imageUrl, height: 200)),
                const SizedBox(height: 16),
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'SKU: ${product.sku}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Divider(),
                Text(
                  'Stock Quantity:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  '${product.stockQuantity}',
                  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: product.stockQuantity < 10
                        ? Colors.red
                        : Colors.green,
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () =>
                      _showAdjustmentDialog(context, ref, product.id),
                  icon: const Icon(Icons.edit),
                  label: const Text('Adjust Stock'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showAdjustmentDialog(
    BuildContext context,
    WidgetRef ref,
    String productId,
  ) {
    final controller = TextEditingController();
    String reason = 'Restock';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Adjust Stock'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Quantity Change (+/-)',
              ),
              keyboardType: TextInputType.number,
            ),
            DropdownButtonFormField<String>(
              initialValue: reason,
              items: const [
                DropdownMenuItem(value: 'Restock', child: Text('Restock')),
                DropdownMenuItem(value: 'Damage', child: Text('Damage')),
                DropdownMenuItem(value: 'Return', child: Text('Return')),
              ],
              onChanged: (val) => reason = val!,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              final change = int.tryParse(controller.text) ?? 0;
              await ref
                  .read(productRepositoryProvider)
                  .updateStock(productId, change, reason);
              ref.invalidate(inventoryListProvider);
              if (context.mounted) Navigator.pop(context);
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }
}
