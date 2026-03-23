// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_review_detail_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfReviewDetailResponseCWProxy {
  BaseResponseOfReviewDetailResponse payload(ReviewDetailResponse? payload);

  BaseResponseOfReviewDetailResponse success(bool? success);

  BaseResponseOfReviewDetailResponse message(String? message);

  BaseResponseOfReviewDetailResponse errors(List<String>? errors);

  BaseResponseOfReviewDetailResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfReviewDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfReviewDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfReviewDetailResponse call({
    ReviewDetailResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfReviewDetailResponse.copyWith(...)` or call `instanceOfBaseResponseOfReviewDetailResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfReviewDetailResponseCWProxyImpl
    implements _$BaseResponseOfReviewDetailResponseCWProxy {
  const _$BaseResponseOfReviewDetailResponseCWProxyImpl(this._value);

  final BaseResponseOfReviewDetailResponse _value;

  @override
  BaseResponseOfReviewDetailResponse payload(ReviewDetailResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfReviewDetailResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfReviewDetailResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfReviewDetailResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfReviewDetailResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfReviewDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfReviewDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfReviewDetailResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfReviewDetailResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ReviewDetailResponse?,
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
          : errorType as ResponseErrorType?,
    );
  }
}

extension $BaseResponseOfReviewDetailResponseCopyWith
    on BaseResponseOfReviewDetailResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfReviewDetailResponse.copyWith(...)` or `instanceOfBaseResponseOfReviewDetailResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfReviewDetailResponseCWProxy get copyWith =>
      _$BaseResponseOfReviewDetailResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfReviewDetailResponse _$BaseResponseOfReviewDetailResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfReviewDetailResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfReviewDetailResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : ReviewDetailResponse.fromJson(v as Map<String, dynamic>),
    ),
    success: $checkedConvert('success', (v) => v as bool?),
    message: $checkedConvert('message', (v) => v as String?),
    errors: $checkedConvert(
      'errors',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    errorType: $checkedConvert(
      'errorType',
      (v) => $enumDecodeNullable(_$ResponseErrorTypeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$BaseResponseOfReviewDetailResponseToJson(
  BaseResponseOfReviewDetailResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?_$ResponseErrorTypeEnumMap[instance.errorType],
};

const _$ResponseErrorTypeEnumMap = {
  ResponseErrorType.none: 'None',
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
