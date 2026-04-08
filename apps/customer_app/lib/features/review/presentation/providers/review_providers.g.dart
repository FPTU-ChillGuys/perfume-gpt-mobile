// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: type=lint, type=warning

@ProviderFor(reviewRepository)
final reviewRepositoryProvider = ReviewRepositoryProvider._();

final class ReviewRepositoryProvider
    extends $FunctionalProvider<ReviewRepository, ReviewRepository, ReviewRepository>
    with $Provider<ReviewRepository> {
  ReviewRepositoryProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'reviewRepositoryProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewRepositoryHash();

  @$internal
  @override
  $ProviderElement<ReviewRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ReviewRepository create(Ref ref) => reviewRepository(ref);
}

String _$reviewRepositoryHash() => r'review_repo_hash';

@ProviderFor(myReviews)
final myReviewsProvider = MyReviewsProvider._();

final class MyReviewsProvider
    extends $FunctionalProvider<AsyncValue<List<Review>>, List<Review>, FutureOr<List<Review>>>
    with $FutureModifier<List<Review>>, $FutureProvider<List<Review>> {
  MyReviewsProvider._()
    : super(
        from: null, argument: null, retry: null,
        name: r'myReviewsProvider', isAutoDispose: true,
        dependencies: null, $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myReviewsHash();

  @$internal
  @override
  $FutureProviderElement<List<Review>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Review>> create(Ref ref) => myReviews(ref);
}

String _$myReviewsHash() => r'my_reviews_hash';

// --- reviewDetail (family) ---

@ProviderFor(reviewDetail)
final reviewDetailProvider = ReviewDetailFamily._();

final class ReviewDetailProvider
    extends $FunctionalProvider<AsyncValue<ReviewDetail>, ReviewDetail, FutureOr<ReviewDetail>>
    with $FutureModifier<ReviewDetail>, $FutureProvider<ReviewDetail> {
  ReviewDetailProvider._({
    required ReviewDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'reviewDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$reviewDetailHash();

  @override
  String toString() {
    return r'reviewDetailProvider'
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ReviewDetail> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ReviewDetail> create(Ref ref) {
    final argument = this.argument as String;
    return reviewDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ReviewDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$reviewDetailHash() => r'review_detail_hash';

final class ReviewDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ReviewDetail>, String> {
  ReviewDetailFamily._()
    : super(
        retry: null,
        name: r'reviewDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ReviewDetailProvider call(String reviewId) =>
      ReviewDetailProvider._(argument: reviewId, from: this);

  @override
  String toString() => r'reviewDetailProvider';
}

// --- variantReviews (family) ---

@ProviderFor(variantReviews)
final variantReviewsProvider = VariantReviewsFamily._();

final class VariantReviewsProvider
    extends $FunctionalProvider<AsyncValue<List<Review>>, List<Review>, FutureOr<List<Review>>>
    with $FutureModifier<List<Review>>, $FutureProvider<List<Review>> {
  VariantReviewsProvider._({
    required VariantReviewsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'variantReviewsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$variantReviewsHash();

  @override
  String toString() {
    return r'variantReviewsProvider'
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Review>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Review>> create(Ref ref) {
    final argument = this.argument as String;
    return variantReviews(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is VariantReviewsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$variantReviewsHash() => r'variant_reviews_hash';

final class VariantReviewsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Review>>, String> {
  VariantReviewsFamily._()
    : super(
        retry: null,
        name: r'variantReviewsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  VariantReviewsProvider call(String variantId) =>
      VariantReviewsProvider._(argument: variantId, from: this);

  @override
  String toString() => r'variantReviewsProvider';
}

// --- variantReviewStats (family) ---

@ProviderFor(variantReviewStats)
final variantReviewStatsProvider = VariantReviewStatsFamily._();

final class VariantReviewStatsProvider
    extends $FunctionalProvider<AsyncValue<ReviewStatistics>, ReviewStatistics, FutureOr<ReviewStatistics>>
    with $FutureModifier<ReviewStatistics>, $FutureProvider<ReviewStatistics> {
  VariantReviewStatsProvider._({
    required VariantReviewStatsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'variantReviewStatsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$variantReviewStatsHash();

  @override
  String toString() {
    return r'variantReviewStatsProvider'
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ReviewStatistics> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<ReviewStatistics> create(Ref ref) {
    final argument = this.argument as String;
    return variantReviewStats(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is VariantReviewStatsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$variantReviewStatsHash() => r'variant_review_stats_hash';

final class VariantReviewStatsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<ReviewStatistics>, String> {
  VariantReviewStatsFamily._()
    : super(
        retry: null,
        name: r'variantReviewStatsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  VariantReviewStatsProvider call(String variantId) =>
      VariantReviewStatsProvider._(argument: variantId, from: this);

  @override
  String toString() => r'variantReviewStatsProvider';
}
