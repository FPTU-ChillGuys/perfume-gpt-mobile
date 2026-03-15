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

  BaseResponseOfListOfReviewResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfReviewResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfReviewResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfReviewResponse call({
    List<ReviewResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfReviewResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfReviewResponse.copyWith.fieldName(...)`
class _$BaseResponseOfListOfReviewResponseCWProxyImpl
    implements _$BaseResponseOfListOfReviewResponseCWProxy {
  const _$BaseResponseOfListOfReviewResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfReviewResponse _value;

  @override
  BaseResponseOfListOfReviewResponse payload(List<ReviewResponse>? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfListOfReviewResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfReviewResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfReviewResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfReviewResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfReviewResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfReviewResponse(...).copyWith(id: 12, name: "My name")
  /// ````
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
          : errorType as ResponseErrorType?,
    );
  }
}

extension $BaseResponseOfListOfReviewResponseCopyWith
    on BaseResponseOfListOfReviewResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfReviewResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfReviewResponse.copyWith.fieldName(...)`.
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
    errorType: $checkedConvert(
      'errorType',
      (v) => $enumDecodeNullable(_$ResponseErrorTypeEnumMap, v),
    ),
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
