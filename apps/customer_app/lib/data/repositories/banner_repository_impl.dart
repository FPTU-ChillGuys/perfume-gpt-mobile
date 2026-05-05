import 'package:dio/dio.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../core/utils/image_url_helper.dart';
import '../../domain/entities/banner.dart';
import '../../domain/repositories/banner_repository.dart';

class BannerRepositoryImpl implements BannerRepository {
  final BannersApi _api;

  BannerRepositoryImpl(this._api);

  @override
  Future<List<HomeBanner>> getHomeBanners({String? position}) async {
    try {
      final response = await _api.apiBannersHomeGet(
        position: _mapPosition(position),
      );
      final items = response.data?.payload ?? [];
      return items.map(_mapBannerModel).toList();
    } on DioException catch (e) {
      if (_isOk(e)) return _parseBannerList(e.response?.data);
      rethrow;
    }
  }

  static bool _isOk(DioException e) {
    final s = e.response?.statusCode;
    return s != null && s >= 200 && s < 300;
  }

  BannerPosition? _mapPosition(String? position) {
    if (position == null || position.isEmpty) return null;
    for (final value in BannerPosition.values) {
      if (value.value == position) return value;
    }
    return null;
  }

  List<HomeBanner> _parseBannerList(dynamic data) {
    if (data is! Map<String, dynamic>) return [];
    final payload = data['payload'];
    if (payload is! List) return [];
    return payload.whereType<Map<String, dynamic>>().map(_mapBanner).toList();
  }

  HomeBanner _mapBannerModel(BannerResponse m) {
    return HomeBanner(
      id: m.id?.toString() ?? '',
      title: m.title,
      imageUrl: ImageUrlHelper.resolve(m.imageUrl),
      mobileImageUrl: m.mobileImageUrl != null
          ? ImageUrlHelper.resolve(m.mobileImageUrl!)
          : null,
      altText: m.altText,
      position: m.position?.value ?? '',
      displayOrder: m.displayOrder ?? 0,
      isActive: m.isActive ?? true,
      startDate: m.startDate?.toIso8601String(),
      endDate: m.endDate?.toIso8601String(),
      linkType: m.linkType?.value ?? '',
      linkTarget: m.linkTarget,
    );
  }

  HomeBanner _mapBanner(Map<String, dynamic> json) {
    return HomeBanner(
      id: json['id']?.toString() ?? '',
      title: json['title']?.toString() ?? '',
      imageUrl: ImageUrlHelper.resolve(json['imageUrl']?.toString() ?? ''),
      mobileImageUrl: json['mobileImageUrl'] != null
          ? ImageUrlHelper.resolve(json['mobileImageUrl'].toString())
          : null,
      altText: json['altText']?.toString(),
      position: json['position']?.toString() ?? '',
      displayOrder: json['displayOrder'] as int? ?? 0,
      isActive: json['isActive'] as bool? ?? true,
      startDate: json['startDate']?.toString(),
      endDate: json['endDate']?.toString(),
      linkType: json['linkType']?.toString() ?? '',
      linkTarget: json['linkTarget']?.toString(),
    );
  }
}
