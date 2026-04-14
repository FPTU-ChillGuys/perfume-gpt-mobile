import '../entities/banner.dart';

abstract class BannerRepository {
  Future<List<HomeBanner>> getHomeBanners({String? position});
}
