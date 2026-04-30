// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_store_policy_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfStorePolicyResponseCWProxy {
  BaseResponseOfStorePolicyResponse payload(StorePolicyResponse? payload);

  BaseResponseOfStorePolicyResponse success(bool? success);

  BaseResponseOfStorePolicyResponse message(String? message);

  BaseResponseOfStorePolicyResponse errors(List<String>? errors);

  BaseResponseOfStorePolicyResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfStorePolicyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfStorePolicyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfStorePolicyResponse call({
    StorePolicyResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfStorePolicyResponse.copyWith(...)` or call `instanceOfBaseResponseOfStorePolicyResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfStorePolicyResponseCWProxyImpl
    implements _$BaseResponseOfStorePolicyResponseCWProxy {
  const _$BaseResponseOfStorePolicyResponseCWProxyImpl(this._value);

  final BaseResponseOfStorePolicyResponse _value;

  @override
  BaseResponseOfStorePolicyResponse payload(StorePolicyResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfStorePolicyResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfStorePolicyResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfStorePolicyResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfStorePolicyResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfStorePolicyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfStorePolicyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfStorePolicyResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfStorePolicyResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as StorePolicyResponse?,
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

extension $BaseResponseOfStorePolicyResponseCopyWith
    on BaseResponseOfStorePolicyResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfStorePolicyResponse.copyWith(...)` or `instanceOfBaseResponseOfStorePolicyResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfStorePolicyResponseCWProxy get copyWith =>
      _$BaseResponseOfStorePolicyResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfStorePolicyResponse _$BaseResponseOfStorePolicyResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfStorePolicyResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfStorePolicyResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : StorePolicyResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfStorePolicyResponseToJson(
  BaseResponseOfStorePolicyResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?_$ResponseErrorTypeEnumMap[instance.errorType],
};

const _$ResponseErrorTypeEnumMap = {
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
