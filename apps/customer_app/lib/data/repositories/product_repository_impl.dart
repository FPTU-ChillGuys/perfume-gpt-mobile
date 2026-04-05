import 'dart:math';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/product.dart';
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

    double minP = 0;
    double maxP = 0;
    List<double> variantPrices = [];
    List<ProductVariant> variants = [];

    if (product.variants.isNotEmpty) {
      variantPrices = product.variants
          .map((v) => (v.basePrice ?? 0).toDouble())
          .toList();
      minP = variantPrices.reduce(min);
      maxP = variantPrices.reduce(max);
      variants = product.variants.map((v) => ProductVariant(
        id: v.id ?? '',
        name: v.concentrationName,
        price: (v.basePrice ?? 0).toDouble(),
      )).toList();
    }

    return Product(
      id: product.id ?? '',
      name: product.name ?? '',
      description: product.description ?? '',
      price: minP,
      minPrice: minP > 0 ? minP : null,
      maxPrice: maxP > 0 ? maxP : null,
      variantPrices: variantPrices,
      variants: variants,
      imageUrl: product.media.firstOrNull?.url ?? '',
      scentNotes:
          product.attributes.map((a) => a.attribute).toList(),
      brand: product.brandName,
      rating: 0,
      reviewCount: 0,
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

  Product _mapListItemToProduct(ProductListItem item) {
    double minP = 0;
    double maxP = 0;
    List<double> variantPrices = [];
    if (item.variantPrices.isNotEmpty) {
      variantPrices = item.variantPrices.map((p) => p.toDouble()).toList();
      minP = variantPrices.reduce(min);
      maxP = variantPrices.reduce(max);
    }

    return Product(
      id: item.id ?? '',
      name: item.name ?? '',
      description: item.description ?? '',
      price: minP,
      minPrice: minP > 0 ? minP : null,
      maxPrice: maxP > 0 ? maxP : null,
      variantPrices: variantPrices,
      imageUrl: item.primaryImage?.url ?? '',
      scentNotes: item.tags ?? [],
      brand: item.brandName,
      rating: 0,
      reviewCount: 0,
    );
  }

  Product _mapListItemWithVariantsToProduct(ProductListItemWithVariants item) {
    double minP = 0;
    double maxP = 0;
    List<double> variantPrices = [];
    List<ProductVariant> variants = [];
    
    if (item.variantPrices.isNotEmpty) {
      variantPrices = item.variantPrices.map((v) => v.toDouble()).toList();
      minP = variantPrices.reduce(min);
      maxP = variantPrices.reduce(max);
      
      // Pair VariantSummaryItem with corresponding price from variantPrices list
      for (int i = 0; i < item.variants.length; i++) {
          final v = item.variants[i];
          final price = i < variantPrices.length ? variantPrices[i] : 0.0;
          variants.add(ProductVariant(
            id: v.id ?? '',
            name: v.displayName,
            price: price,
          ));
      }
    }

    return Product(
      id: item.id ?? '',
      name: item.name ?? '',
      description: item.description ?? '',
      price: minP,
      minPrice: minP > 0 ? minP : null,
      maxPrice: maxP > 0 ? maxP : null,
      variantPrices: variantPrices,
      variants: variants,
      imageUrl: item.primaryImage?.url ?? '',
      scentNotes: item.tags ?? [],
      brand: item.brandName,
      rating: 0,
      reviewCount: 0,
    );
  }
}
