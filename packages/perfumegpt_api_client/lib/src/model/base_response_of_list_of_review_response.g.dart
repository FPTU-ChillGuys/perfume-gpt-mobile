// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_review_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfReviewResponseCWProxy {
  BaseResponseOfListOfReviewResponse payload(List<ReviewResponse>? payload);

  BaseResponseOfListOfReviewResponse success(bool? success);

  BaseResponseOfListOfReviewResponse message(String? message);

  BaseResponseOfListOfReviewResponse errors(List<String>? errors);

  BaseResponseOfListOfReviewResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfReviewResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfReviewResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfReviewResponse call({
    List<ReviewResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfReviewResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfReviewResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfReviewResponseCWProxyImpl
    implements _$BaseResponseOfListOfReviewResponseCWProxy {
  const _$BaseResponseOfListOfReviewResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfReviewResponse _value;

  @override
  BaseResponseOfListOfReviewResponse payload(List<ReviewResponse>? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfListOfReviewResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfReviewResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfReviewResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfReviewResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfReviewResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfReviewResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfReviewResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfReviewResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<ReviewResponse>?,
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

extension $BaseResponseOfListOfReviewResponseCopyWith
    on BaseResponseOfListOfReviewResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfReviewResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfReviewResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfReviewResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfReviewResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfReviewResponse _$BaseResponseOfListOfReviewResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfReviewResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfReviewResponse(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map((e) => ReviewResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
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

Map<String, dynamic> _$BaseResponseOfListOfReviewResponseToJson(
  BaseResponseOfListOfReviewResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
