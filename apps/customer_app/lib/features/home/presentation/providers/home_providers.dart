import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../domain/entities/product.dart';
import '../../../store/presentation/providers/product_provider.dart';

part 'home_providers.g.dart';

@riverpod
Future<List<Product>> bestSellers(Ref ref) async {
  final repository = ref.watch(productRepositoryProvider);
  return repository.getBestSellers();
}

@riverpod
Future<List<Product>> newArrivals(Ref ref) async {
  final repository = ref.watch(productRepositoryProvider);
  return repository.getNewArrivals();
}
