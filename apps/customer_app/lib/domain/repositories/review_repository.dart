import '../entities/review.dart';

abstract class ReviewRepository {
  Future<List<Review>> getMyReviews();
  Future<List<Review>> getVariantReviews(String variantId);
  Future<ReviewStatistics> getVariantStatistics(String variantId);
  Future<void> createReview({
    required String variantId,
    required int rating,
    String? comment,
  });
  Future<void> deleteReview(String reviewId);
}
