import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import '../providers/inventory_providers.dart';

class InventoryScreen extends ConsumerWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(filteredInventoryListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kho hàng'),
        actions: [
          IconButton(
            icon: const Icon(Icons.assignment_returned),
            tooltip: 'Nhận hàng',
            onPressed: () {
              context.push('/inventory/import-tickets');
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              ref.read(authProvider.notifier).logout();
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SearchBar(
              hintText: 'Tìm kiếm theo SKU, tên hoặc thương hiệu...',
              onChanged: (value) {
                ref
                    .read(inventorySearchQueryProvider.notifier)
                    .updateQuery(value);
              },
              leading: const Icon(Icons.search),
            ),
          ),
        ),
      ),
      body: productsAsync.when(
        data: (products) => ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text('SKU: ${product.sku} | ${product.brand}'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${product.stockQuantity}',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: product.stockQuantity < 10
                          ? Colors.red
                          : Colors.green,
                    ),
                  ),
                  const Text('in stock'),
                ],
              ),
              onTap: () => context.push('/inventory/${product.sku}'),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
