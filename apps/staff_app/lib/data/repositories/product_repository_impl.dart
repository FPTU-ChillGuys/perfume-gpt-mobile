import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'dart:developer' as developer;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';

import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

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
            sku: item.variantSku,
            name: item.productName,
            description: '', // Not in stock response
            price: 0, // Not in stock response
            retailPrice: null,
            basePrice: null,
            discountedPrice: null,
            imageUrl: item.variantImageUrl,
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

    // Fetch detailed variant info for pricing
    double retailPrice = 0;
    double basePrice = 0;
    double? discountedPrice;

    if (item.variantId != null && item.variantId!.isNotEmpty) {
      try {
        final variantResponse = await _apiClient
            .getProductVariantsApi()
            .apiProductvariantsVariantIdGet(variantId: item.variantId!);
        final variantData = variantResponse.data?.payload;
        if (variantData != null) {
          retailPrice = (variantData.retailPrice ?? 0).toDouble();
          basePrice = (variantData.basePrice ?? 0).toDouble();
          discountedPrice = variantData.discountedPrice?.toDouble();
        }
      } catch (e, s) {
        // If the variant fetch fails, we proceed with 0 prices rather than crashing
        developer.log(
          'Failed to fetch variant details for ${item.variantId}',
          name: 'staff_app.repository',
          error: e,
          stackTrace: s,
        );
      }
    }

    return Product(
      id: item.id ?? '',
      variantId: item.variantId ?? '',
      batchId: item.id ?? '', // Using id from stock record as batchId
      sku: item.variantSku,
      name: item.productName,
      description: '',
      price: retailPrice > 0
          ? retailPrice
          : basePrice, // Prefer retail price, fallback to base
      retailPrice: retailPrice > 0 ? retailPrice : null,
      basePrice: basePrice > 0 ? basePrice : null,
      discountedPrice: discountedPrice,
      imageUrl: item.variantImageUrl,
      scentNotes: [],
      brand: '',
      rating: 0,
      reviewCount: 0,
      stockQuantity: item.availableQuantity ?? 0,
    );
  }

  @override
  Future<Product?> getProductForPos({String? barcode, String? sku}) async {
    try {
      final response = await _apiClient
          .getProductVariantsApi()
          .apiProductvariantsForPosGet(
            barcode: barcode,
            sku: sku,
          );
      final item = response.data?.payload;

      if (item == null) return null;

      final price = (item.basePrice ?? 0).toDouble();

      return Product(
        id: item.id ?? '', // Using variant ID as product ID for cart uniqueness
        variantId: item.id ?? '',
        batchId: '', // Will be assigned during checkout if needed
        sku: item.sku,
        name: item.displayName,
        description: '',
        price: price,
        retailPrice: price,
        basePrice: price,
        discountedPrice: null,
        imageUrl: item.primaryImageUrl ?? '',
        scentNotes: [],
        brand: '',
        rating: 0,
        reviewCount: 0,
        stockQuantity: 1, // Just a default, POS can override or handle stock limits during checkout
      );
    } catch (e, s) {
      developer.log(
        'Failed to fetch product for POS: barcode=$barcode, sku=$sku',
        name: 'staff_app.repository',
        error: e,
        stackTrace: s,
      );
      return null;
    }
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
