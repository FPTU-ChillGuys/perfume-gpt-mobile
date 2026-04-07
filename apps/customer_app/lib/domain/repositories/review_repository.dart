import 'dart:typed_data';

import '../entities/review.dart';

abstract class ReviewRepository {
  Future<List<Review>> getMyReviews();
  Future<ReviewDetail> getReviewDetail(String reviewId);
  Future<List<Review>> getVariantReviews(String variantId);
  Future<ReviewStatistics> getVariantStatistics(String variantId);
  Future<void> createReview({
    required String orderDetailId,
    required int rating,
    required String comment,
    List<String>? temporaryMediaIds,
  });
  Future<void> deleteReview(String reviewId);
  Future<List<String>> uploadTemporaryImages(
    List<({String filename, Uint8List bytes})> images,
  );
}
