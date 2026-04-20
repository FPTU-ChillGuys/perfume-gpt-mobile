// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_controller_get_reviews200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewControllerGetReviews200ResponseCWProxy {
  ReviewControllerGetReviews200Response success(bool success);

  ReviewControllerGetReviews200Response error(Object? error);

  ReviewControllerGetReviews200Response payload(
    ReviewControllerGetReviews200ResponseAllOfPayload? payload,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewControllerGetReviews200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewControllerGetReviews200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewControllerGetReviews200Response call({
    bool success,
    Object? error,
    ReviewControllerGetReviews200ResponseAllOfPayload? payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReviewControllerGetReviews200Response.copyWith(...)` or call `instanceOfReviewControllerGetReviews200Response.copyWith.fieldName(value)` for a single field.
class _$ReviewControllerGetReviews200ResponseCWProxyImpl
    implements _$ReviewControllerGetReviews200ResponseCWProxy {
  const _$ReviewControllerGetReviews200ResponseCWProxyImpl(this._value);

  final ReviewControllerGetReviews200Response _value;

  @override
  ReviewControllerGetReviews200Response success(bool success) =>
      call(success: success);

  @override
  ReviewControllerGetReviews200Response error(Object? error) =>
      call(error: error);

  @override
  ReviewControllerGetReviews200Response payload(
    ReviewControllerGetReviews200ResponseAllOfPayload? payload,
  ) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewControllerGetReviews200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewControllerGetReviews200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewControllerGetReviews200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return ReviewControllerGetReviews200Response(
      success: success == const $CopyWithPlaceholder() || success == null
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as Object?,
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ReviewControllerGetReviews200ResponseAllOfPayload?,
    );
  }
}

extension $ReviewControllerGetReviews200ResponseCopyWith
    on ReviewControllerGetReviews200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReviewControllerGetReviews200Response.copyWith(...)` or `instanceOfReviewControllerGetReviews200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReviewControllerGetReviews200ResponseCWProxy get copyWith =>
      _$ReviewControllerGetReviews200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewControllerGetReviews200Response
_$ReviewControllerGetReviews200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ReviewControllerGetReviews200Response', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['success']);
      final val = ReviewControllerGetReviews200Response(
        success: $checkedConvert('success', (v) => v as bool),
        error: $checkedConvert('error', (v) => v),
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : ReviewControllerGetReviews200ResponseAllOfPayload.fromJson(
                  v as Map<String, dynamic>,
                ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ReviewControllerGetReviews200ResponseToJson(
  ReviewControllerGetReviews200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload?.toJson(),
};
