// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(reviewRepository)
final reviewRepositoryProvider = ReviewRepositoryProvider._();

final class ReviewRepositoryProvider
    extends
        $FunctionalProvider<
          ReviewRepository,
          ReviewRepository,
          ReviewRepository
        >
    with $Provider<ReviewRepository> {
  ReviewRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewRepositoryHash();

  @$internal
  @override
  $ProviderElement<ReviewRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ReviewRepository create(Ref ref) {
    return reviewRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReviewRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReviewRepository>(value),
    );
  }
}

String _$reviewRepositoryHash() => r'86284bce6440cd606b95e35df2ced3499431f037';

@ProviderFor(myReviews)
final myReviewsProvider = MyReviewsProvider._();

final class MyReviewsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Review>>,
          List<Review>,
          FutureOr<List<Review>>
        >
    with $FutureModifier<List<Review>>, $FutureProvider<List<Review>> {
  MyReviewsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'myReviewsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$myReviewsHash();

  @$internal
  @override
  $FutureProviderElement<List<Review>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Review>> create(Ref ref) {
    return myReviews(ref);
  }
}

String _$myReviewsHash() => r'4308aa69077dadd839c5793512ca263f0115996e';

@ProviderFor(reviewDetail)
final reviewDetailProvider = ReviewDetailFamily._();

final class ReviewDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<ReviewDetail>,
          ReviewDetail,
          FutureOr<ReviewDetail>
        >
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
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ReviewDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

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

String _$reviewDetailHash() => r'a69a65cd15b76a43da760cf8ee42d5c20a0e7d0c';

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

@ProviderFor(variantReviews)
final variantReviewsProvider = VariantReviewsFamily._();

final class VariantReviewsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Review>>,
          List<Review>,
          FutureOr<List<Review>>
        >
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
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Review>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

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

String _$variantReviewsHash() => r'8d6bac3a49cec360c0d5f82ff3423a91b719e2d4';

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

@ProviderFor(variantReviewStats)
final variantReviewStatsProvider = VariantReviewStatsFamily._();

final class VariantReviewStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<ReviewStatistics>,
          ReviewStatistics,
          FutureOr<ReviewStatistics>
        >
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
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<ReviewStatistics> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

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

String _$variantReviewStatsHash() =>
    r'de9adf08feafa3838960f419a33431e70a6171ed';

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
