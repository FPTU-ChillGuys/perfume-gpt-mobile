import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/review_repository_impl.dart';
import '../../../../domain/entities/review.dart';
import '../../../../domain/repositories/review_repository.dart';

part 'review_providers.g.dart';

@riverpod
ReviewRepository reviewRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return ReviewRepositoryImpl(apiClient.dio);
}

@riverpod
FutureOr<List<Review>> myReviews(Ref ref) {
  return ref.watch(reviewRepositoryProvider).getMyReviews();
}

@riverpod
FutureOr<List<Review>> variantReviews(Ref ref, String variantId) {
  return ref.watch(reviewRepositoryProvider).getVariantReviews(variantId);
}

@riverpod
FutureOr<ReviewStatistics> variantReviewStats(Ref ref, String variantId) {
  return ref.watch(reviewRepositoryProvider).getVariantStatistics(variantId);
}
