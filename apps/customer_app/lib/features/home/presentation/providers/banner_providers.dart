import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import '../../../../data/repositories/banner_repository_impl.dart';
import '../../../../domain/entities/banner.dart';
import '../../../../domain/repositories/banner_repository.dart';

part 'banner_providers.g.dart';

@riverpod
BannerRepository bannerRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return BannerRepositoryImpl(apiClient.dio);
}

@riverpod
Future<List<HomeBanner>> homeHeroBanners(Ref ref) async {
  final repository = ref.watch(bannerRepositoryProvider);
  return repository.getHomeBanners(position: 'HomeHeroSlider');
}
