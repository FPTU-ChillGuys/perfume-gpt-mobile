import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/review.dart';
import '../../domain/repositories/review_repository.dart';

class ReviewRepositoryImpl implements ReviewRepository {
  final ReviewsApi _api;
  ReviewRepositoryImpl(this._api);

  @override
  Future<List<Review>> getMyReviews() async {
    final response = await _api.apiReviewsMeGet();
    final list = response.data?.payload ?? [];
    return list.map(_mapResponse).toList();
  }

  @override
  Future<List<Review>> getVariantReviews(String variantId) async {
    final response = await _api.apiReviewsVariantVariantIdGet(
      variantId: variantId,
    );
    final list = response.data?.payload ?? [];
    return list.map(_mapResponse).toList();
  }

  @override
  Future<ReviewStatistics> getVariantStatistics(String variantId) async {
    final response = await _api.apiReviewsVariantVariantIdStatisticsGet(
      variantId: variantId,
    );
    final j = response.data?.payload;
    if (j == null) {
      return const ReviewStatistics(
        totalReviews: 0,
        averageRating: 0.0,
        ratingDistribution: {},
      );
    }
    final dist = {
      1: j.oneStarCount ?? 0,
      2: j.twoStarCount ?? 0,
      3: j.threeStarCount ?? 0,
      4: j.fourStarCount ?? 0,
      5: j.fiveStarCount ?? 0,
    };
    return ReviewStatistics(
      totalReviews: j.totalReviews ?? 0,
      averageRating: j.averageRating ?? 0.0,
      ratingDistribution: dist,
    );
  }

  @override
  Future<void> createReview({
    required String variantId,
    required int rating,
    String? comment,
  }) async {
    await _api.apiReviewsPost(
      createReviewRequest: CreateReviewRequest(
        orderDetailId: variantId, // FIXME: API expects orderDetailId
        rating: rating,
        comment: comment ?? '',
      ),
    );
  }

  @override
  Future<void> deleteReview(String reviewId) async {
    await _api.apiReviewsReviewIdDelete(reviewId: reviewId);
  }

  Review _mapResponse(ReviewResponse j) => Review(
    id: j.id ?? '',
    userId: j.userId,
    userName: j.userFullName,
    variantId: j.variantId ?? '',
    variantName: j.variantName,
    rating: j.rating ?? 0,
    comment: j.comment,
    answerContent: j.staffFeedbackComment,
    createdAt: j.createdAt ?? DateTime.now(),
    imageUrls: j.images.map((i) => i.url).toList(),
  );
}
