import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/product_repository_impl.dart';
import '../../../../domain/entities/product.dart';
import '../../../../domain/entities/product_information.dart';
import '../../../../domain/repositories/product_repository.dart';

part 'product_provider.g.dart';

@riverpod
ProductRepository productRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return ProductRepositoryImpl(apiClient.getProductsApi());
}

@riverpod
class ProductList extends _$ProductList {
  @override
  FutureOr<List<Product>> build() async {
    return ref.watch(productRepositoryProvider).getProducts();
  }

  Future<void> search(String query) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return ref.read(productRepositoryProvider).getProducts(query: query);
    });
  }

  Future<void> semanticSearch(String query) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return ref.read(productRepositoryProvider).semanticSearch(query);
    });
  }
}

@riverpod
FutureOr<Product> productDetails(Ref ref, String id) {
  return ref.watch(productRepositoryProvider).getProductById(id);
}

@riverpod
FutureOr<ProductInformation> productInformation(Ref ref, String id) {
  return ref.watch(productRepositoryProvider).getProductInformation(id);
}

@riverpod
FutureOr<({double rating, int reviewCount})> productRating(Ref ref, String id) {
  return ref.watch(productRepositoryProvider).getProductRating(id);
}
