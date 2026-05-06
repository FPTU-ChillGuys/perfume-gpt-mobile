import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../../../data/repositories/product_repository_impl.dart';
import '../../../../domain/entities/product.dart';
import '../providers/inventory_providers.dart';

class ProductDetailScreen extends ConsumerWidget {
  const ProductDetailScreen({required this.sku, super.key});

  final String sku;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productRepository = ref.watch(productRepositoryProvider);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Chi tiết sản phẩm'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Chi tiết'),
              Tab(text: 'Batches'),
            ],
          ),
        ),
        body: FutureBuilder(
          future: productRepository.getProductBySku(sku),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            final product = snapshot.data;
            if (product == null) {
              return const Center(child: Text('Sản phẩm không tồn tại'));
            }

            return TabBarView(
              children: [
                _ProductDetailsTab(product: product),
                _ProductBatchesTab(variantId: product.variantId),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _ProductDetailsTab extends ConsumerWidget {
  const _ProductDetailsTab({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: product.imageUrl.isNotEmpty
                ? Image.network(product.imageUrl, height: 200)
                : const Icon(Icons.image_not_supported, size: 120),
          ),
          const SizedBox(height: 16),
          Text(product.name, style: Theme.of(context).textTheme.headlineMedium),
          Text(
            'SKU: ${product.sku}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Divider(),
          Text(
            'Stock Quantity:',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              '${product.stockQuantity}',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: product.stockQuantity < 10 ? Colors.red : Colors.green,
              ),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () => _showAdjustmentDialog(
              context,
              ref,
              product.variantId,
              product.batchId,
            ),
            icon: const Icon(Icons.edit),
            label: const Text('Điều chỉnh kho hàng'),
          ),
        ],
      ),
    );
  }

  void _showAdjustmentDialog(
    BuildContext context,
    WidgetRef ref,
    String variantId,
    String batchId,
  ) {
    final controller = TextEditingController();
    String reason = 'Restock';

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Điều chỉnh kho hàng'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Số lượng thay đổi (+/-)',
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
                  .updateStock(variantId, batchId, change, reason);
              ref.invalidate(inventoryListProvider);
              if (context.mounted) Navigator.pop(context);
            },
            child: const Text('Lưu'),
          ),
        ],
      ),
    );
  }
}

class _ProductBatchesTab extends ConsumerWidget {
  const _ProductBatchesTab({required this.variantId});

  final String variantId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final batchesAsync = ref.watch(variantBatchesProvider(variantId));

    return batchesAsync.when(
      data: (batches) {
        if (batches.isEmpty) {
          return const Center(child: Text('Không có batch nào tồn tại...'));
        }
        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: batches.length,
          itemBuilder: (context, index) {
            return BatchDetailCard(batch: batches[index]);
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
    );
  }
}

class BatchDetailCard extends StatelessWidget {
  const BatchDetailCard({required this.batch, super.key});

  final BatchDetailResponse batch;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateFormat = DateFormat('yyyy-MM-dd');

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    'Batch: ${batch.batchCode}',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (batch.isExpired == true)
                  const Badge(
                    label: Text('EXPIRED'),
                    backgroundColor: Colors.red,
                  )
                else if (batch.daysUntilExpiry != null &&
                    batch.daysUntilExpiry! <= 30)
                  Badge(
                    label: Text('GẦN HẾT HẠN (${batch.daysUntilExpiry} ngày)'),
                    backgroundColor: Colors.orange,
                  ),
              ],
            ),
            const Divider(),
            _buildInfoRow(
              context,
              'Số lượng còn lại',
              '${batch.remainingQuantity} / ${batch.importQuantity}',
            ),
            _buildInfoRow(
              context,
              'Ngày sản xuất',
              batch.manufactureDate != null
                  ? dateFormat.format(batch.manufactureDate!)
                  : 'N/A',
            ),
            _buildInfoRow(
              context,
              'Ngày hết hạn',
              batch.expiryDate != null
                  ? dateFormat.format(batch.expiryDate!)
                  : 'N/A',
            ),
            _buildInfoRow(
              context,
              'Ngày nhập kho',
              batch.createdAt != null
                  ? dateFormat.format(batch.createdAt!)
                  : 'N/A',
            ),
            _buildInfoRow(context, 'Volume', '${batch.volumeMl ?? 'N/A'} ml'),
            _buildInfoRow(context, 'Concentration', batch.concentrationName),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: Theme.of(context).textTheme.bodyMedium),
          Flexible(
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.end,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
