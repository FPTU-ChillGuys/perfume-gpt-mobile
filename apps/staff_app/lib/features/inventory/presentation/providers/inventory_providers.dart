import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/product_repository_impl.dart';
import '../../../../domain/entities/product.dart';

part 'inventory_providers.g.dart';

@riverpod
Future<List<Product>> inventoryList(Ref ref) {
  return ref.watch(productRepositoryProvider).getProducts();
}

@riverpod
Future<List<BatchDetailResponse>> variantBatches(Ref ref, String variantId) {
  return ref.watch(productRepositoryProvider).getBatchesForVariant(variantId);
}

@riverpod
class InventorySearchQuery extends _$InventorySearchQuery {
  @override
  String build() => '';

  void updateQuery(String query) => state = query;
}

@riverpod
Future<List<Product>> filteredInventoryList(Ref ref) async {
  final products = await ref.watch(inventoryListProvider.future);
  final searchQuery = ref.watch(inventorySearchQueryProvider).toLowerCase();

  if (searchQuery.isEmpty) return products;

  return products.where((product) {
    return product.name.toLowerCase().contains(searchQuery) ||
        product.sku.toLowerCase().contains(searchQuery) ||
        product.brand.toLowerCase().contains(searchQuery);
  }).toList();
}
