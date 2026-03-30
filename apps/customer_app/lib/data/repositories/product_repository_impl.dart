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
    // We fetch detailed info via /api/Products/{id}
    final response = await _api.apiProductsProductIdGet(productId: id);
    final product = response.data?.payload;
    if (product == null) throw Exception('Product not found');

    double minPrice = 0;
    if (product.variants != null && product.variants!.isNotEmpty) {
      minPrice = product.variants!
          .map((v) => (v.basePrice ?? 0).toDouble())
          .reduce(min);
    }

    return Product(
      id: product.id ?? '',
      name: product.name ?? '',
      description: product.description ?? '',
      price: minPrice,
      imageUrl: product.media?.firstOrNull?.url ?? '',
      scentNotes:
          product.attributes?.map((a) => a.attribute ?? '').toList() ?? [],
      brand: product.brandName ?? '',
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
    return Product(
      id: item.id ?? '',
      name: item.name ?? '',
      description: item.description ?? '',
      price: 0, // List API doesn't include price, fetched individually
      imageUrl: item.primaryImage?.url ?? '',
      scentNotes: item.tags ?? [],
      brand: item.brandName ?? '',
      rating: 0,
      reviewCount: 0,
    );
  }

  Product _mapListItemWithVariantsToProduct(ProductListItemWithVariants item) {
    return Product(
      id: item.id ?? '',
      name: item.name ?? '',
      description: item.description ?? '',
      price: 0,
      imageUrl: item.primaryImage?.url ?? '',
      scentNotes: item.tags ?? [],
      brand: item.brandName ?? '',
      rating: 0,
      reviewCount: 0,
    );
  }
}
