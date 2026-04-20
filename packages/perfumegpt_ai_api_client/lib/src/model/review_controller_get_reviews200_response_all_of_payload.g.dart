// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_controller_get_reviews200_response_all_of_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewControllerGetReviews200ResponseAllOfPayloadCWProxy {
  ReviewControllerGetReviews200ResponseAllOfPayload items(
    List<ReviewListItemResponse> items,
  );

  ReviewControllerGetReviews200ResponseAllOfPayload pageNumber(num pageNumber);

  ReviewControllerGetReviews200ResponseAllOfPayload pageSize(num pageSize);

  ReviewControllerGetReviews200ResponseAllOfPayload totalCount(num totalCount);

  ReviewControllerGetReviews200ResponseAllOfPayload totalPages(num totalPages);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewControllerGetReviews200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewControllerGetReviews200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewControllerGetReviews200ResponseAllOfPayload call({
    List<ReviewListItemResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReviewControllerGetReviews200ResponseAllOfPayload.copyWith(...)` or call `instanceOfReviewControllerGetReviews200ResponseAllOfPayload.copyWith.fieldName(value)` for a single field.
class _$ReviewControllerGetReviews200ResponseAllOfPayloadCWProxyImpl
    implements _$ReviewControllerGetReviews200ResponseAllOfPayloadCWProxy {
  const _$ReviewControllerGetReviews200ResponseAllOfPayloadCWProxyImpl(
    this._value,
  );

  final ReviewControllerGetReviews200ResponseAllOfPayload _value;

  @override
  ReviewControllerGetReviews200ResponseAllOfPayload items(
    List<ReviewListItemResponse> items,
  ) => call(items: items);

  @override
  ReviewControllerGetReviews200ResponseAllOfPayload pageNumber(
    num pageNumber,
  ) => call(pageNumber: pageNumber);

  @override
  ReviewControllerGetReviews200ResponseAllOfPayload pageSize(num pageSize) =>
      call(pageSize: pageSize);

  @override
  ReviewControllerGetReviews200ResponseAllOfPayload totalCount(
    num totalCount,
  ) => call(totalCount: totalCount);

  @override
  ReviewControllerGetReviews200ResponseAllOfPayload totalPages(
    num totalPages,
  ) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewControllerGetReviews200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewControllerGetReviews200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewControllerGetReviews200ResponseAllOfPayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return ReviewControllerGetReviews200ResponseAllOfPayload(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ReviewListItemResponse>,
      pageNumber:
          pageNumber == const $CopyWithPlaceholder() || pageNumber == null
          ? _value.pageNumber
          // ignore: cast_nullable_to_non_nullable
          : pageNumber as num,
      pageSize: pageSize == const $CopyWithPlaceholder() || pageSize == null
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as num,
      totalCount:
          totalCount == const $CopyWithPlaceholder() || totalCount == null
          ? _value.totalCount
          // ignore: cast_nullable_to_non_nullable
          : totalCount as num,
      totalPages:
          totalPages == const $CopyWithPlaceholder() || totalPages == null
          ? _value.totalPages
          // ignore: cast_nullable_to_non_nullable
          : totalPages as num,
    );
  }
}

extension $ReviewControllerGetReviews200ResponseAllOfPayloadCopyWith
    on ReviewControllerGetReviews200ResponseAllOfPayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReviewControllerGetReviews200ResponseAllOfPayload.copyWith(...)` or `instanceOfReviewControllerGetReviews200ResponseAllOfPayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReviewControllerGetReviews200ResponseAllOfPayloadCWProxy get copyWith =>
      _$ReviewControllerGetReviews200ResponseAllOfPayloadCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewControllerGetReviews200ResponseAllOfPayload
_$ReviewControllerGetReviews200ResponseAllOfPayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ReviewControllerGetReviews200ResponseAllOfPayload', json, (
  $checkedConvert,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'items',
      'pageNumber',
      'pageSize',
      'totalCount',
      'totalPages',
    ],
  );
  final val = ReviewControllerGetReviews200ResponseAllOfPayload(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map(
            (e) => ReviewListItemResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    pageNumber: $checkedConvert('pageNumber', (v) => v as num),
    pageSize: $checkedConvert('pageSize', (v) => v as num),
    totalCount: $checkedConvert('totalCount', (v) => v as num),
    totalPages: $checkedConvert('totalPages', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$ReviewControllerGetReviews200ResponseAllOfPayloadToJson(
  ReviewControllerGetReviews200ResponseAllOfPayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
