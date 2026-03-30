import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';

import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../core/providers/api_client_provider.dart';

part 'product_repository_impl.g.dart';

class ProductRepositoryImpl implements ProductRepository {
  final PerfumegptApiClient _apiClient;

  ProductRepositoryImpl(this._apiClient);

  @override
  Future<List<Product>> getProducts() async {
    final response = await _apiClient.getInventoryApi().apiInventoryStockGet();
    final items = response.data?.payload?.items ?? [];

    return items
        .map(
          (item) => Product(
            id: item.id ?? '',
            variantId: item.variantId ?? '',
            batchId: item.id ?? '', // Using id from stock record as batchId
            sku: item.variantSku ?? '',
            name: item.productName ?? '',
            description: '', // Not in stock response
            price: 0, // Not in stock response
            imageUrl: item.variantImageUrl ?? '',
            scentNotes: [], // Not in stock response
            brand: '',
            rating: 0,
            reviewCount: 0,
            stockQuantity: item.availableQuantity ?? 0,
          ),
        )
        .toList();
  }

  @override
  Future<Product?> getProductBySku(String sku) async {
    final response = await _apiClient.getInventoryApi().apiInventoryStockGet(
          SKU: sku,
        );
    final items = response.data?.payload?.items ?? [];

    if (items.isEmpty) return null;

    final item = items.first;
    return Product(
      id: item.id ?? '',
      variantId: item.variantId ?? '',
      batchId: item.id ?? '', // Using id from stock record as batchId
      sku: item.variantSku ?? sku,
      name: item.productName ?? '',
      description: '',
      price: 0,
      imageUrl: item.variantImageUrl ?? '',
      scentNotes: [],
      brand: '',
      rating: 0,
      reviewCount: 0,
      stockQuantity: item.availableQuantity ?? 0,
    );
  }

  @override
  Future<void> updateStock(
    String variantId,
    String batchId,
    int quantityChange,
    String reason,
  ) async {
    final adjustReason = quantityChange > 0
        ? StockAdjustmentReason.found
        : StockAdjustmentReason.loss;

    final request = CreateStockAdjustmentRequest(
      adjustmentDate: DateTime.now(),
      reason: adjustReason,
      note: reason,
      adjustmentDetails: [
        CreateStockAdjustmentDetailRequest(
          variantId: variantId,
          batchId: batchId,
          adjustmentQuantity: quantityChange.abs(),
          note: reason,
        ),
      ],
    );

    await _apiClient.getStockAdjustmentsApi().apiStockadjustmentsPost(
          createStockAdjustmentRequest: request,
        );
  }
}

@riverpod
ProductRepository productRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return ProductRepositoryImpl(apiClient);
}
