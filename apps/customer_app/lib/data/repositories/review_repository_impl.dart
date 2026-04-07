import 'package:dio/dio.dart';
import '../../domain/entities/review.dart';
import '../../domain/repositories/review_repository.dart';

const _authExtra = <String, dynamic>{
  'secure': <Map<String, String>>[
    {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
  ],
};

class ReviewRepositoryImpl implements ReviewRepository {
  final Dio _dio;
  ReviewRepositoryImpl(this._dio);

  Options get _opts => Options(extra: _authExtra);

  @override
  Future<List<Review>> getMyReviews() async {
    final r = await _dio.get<Map<String, dynamic>>('/api/reviews/me', options: _opts);
    final list = _extractList(r.data);
    return list.map(_map).toList();
  }

  @override
  Future<List<Review>> getVariantReviews(String variantId) async {
    final r = await _dio.get<Map<String, dynamic>>('/api/reviews/variant/$variantId', options: _opts);
    final list = _extractList(r.data);
    return list.map(_map).toList();
  }

  @override
  Future<ReviewStatistics> getVariantStatistics(String variantId) async {
    final r = await _dio.get<Map<String, dynamic>>(
      '/api/reviews/variant/$variantId/statistics',
      options: _opts,
    );
    final j = r.data?['payload'] as Map<String, dynamic>? ?? {};
    final dist = <int, int>{};
    final rawDist = j['ratingDistribution'] as Map<String, dynamic>? ?? {};
    for (final e in rawDist.entries) {
      dist[int.tryParse(e.key) ?? 0] = (e.value as num?)?.toInt() ?? 0;
    }
    return ReviewStatistics(
      totalReviews: j['totalReviews'] as int? ?? 0,
      averageRating: (j['averageRating'] as num?)?.toDouble() ?? 0,
      ratingDistribution: dist,
    );
  }

  @override
  Future<void> createReview({required String variantId, required int rating, String? comment}) async {
    await _dio.post(
      '/api/reviews',
      data: {
        'variantId': variantId,
        'rating': rating,
        if (comment != null && comment.isNotEmpty) 'comment': comment,
      },
      options: Options(contentType: 'application/json', extra: _authExtra),
    );
  }

  @override
  Future<void> deleteReview(String reviewId) async {
    await _dio.delete('/api/reviews/$reviewId', options: _opts);
  }

  List<Map<String, dynamic>> _extractList(Map<String, dynamic>? data) {
    final payload = data?['payload'];
    if (payload is List) return payload.cast<Map<String, dynamic>>();
    if (payload is Map<String, dynamic>) {
      final items = payload['items'] as List?;
      if (items != null) return items.cast<Map<String, dynamic>>();
    }
    return [];
  }

  Review _map(Map<String, dynamic> j) => Review(
        id: j['id'] as String? ?? '',
        userId: j['userId'] as String?,
        userName: j['userName'] as String? ?? j['reviewerName'] as String?,
        variantId: j['variantId'] as String? ?? '',
        variantName: j['variantName'] as String?,
        rating: j['rating'] as int? ?? 0,
        comment: j['comment'] as String?,
        answerContent: j['answerContent'] as String?,
        createdAt: DateTime.tryParse(j['createdAt'] as String? ?? '') ?? DateTime.now(),
        imageUrls: (j['imageUrls'] as List?)?.cast<String>() ?? [],
      );
}
