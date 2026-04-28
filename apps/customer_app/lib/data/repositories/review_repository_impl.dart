import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
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
  Future<ReviewDetail> getReviewDetail(String reviewId) async {
    final response = await _api.apiReviewsReviewIdGet(reviewId: reviewId);
    final j = response.data?.payload;
    if (j == null) throw Exception('Review not found');
    return ReviewDetail(
      id: j.id ?? '',
      userId: j.userId,
      userName: j.userFullName,
      userProfilePictureUrl: j.userProfilePictureUrl,
      orderDetailId: j.orderDetailId,
      orderId: j.orderId,
      quantity: j.quantity,
      unitPrice: j.unitPrice?.toDouble(),
      variantId: j.variantId ?? '',
      variantName: j.variantName,
      productName: j.productName,
      volumeMl: j.volumeMl,
      concentrationName: j.concentrationName,
      rating: j.rating ?? 0,
      comment: j.comment,
      images: j.images
          .map(
            (i) => ReviewImage(
              id: i.id ?? '',
              url: i.url,
              altText: i.altText,
              displayOrder: i.displayOrder,
              isPrimary: i.isPrimary ?? false,
            ),
          )
          .toList(),
      staffFeedbackComment: j.staffFeedbackComment,
      staffFeedbackAt: j.staffFeedbackAt,
      createdAt: j.createdAt ?? DateTime.now(),
      updatedAt: j.updatedAt,
    );
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
    required String orderDetailId,
    required int rating,
    required String comment,
    List<String>? temporaryMediaIds,
  }) async {
    await _api.apiReviewsPost(
      createReviewRequest: CreateReviewRequest(
        orderDetailId: orderDetailId,
        rating: rating,
        comment: comment,
        temporaryMediaIds: temporaryMediaIds,
      ),
    );
  }

  @override
  Future<void> deleteReview(String reviewId) async {
    await _api.apiReviewsReviewIdDelete(reviewId: reviewId);
  }

  @override
  Future<List<String>> uploadTemporaryImages(
    List<({String filename, Uint8List bytes})> images,
  ) async {
    final response = await _api.apiReviewsImagesTemporaryPost(
      images: images
          .map(
            (e) => MultipartFile.fromBytes(
              e.bytes,
              filename: e.filename,
              contentType: MediaType('image', 'jpeg'),
            ),
          )
          .toList(),
    );
    final data = response.data?.payload?.data ?? [];
    return data.map((m) => m.id ?? '').where((id) => id.isNotEmpty).toList();
  }

  Review _mapResponse(ReviewResponse j) => Review(
    id: j.id ?? '',
    userId: j.userId,
    userName: j.userFullName,
    userProfilePictureUrl: j.userProfilePictureUrl,
    orderDetailId: j.orderDetailId,
    variantId: j.variantId ?? '',
    variantName: j.variantName,
    rating: j.rating ?? 0,
    comment: j.comment,
    staffFeedbackComment: j.staffFeedbackComment,
    staffFeedbackAt: j.staffFeedbackAt,
    createdAt: j.createdAt ?? DateTime.now(),
    imageUrls: j.images.map((i) => i.url).toList(),
  );
}
