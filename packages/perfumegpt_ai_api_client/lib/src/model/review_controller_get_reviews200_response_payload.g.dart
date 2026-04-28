// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_controller_get_reviews200_response_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewControllerGetReviews200ResponsePayloadCWProxy {
  ReviewControllerGetReviews200ResponsePayload items(
    List<ReviewListItemResponse> items,
  );

  ReviewControllerGetReviews200ResponsePayload pageNumber(num pageNumber);

  ReviewControllerGetReviews200ResponsePayload pageSize(num pageSize);

  ReviewControllerGetReviews200ResponsePayload totalCount(num totalCount);

  ReviewControllerGetReviews200ResponsePayload totalPages(num totalPages);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewControllerGetReviews200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewControllerGetReviews200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewControllerGetReviews200ResponsePayload call({
    List<ReviewListItemResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReviewControllerGetReviews200ResponsePayload.copyWith(...)` or call `instanceOfReviewControllerGetReviews200ResponsePayload.copyWith.fieldName(value)` for a single field.
class _$ReviewControllerGetReviews200ResponsePayloadCWProxyImpl
    implements _$ReviewControllerGetReviews200ResponsePayloadCWProxy {
  const _$ReviewControllerGetReviews200ResponsePayloadCWProxyImpl(this._value);

  final ReviewControllerGetReviews200ResponsePayload _value;

  @override
  ReviewControllerGetReviews200ResponsePayload items(
    List<ReviewListItemResponse> items,
  ) => call(items: items);

  @override
  ReviewControllerGetReviews200ResponsePayload pageNumber(num pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  ReviewControllerGetReviews200ResponsePayload pageSize(num pageSize) =>
      call(pageSize: pageSize);

  @override
  ReviewControllerGetReviews200ResponsePayload totalCount(num totalCount) =>
      call(totalCount: totalCount);

  @override
  ReviewControllerGetReviews200ResponsePayload totalPages(num totalPages) =>
      call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewControllerGetReviews200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewControllerGetReviews200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewControllerGetReviews200ResponsePayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return ReviewControllerGetReviews200ResponsePayload(
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

extension $ReviewControllerGetReviews200ResponsePayloadCopyWith
    on ReviewControllerGetReviews200ResponsePayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReviewControllerGetReviews200ResponsePayload.copyWith(...)` or `instanceOfReviewControllerGetReviews200ResponsePayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReviewControllerGetReviews200ResponsePayloadCWProxy get copyWith =>
      _$ReviewControllerGetReviews200ResponsePayloadCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewControllerGetReviews200ResponsePayload
_$ReviewControllerGetReviews200ResponsePayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ReviewControllerGetReviews200ResponsePayload', json, (
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
  final val = ReviewControllerGetReviews200ResponsePayload(
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

Map<String, dynamic> _$ReviewControllerGetReviews200ResponsePayloadToJson(
  ReviewControllerGetReviews200ResponsePayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
