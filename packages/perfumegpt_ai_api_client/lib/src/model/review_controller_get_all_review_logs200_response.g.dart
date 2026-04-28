// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_controller_get_all_review_logs200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewControllerGetAllReviewLogs200ResponseCWProxy {
  ReviewControllerGetAllReviewLogs200Response success(bool? success);

  ReviewControllerGetAllReviewLogs200Response error(String? error);

  ReviewControllerGetAllReviewLogs200Response details(String? details);

  ReviewControllerGetAllReviewLogs200Response data(ReviewLog? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewControllerGetAllReviewLogs200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewControllerGetAllReviewLogs200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewControllerGetAllReviewLogs200Response call({
    bool? success,
    String? error,
    String? details,
    ReviewLog? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReviewControllerGetAllReviewLogs200Response.copyWith(...)` or call `instanceOfReviewControllerGetAllReviewLogs200Response.copyWith.fieldName(value)` for a single field.
class _$ReviewControllerGetAllReviewLogs200ResponseCWProxyImpl
    implements _$ReviewControllerGetAllReviewLogs200ResponseCWProxy {
  const _$ReviewControllerGetAllReviewLogs200ResponseCWProxyImpl(this._value);

  final ReviewControllerGetAllReviewLogs200Response _value;

  @override
  ReviewControllerGetAllReviewLogs200Response success(bool? success) =>
      call(success: success);

  @override
  ReviewControllerGetAllReviewLogs200Response error(String? error) =>
      call(error: error);

  @override
  ReviewControllerGetAllReviewLogs200Response details(String? details) =>
      call(details: details);

  @override
  ReviewControllerGetAllReviewLogs200Response data(ReviewLog? data) =>
      call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewControllerGetAllReviewLogs200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewControllerGetAllReviewLogs200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewControllerGetAllReviewLogs200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ReviewControllerGetAllReviewLogs200Response(
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as String?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as ReviewLog?,
    );
  }
}

extension $ReviewControllerGetAllReviewLogs200ResponseCopyWith
    on ReviewControllerGetAllReviewLogs200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReviewControllerGetAllReviewLogs200Response.copyWith(...)` or `instanceOfReviewControllerGetAllReviewLogs200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReviewControllerGetAllReviewLogs200ResponseCWProxy get copyWith =>
      _$ReviewControllerGetAllReviewLogs200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewControllerGetAllReviewLogs200Response
_$ReviewControllerGetAllReviewLogs200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ReviewControllerGetAllReviewLogs200Response', json, (
  $checkedConvert,
) {
  final val = ReviewControllerGetAllReviewLogs200Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    details: $checkedConvert('details', (v) => v as String?),
    data: $checkedConvert(
      'data',
      (v) => v == null ? null : ReviewLog.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ReviewControllerGetAllReviewLogs200ResponseToJson(
  ReviewControllerGetAllReviewLogs200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
