class Review {
  final String id;
  final String? userId;
  final String? userName;
  final String? userProfilePictureUrl;
  final String? orderDetailId;
  final String variantId;
  final String? variantName;
  final int rating;
  final String? comment;
  final String? staffFeedbackComment;
  final DateTime? staffFeedbackAt;
  final DateTime createdAt;
  final List<String> imageUrls;

  const Review({
    required this.id,
    this.userId,
    this.userName,
    this.userProfilePictureUrl,
    this.orderDetailId,
    required this.variantId,
    this.variantName,
    required this.rating,
    this.comment,
    this.staffFeedbackComment,
    this.staffFeedbackAt,
    required this.createdAt,
    this.imageUrls = const [],
  });
}

class ReviewDetail {
  final String id;
  final String? userId;
  final String? userName;
  final String? userProfilePictureUrl;
  final String? orderDetailId;
  final String? orderId;
  final int? quantity;
  final double? unitPrice;
  final String variantId;
  final String? variantName;
  final String? productName;
  final int? volumeMl;
  final String? concentrationName;
  final int rating;
  final String? comment;
  final List<ReviewImage> images;
  final String? staffFeedbackComment;
  final DateTime? staffFeedbackAt;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const ReviewDetail({
    required this.id,
    this.userId,
    this.userName,
    this.userProfilePictureUrl,
    this.orderDetailId,
    this.orderId,
    this.quantity,
    this.unitPrice,
    required this.variantId,
    this.variantName,
    this.productName,
    this.volumeMl,
    this.concentrationName,
    required this.rating,
    this.comment,
    this.images = const [],
    this.staffFeedbackComment,
    this.staffFeedbackAt,
    required this.createdAt,
    this.updatedAt,
  });
}

class ReviewImage {
  final String id;
  final String url;
  final String? altText;
  final int? displayOrder;
  final bool isPrimary;

  const ReviewImage({
    required this.id,
    required this.url,
    this.altText,
    this.displayOrder,
    this.isPrimary = false,
  });
}

class ReviewStatistics {
  final int totalReviews;
  final double averageRating;
  final Map<int, int> ratingDistribution;

  const ReviewStatistics({
    required this.totalReviews,
    required this.averageRating,
    required this.ratingDistribution,
  });
}
