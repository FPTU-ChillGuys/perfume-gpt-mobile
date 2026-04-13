import '../entities/product.dart';
import '../entities/product_information.dart';
import '../entities/paged_result.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts({String? query});
  Future<Product> getProductById(String id);
  Future<ProductInformation> getProductInformation(String id);
  Future<({double rating, int reviewCount})> getProductRating(String id);
  Future<List<Product>> semanticSearch(String query);
  Future<List<Product>> getBestSellers();
  Future<List<Product>> getNewArrivals();

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
  });

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
  });
}
