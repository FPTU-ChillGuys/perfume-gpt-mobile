// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_user_credentials_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfUserCredentialsResponseCWProxy {
  BaseResponseOfUserCredentialsResponse payload(
    UserCredentialsResponse? payload,
  );

  BaseResponseOfUserCredentialsResponse success(bool? success);

  BaseResponseOfUserCredentialsResponse message(String? message);

  BaseResponseOfUserCredentialsResponse errors(List<String>? errors);

  BaseResponseOfUserCredentialsResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfUserCredentialsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfUserCredentialsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfUserCredentialsResponse call({
    UserCredentialsResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfUserCredentialsResponse.copyWith(...)` or call `instanceOfBaseResponseOfUserCredentialsResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfUserCredentialsResponseCWProxyImpl
    implements _$BaseResponseOfUserCredentialsResponseCWProxy {
  const _$BaseResponseOfUserCredentialsResponseCWProxyImpl(this._value);

  final BaseResponseOfUserCredentialsResponse _value;

  @override
  BaseResponseOfUserCredentialsResponse payload(
    UserCredentialsResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfUserCredentialsResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfUserCredentialsResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfUserCredentialsResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfUserCredentialsResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfUserCredentialsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfUserCredentialsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfUserCredentialsResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfUserCredentialsResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as UserCredentialsResponse?,
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

extension $BaseResponseOfUserCredentialsResponseCopyWith
    on BaseResponseOfUserCredentialsResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfUserCredentialsResponse.copyWith(...)` or `instanceOfBaseResponseOfUserCredentialsResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfUserCredentialsResponseCWProxy get copyWith =>
      _$BaseResponseOfUserCredentialsResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfUserCredentialsResponse
_$BaseResponseOfUserCredentialsResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfUserCredentialsResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfUserCredentialsResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : UserCredentialsResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfUserCredentialsResponseToJson(
  BaseResponseOfUserCredentialsResponse instance,
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
