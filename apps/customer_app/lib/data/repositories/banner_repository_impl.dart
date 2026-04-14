import 'package:dio/dio.dart';
import '../../core/utils/image_url_helper.dart';
import '../../domain/entities/banner.dart';
import '../../domain/repositories/banner_repository.dart';

class BannerRepositoryImpl implements BannerRepository {
  final Dio _dio;

  BannerRepositoryImpl(this._dio);

  @override
  Future<List<HomeBanner>> getHomeBanners({String? position}) async {
    try {
      final queryParams = <String, dynamic>{};
      if (position != null) queryParams['position'] = position;

      final response = await _dio.get(
        '/api/banners/home',
        queryParameters: queryParams.isNotEmpty ? queryParams : null,
      );
      return _parseBannerList(response.data);
    } on DioException catch (e) {
      if (_isOk(e)) return _parseBannerList(e.response?.data);
      rethrow;
    }
  }

  static bool _isOk(DioException e) {
    final s = e.response?.statusCode;
    return s != null && s >= 200 && s < 300;
  }

  List<HomeBanner> _parseBannerList(dynamic data) {
    if (data is! Map<String, dynamic>) return [];
    final payload = data['payload'];
    if (payload is! List) return [];
    return payload
        .whereType<Map<String, dynamic>>()
        .map(_mapBanner)
        .toList();
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
