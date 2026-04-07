import 'dart:math';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../core/utils/image_url_helper.dart';
import '../../domain/entities/paged_result.dart';
import '../../domain/entities/product.dart';
import '../../domain/entities/product_variant.dart';
import '../../domain/entities/product_scent_note.dart';
import '../../domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductsApi _api;

  ProductRepositoryImpl(this._api);

  @override
  Future<List<Product>> getProducts({String? query}) async {
    if (query != null && query.isNotEmpty) {
      return semanticSearch(query);
    }

    final response = await _api.apiProductsGet();
    final items = response.data?.payload?.items ?? [];
    return items.map(_mapListItemToProduct).toList();
  }

  @override
  Future<Product> getProductById(String id) async {
    final response = await _api.apiProductsProductIdGet(productId: id);
    final product = response.data?.payload;
    if (product == null) throw Exception('Product not found');

    final variants = product.variants.map(_mapVariant).toList();
    final variantPrices = variants.map((v) => v.basePrice).toList();
    final minP = variantPrices.isNotEmpty ? variantPrices.reduce(min) : 0.0;
    final maxP = variantPrices.isNotEmpty ? variantPrices.reduce(max) : 0.0;

    final imageUrls = product.media.map((m) => ImageUrlHelper.resolve(m.url)).toList();
    final primaryImage = product.media
        .where((m) => m.isPrimary == true)
        .map((m) => ImageUrlHelper.resolve(m.url))
        .firstOrNull ?? imageUrls.firstOrNull ?? '';

    final scentNoteDetails = product.scentNotes
        .map((n) => ProductScentNote(
              noteId: n.noteId,
              name: n.name,
              type: n.type?.value ?? 'Top',
            ))
        .toList();

    return Product(
      id: product.id ?? '',
      name: product.name ?? '',
      description: product.description ?? '',
      price: minP,
      minPrice: minP > 0 ? minP : null,
      maxPrice: maxP > 0 ? maxP : null,
      variantPrices: variantPrices,
      imageUrl: primaryImage,
      imageUrls: imageUrls,
      scentNotes: scentNoteDetails.map((n) => n.name).toList(),
      scentNoteDetails: scentNoteDetails,
      brand: product.brandName,
      rating: 0,
      reviewCount: 0,
      gender: product.gender?.value,
      categoryName: product.categoryName,
      origin: product.origin,
      releaseYear: product.releaseYear,
      variants: variants,
    );
  }

  @override
  Future<List<Product>> semanticSearch(String query) async {
    final response = await _api.apiProductsSearchSemanticGet(searchText: query);
    final items = response.data?.payload?.items ?? [];
    return items.map(_mapListItemWithVariantsToProduct).toList();
  }

  @override
  Future<List<Product>> getBestSellers() async {
    final response = await _api.apiProductsBestSellersGet();
    final items = response.data?.payload?.items ?? [];
    return items.map(_mapListItemToProduct).toList();
  }

  @override
  Future<List<Product>> getNewArrivals() async {
    final response = await _api.apiProductsNewArrivalsGet();
    final items = response.data?.payload?.items ?? [];
    return items.map(_mapListItemToProduct).toList();
  }

  ProductVariant _mapVariant(ProductVariantResponse v) {
    final imageUrls = v.media.map((m) => ImageUrlHelper.resolve(m.url)).toList();
    final primaryImage = v.media
        .where((m) => m.isPrimary == true)
        .map((m) => ImageUrlHelper.resolve(m.url))
        .firstOrNull ?? imageUrls.firstOrNull;

    return ProductVariant(
      id: v.id ?? '',
      sku: v.sku,
      barcode: v.barcode,
      volumeMl: v.volumeMl,
      concentrationName: v.concentrationName,
      type: v.type?.value ?? 'Standard',
      basePrice: (v.basePrice ?? 0).toDouble(),
      retailPrice: v.retailPrice?.toDouble(),
      discountedPrice: v.discountedPrice?.toDouble(),
      status: v.status?.value ?? 'Active',
      stockQuantity: v.stockQuantity ?? 0,
      sillage: v.sillage,
      longevity: v.longevity,
      imageUrls: imageUrls,
      primaryImageUrl: primaryImage,
    );
  }

  Product _mapListItemToProduct(ProductListItem item) {
    List<double> variantPrices = [];
    if (item.variantPrices.isNotEmpty) {
      variantPrices = item.variantPrices.map((p) => p.toDouble()).toList();
    }
    final minP = variantPrices.isNotEmpty ? variantPrices.reduce(min) : 0.0;
    final maxP = variantPrices.isNotEmpty ? variantPrices.reduce(max) : 0.0;

    return Product(
      id: item.id ?? '',
      name: item.name ?? '',
      description: item.description ?? '',
      price: minP,
      minPrice: minP > 0 ? minP : null,
      maxPrice: maxP > 0 ? maxP : null,
      variantPrices: variantPrices,
      imageUrl: ImageUrlHelper.resolve(item.primaryImage?.url ?? ''),
      scentNotes: item.tags ?? [],
      brand: item.brandName,
      rating: 0,
      reviewCount: 0,
      brandId: item.brandId,
      categoryId: item.categoryId,
      categoryName: item.categoryName,
    );
  }

  Product _mapListItemWithVariantsToProduct(ProductListItemWithVariants item) {
    List<double> variantPrices = [];
    if (item.variantPrices.isNotEmpty) {
      variantPrices = item.variantPrices.map((p) => p.toDouble()).toList();
    }
    final minP = variantPrices.isNotEmpty ? variantPrices.reduce(min) : 0.0;
    final maxP = variantPrices.isNotEmpty ? variantPrices.reduce(max) : 0.0;

    return Product(
      id: item.id ?? '',
      name: item.name ?? '',
      description: item.description ?? '',
      price: minP,
      minPrice: minP > 0 ? minP : null,
      maxPrice: maxP > 0 ? maxP : null,
      variantPrices: variantPrices,
      imageUrl: ImageUrlHelper.resolve(item.primaryImage?.url ?? ''),
      scentNotes: item.tags ?? [],
      brand: item.brandName,
      rating: 0,
      reviewCount: 0,
      brandId: item.brandId,
      categoryId: item.categoryId,
      categoryName: item.categoryName,
    );
  }

  @override
  Future<PagedResult<Product>> getProductsPaged({
    int pageNumber = 1,
    int pageSize = 12,
    int? brandId,
    int? categoryId,
    int? volume,
    num? fromPrice,
    num? toPrice,
    String? sortBy,
    bool? isDescending,
  }) async {
    final response = await _api.apiProductsGet(
      pageNumber: pageNumber,
      pageSize: pageSize,
      brandId: brandId,
      categoryId: categoryId,
      volume: volume,
      fromPrice: fromPrice,
      toPrice: toPrice,
      sortBy: sortBy,
      isDescending: isDescending,
    );
    final payload = response.data?.payload;
    final items = payload?.items ?? [];
    return PagedResult(
      items: items.map(_mapListItemToProduct).toList(),
      totalCount: payload?.totalCount ?? 0,
      totalPages: payload?.totalPages ?? 0,
      hasNextPage: payload?.hasNextPage ?? false,
    );
  }

  @override
  Future<PagedResult<Product>> searchProductsPaged({
    required String query,
    int pageNumber = 1,
    int pageSize = 12,
    int? brandId,
    int? categoryId,
    int? volume,
    num? fromPrice,
    num? toPrice,
    String? sortBy,
    bool? isDescending,
  }) async {
    final response = await _api.apiProductsSearchSemanticGet(
      searchText: query,
      pageNumber: pageNumber,
      pageSize: pageSize,
      brandId: brandId,
      categoryId: categoryId,
      volume: volume,
      fromPrice: fromPrice,
      toPrice: toPrice,
      sortBy: sortBy,
      isDescending: isDescending,
    );
    final payload = response.data?.payload;
    final items = payload?.items ?? [];
    return PagedResult(
      items: items.map(_mapListItemWithVariantsToProduct).toList(),
      totalCount: payload?.totalCount ?? 0,
      totalPages: payload?.totalPages ?? 0,
      hasNextPage: payload?.hasNextPage ?? false,
    );
  }
}
