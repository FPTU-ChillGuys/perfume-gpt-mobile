// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_review_statistics_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfReviewStatisticsResponseCWProxy {
  BaseResponseOfReviewStatisticsResponse payload(
    ReviewStatisticsResponse? payload,
  );

  BaseResponseOfReviewStatisticsResponse success(bool? success);

  BaseResponseOfReviewStatisticsResponse message(String? message);

  BaseResponseOfReviewStatisticsResponse errors(List<String>? errors);

  BaseResponseOfReviewStatisticsResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfReviewStatisticsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfReviewStatisticsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfReviewStatisticsResponse call({
    ReviewStatisticsResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfReviewStatisticsResponse.copyWith(...)` or call `instanceOfBaseResponseOfReviewStatisticsResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfReviewStatisticsResponseCWProxyImpl
    implements _$BaseResponseOfReviewStatisticsResponseCWProxy {
  const _$BaseResponseOfReviewStatisticsResponseCWProxyImpl(this._value);

  final BaseResponseOfReviewStatisticsResponse _value;

  @override
  BaseResponseOfReviewStatisticsResponse payload(
    ReviewStatisticsResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfReviewStatisticsResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfReviewStatisticsResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfReviewStatisticsResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfReviewStatisticsResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfReviewStatisticsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfReviewStatisticsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfReviewStatisticsResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfReviewStatisticsResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ReviewStatisticsResponse?,
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      errors: errors == const $CopyWithPlaceholder()
          ? _value.errors
          // ignore: cast_nullable_to_non_nullable
          : errors as List<String>?,
      errorType: errorType == const $CopyWithPlaceholder()
          ? _value.errorType
          // ignore: cast_nullable_to_non_nullable
          : errorType as int?,
    );
  }
}

extension $BaseResponseOfReviewStatisticsResponseCopyWith
    on BaseResponseOfReviewStatisticsResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfReviewStatisticsResponse.copyWith(...)` or `instanceOfBaseResponseOfReviewStatisticsResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfReviewStatisticsResponseCWProxy get copyWith =>
      _$BaseResponseOfReviewStatisticsResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfReviewStatisticsResponse
_$BaseResponseOfReviewStatisticsResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfReviewStatisticsResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfReviewStatisticsResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : ReviewStatisticsResponse.fromJson(v as Map<String, dynamic>),
        ),
        success: $checkedConvert('success', (v) => v as bool?),
        message: $checkedConvert('message', (v) => v as String?),
        errors: $checkedConvert(
          'errors',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        errorType: $checkedConvert('errorType', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$BaseResponseOfReviewStatisticsResponseToJson(
  BaseResponseOfReviewStatisticsResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
