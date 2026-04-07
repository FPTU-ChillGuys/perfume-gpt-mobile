class Review {
  final String id;
  final String? userId;
  final String? userName;
  final String variantId;
  final String? variantName;
  final int rating;
  final String? comment;
  final String? answerContent;
  final DateTime createdAt;
  final List<String> imageUrls;

  const Review({
    required this.id,
    this.userId,
    this.userName,
    required this.variantId,
    this.variantName,
    required this.rating,
    this.comment,
    this.answerContent,
    required this.createdAt,
    this.imageUrls = const [],
  });
}

class ReviewStatistics {
  final int totalReviews;
  final double averageRating;
  final Map<int, int> ratingDistribution; // 1-5 -> count

  const ReviewStatistics({
    required this.totalReviews,
    required this.averageRating,
    required this.ratingDistribution,
  });
}
