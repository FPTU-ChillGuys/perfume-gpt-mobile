import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../domain/entities/campaign_lookup.dart';
import '../../../../domain/entities/product.dart';
import '../../../store/presentation/providers/product_provider.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';

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

@riverpod
Future<List<CampaignLookup>> activeCampaigns(Ref ref) async {
  final apiClient = ref.watch(apiClientProvider);
  final api = apiClient.getCampaignsApi();
  final response = await api.apiCampaignsLookupActiveGet();
  final items = response.data?.payload ?? [];
  return items
      .where((item) => item.id != null && item.id!.isNotEmpty)
      .map((item) => CampaignLookup(id: item.id!, name: item.name))
      .toList();
}

@riverpod
Future<List<Product>> campaignProducts(Ref ref, String campaignId) async {
  final repository = ref.watch(productRepositoryProvider);
  final productIds = await repository.getCampaignProductIds(campaignId);
  final products = await Future.wait(
    productIds.map((id) => repository.getProductById(id)),
  );
  return products;
}
