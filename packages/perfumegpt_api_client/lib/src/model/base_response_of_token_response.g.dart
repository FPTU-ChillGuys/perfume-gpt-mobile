// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_token_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfTokenResponseCWProxy {
  BaseResponseOfTokenResponse payload(TokenResponse? payload);

  BaseResponseOfTokenResponse success(bool? success);

  BaseResponseOfTokenResponse message(String? message);

  BaseResponseOfTokenResponse errors(List<String>? errors);

  BaseResponseOfTokenResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfTokenResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfTokenResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfTokenResponse call({
    TokenResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfTokenResponse.copyWith(...)` or call `instanceOfBaseResponseOfTokenResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfTokenResponseCWProxyImpl
    implements _$BaseResponseOfTokenResponseCWProxy {
  const _$BaseResponseOfTokenResponseCWProxyImpl(this._value);

  final BaseResponseOfTokenResponse _value;

  @override
  BaseResponseOfTokenResponse payload(TokenResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfTokenResponse success(bool? success) => call(success: success);

  @override
  BaseResponseOfTokenResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfTokenResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfTokenResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfTokenResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfTokenResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfTokenResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfTokenResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as TokenResponse?,
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

extension $BaseResponseOfTokenResponseCopyWith on BaseResponseOfTokenResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfTokenResponse.copyWith(...)` or `instanceOfBaseResponseOfTokenResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfTokenResponseCWProxy get copyWith =>
      _$BaseResponseOfTokenResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfTokenResponse _$BaseResponseOfTokenResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfTokenResponse', json, ($checkedConvert) {
  final val = BaseResponseOfTokenResponse(
    payload: $checkedConvert(
      'payload',
      (v) =>
          v == null ? null : TokenResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfTokenResponseToJson(
  BaseResponseOfTokenResponse instance,
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
