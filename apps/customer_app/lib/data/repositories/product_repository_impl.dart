import 'dart:math';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart' as ai;
import '../../core/utils/image_url_helper.dart';
import '../../domain/entities/paged_result.dart';
import '../../domain/entities/product.dart';
import '../../domain/entities/product_information.dart';
import '../../domain/entities/product_variant.dart';
import '../../domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductsApi _api;
  final ai.ProductsApi _aiApi;

  ProductRepositoryImpl(this._api, this._aiApi);

  @override
  Future<List<Product>> getProducts({String? query}) async {
    // Standard API doesn't support query directly, but we can use AI search if query is provided
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

    // Retail prices (giá niêm yết)
    final retailPrices = variants
        .where((v) => v.retailPrice != null && v.retailPrice! > 0)
        .map((v) => v.retailPrice!)
        .toList();
    final minRetail = retailPrices.isNotEmpty ? retailPrices.reduce(min) : null;

    // Discounted prices (giá sau campaign voucher)
    final discountedPrices = variants
        .where((v) => v.discountedPrice != null && v.discountedPrice! > 0)
        .map((v) => v.discountedPrice!)
        .toList();
    final minDiscounted = discountedPrices.isNotEmpty
        ? discountedPrices.reduce(min)
        : null;

    // Campaign name from the first variant that has one
    final campaignName = variants
        .where((v) => v.campaignName != null)
        .map((v) => v.campaignName!)
        .firstOrNull;

    final imageUrls = product.media
        .map((m) => ImageUrlHelper.resolve(m.url))
        .toList();
    final primaryImage =
        product.media
            .where((m) => m.isPrimary == true)
            .map((m) => ImageUrlHelper.resolve(m.url))
            .firstOrNull ??
        imageUrls.firstOrNull ??
        '';

    return Product(
      id: product.id ?? '',
      name: product.name ?? '',
      description: product.description ?? '',
      price: minP,
      minPrice: minP > 0 ? minP : null,
      maxPrice: maxP > 0 ? maxP : null,
      minRetailPrice: minRetail,
      minDiscountedPrice: minDiscounted,
      campaignName: campaignName,
      variantPrices: variantPrices,
      imageUrl: primaryImage,
      imageUrls: imageUrls,
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

  @override
  Future<ProductInformation> getProductInformation(String id) async {
    final response = await _api.apiProductsProductIdInformationGet(
      productId: id,
    );
    final info = response.data?.payload;
    if (info == null) throw Exception('Product information not found');

    return ProductInformation(
      productCode: info.productCode,
      brandName: info.brandName,
      origin: info.origin,
      releaseYear: info.releaseYear,
      gender: info.gender?.value,
      scentGroup: info.scentGroup,
      style: info.style,
      topNotes: info.topNotes,
      heartNotes: info.heartNotes,
      baseNotes: info.baseNotes,
      description: info.description,
    );
  }

  @override
  Future<ProductRating> getProductRating(String id) async {
    final response = await _api.apiProductsProductIdFastLookGet(productId: id);
    final data = response.data?.payload;
    return (
      rating: (data?.rating ?? 0).toDouble(),
      reviewCount: data?.reviewCount ?? 0,
    );
  }

  @override
  Future<List<Product>> semanticSearch(String query) async {
    final response = await _aiApi.productControllerGetProductsByHybridSearch(
      searchText: query,
    );
    final dynamic payload = response.data?.payload;
    final List itemsJson = payload?['items'] as List? ?? [];
    final items = itemsJson
        .map((e) => ProductListItemWithVariants.fromJson(e as Map<String, dynamic>))
        .toList();
    return items.map(_mapListItemWithVariantsToProduct).toList();
  }

  @override
  Future<PagedResult<Product>> searchProductsPaged({
    required String query,
    int pageNumber = 1,
    int pageSize = 12,
  }) async {
    final response = await _aiApi.productControllerGetProductsByHybridSearch(
      searchText: query,
      pageNumber: pageNumber,
      pageSize: pageSize,
    );
    final dynamic payload = response.data?.payload;
    final List itemsJson = payload?['items'] as List? ?? [];
    final items = itemsJson
        .map((e) => ProductListItemWithVariants.fromJson(e as Map<String, dynamic>))
        .toList();
    
    return PagedResult(
      items: items.map(_mapListItemWithVariantsToProduct).toList(),
      totalCount: payload?['totalCount'] ?? 0,
      totalPages: payload?['totalPages'] ?? 0,
      hasNextPage: (payload?['pageNumber'] ?? 1) < (payload?['totalPages'] ?? 0),
    );
  }

  ProductVariant _mapVariant(PublicProductVariantResponse v) {
    final imageUrls = v.media
        .map((m) => ImageUrlHelper.resolve(m.url))
        .toList();
    final primaryImage =
        v.media
            .where((m) => m.isPrimary == true)
            .map((m) => ImageUrlHelper.resolve(m.url))
            .firstOrNull ??
        imageUrls.firstOrNull;

    return ProductVariant(
      id: v.id ?? '',
      sku: v.sku,
      barcode: '',
      volumeMl: v.volumeMl,
      concentrationName: v.concentrationName,
      type: v.type?.value ?? 'Standard',
      basePrice: (v.basePrice ?? 0).toDouble(),
      retailPrice: v.retailPrice?.toDouble(),
      discountedPrice: v.discountedPrice?.toDouble(),
      status: 'Active',
      stockQuantity: v.stockQuantity ?? 0,
      sillage: null,
      longevity: null,
      imageUrls: imageUrls,
      primaryImageUrl: primaryImage,
      campaignName: v.campaignName,
      voucherCode: v.voucherCode,
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

  Product _mapListItemWithVariantsToProduct(
    ProductListItemWithVariants item,
  ) {
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
      variants: item.variants
          .map(
            (v) => ProductVariant(
              id: v.id ?? '',
              sku: '',
              barcode: '',
              volumeMl: 0,
              concentrationName: v.concentrationName,
              type: 'Standard',
              basePrice: 0,
              status: 'Active',
              stockQuantity: 0,
              imageUrls: [],
            ),
          )
          .toList(),
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
  Future<List<String>> getCampaignProductIds(String campaignId) async {
    final response = await _api.apiProductsCampaignsCampaignIdGet(
      campaignId: campaignId,
      pageSize: 10,
    );
    final items = response.data?.payload?.items ?? [];
    return items
        .where((item) => item.id != null)
        .map((item) => item.id!)
        .toList();
  }
}

typedef ProductRating = ({double rating, int reviewCount});
