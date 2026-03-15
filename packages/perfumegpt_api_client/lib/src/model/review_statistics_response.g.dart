// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_statistics_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewStatisticsResponseCWProxy {
  ReviewStatisticsResponse variantId(String? variantId);

  ReviewStatisticsResponse totalReviews(int? totalReviews);

  ReviewStatisticsResponse averageRating(double? averageRating);

  ReviewStatisticsResponse fiveStarCount(int? fiveStarCount);

  ReviewStatisticsResponse fourStarCount(int? fourStarCount);

  ReviewStatisticsResponse threeStarCount(int? threeStarCount);

  ReviewStatisticsResponse twoStarCount(int? twoStarCount);

  ReviewStatisticsResponse oneStarCount(int? oneStarCount);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReviewStatisticsResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReviewStatisticsResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ReviewStatisticsResponse call({
    String? variantId,
    int? totalReviews,
    double? averageRating,
    int? fiveStarCount,
    int? fourStarCount,
    int? threeStarCount,
    int? twoStarCount,
    int? oneStarCount,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReviewStatisticsResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReviewStatisticsResponse.copyWith.fieldName(...)`
class _$ReviewStatisticsResponseCWProxyImpl
    implements _$ReviewStatisticsResponseCWProxy {
  const _$ReviewStatisticsResponseCWProxyImpl(this._value);

  final ReviewStatisticsResponse _value;

  @override
  ReviewStatisticsResponse variantId(String? variantId) =>
      this(variantId: variantId);

  @override
  ReviewStatisticsResponse totalReviews(int? totalReviews) =>
      this(totalReviews: totalReviews);

  @override
  ReviewStatisticsResponse averageRating(double? averageRating) =>
      this(averageRating: averageRating);

  @override
  ReviewStatisticsResponse fiveStarCount(int? fiveStarCount) =>
      this(fiveStarCount: fiveStarCount);

  @override
  ReviewStatisticsResponse fourStarCount(int? fourStarCount) =>
      this(fourStarCount: fourStarCount);

  @override
  ReviewStatisticsResponse threeStarCount(int? threeStarCount) =>
      this(threeStarCount: threeStarCount);

  @override
  ReviewStatisticsResponse twoStarCount(int? twoStarCount) =>
      this(twoStarCount: twoStarCount);

  @override
  ReviewStatisticsResponse oneStarCount(int? oneStarCount) =>
      this(oneStarCount: oneStarCount);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReviewStatisticsResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReviewStatisticsResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ReviewStatisticsResponse call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? totalReviews = const $CopyWithPlaceholder(),
    Object? averageRating = const $CopyWithPlaceholder(),
    Object? fiveStarCount = const $CopyWithPlaceholder(),
    Object? fourStarCount = const $CopyWithPlaceholder(),
    Object? threeStarCount = const $CopyWithPlaceholder(),
    Object? twoStarCount = const $CopyWithPlaceholder(),
    Object? oneStarCount = const $CopyWithPlaceholder(),
  }) {
    return ReviewStatisticsResponse(
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      totalReviews: totalReviews == const $CopyWithPlaceholder()
          ? _value.totalReviews
          // ignore: cast_nullable_to_non_nullable
          : totalReviews as int?,
      averageRating: averageRating == const $CopyWithPlaceholder()
          ? _value.averageRating
          // ignore: cast_nullable_to_non_nullable
          : averageRating as double?,
      fiveStarCount: fiveStarCount == const $CopyWithPlaceholder()
          ? _value.fiveStarCount
          // ignore: cast_nullable_to_non_nullable
          : fiveStarCount as int?,
      fourStarCount: fourStarCount == const $CopyWithPlaceholder()
          ? _value.fourStarCount
          // ignore: cast_nullable_to_non_nullable
          : fourStarCount as int?,
      threeStarCount: threeStarCount == const $CopyWithPlaceholder()
          ? _value.threeStarCount
          // ignore: cast_nullable_to_non_nullable
          : threeStarCount as int?,
      twoStarCount: twoStarCount == const $CopyWithPlaceholder()
          ? _value.twoStarCount
          // ignore: cast_nullable_to_non_nullable
          : twoStarCount as int?,
      oneStarCount: oneStarCount == const $CopyWithPlaceholder()
          ? _value.oneStarCount
          // ignore: cast_nullable_to_non_nullable
          : oneStarCount as int?,
    );
  }
}

extension $ReviewStatisticsResponseCopyWith on ReviewStatisticsResponse {
  /// Returns a callable class that can be used as follows: `instanceOfReviewStatisticsResponse.copyWith(...)` or like so:`instanceOfReviewStatisticsResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReviewStatisticsResponseCWProxy get copyWith =>
      _$ReviewStatisticsResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewStatisticsResponse _$ReviewStatisticsResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ReviewStatisticsResponse', json, ($checkedConvert) {
  final val = ReviewStatisticsResponse(
    variantId: $checkedConvert('variantId', (v) => v as String?),
    totalReviews: $checkedConvert('totalReviews', (v) => (v as num?)?.toInt()),
    averageRating: $checkedConvert(
      'averageRating',
      (v) => (v as num?)?.toDouble(),
    ),
    fiveStarCount: $checkedConvert(
      'fiveStarCount',
      (v) => (v as num?)?.toInt(),
    ),
    fourStarCount: $checkedConvert(
      'fourStarCount',
      (v) => (v as num?)?.toInt(),
    ),
    threeStarCount: $checkedConvert(
      'threeStarCount',
      (v) => (v as num?)?.toInt(),
    ),
    twoStarCount: $checkedConvert('twoStarCount', (v) => (v as num?)?.toInt()),
    oneStarCount: $checkedConvert('oneStarCount', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$ReviewStatisticsResponseToJson(
  ReviewStatisticsResponse instance,
) => <String, dynamic>{
  'variantId': ?instance.variantId,
  'totalReviews': ?instance.totalReviews,
  'averageRating': ?instance.averageRating,
  'fiveStarCount': ?instance.fiveStarCount,
  'fourStarCount': ?instance.fourStarCount,
  'threeStarCount': ?instance.threeStarCount,
  'twoStarCount': ?instance.twoStarCount,
  'oneStarCount': ?instance.oneStarCount,
};
