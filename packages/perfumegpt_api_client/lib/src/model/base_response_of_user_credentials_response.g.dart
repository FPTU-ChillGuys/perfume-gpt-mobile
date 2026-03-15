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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfUserCredentialsResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfUserCredentialsResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfUserCredentialsResponse call({
    UserCredentialsResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfUserCredentialsResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfUserCredentialsResponse.copyWith.fieldName(...)`
class _$BaseResponseOfUserCredentialsResponseCWProxyImpl
    implements _$BaseResponseOfUserCredentialsResponseCWProxy {
  const _$BaseResponseOfUserCredentialsResponseCWProxyImpl(this._value);

  final BaseResponseOfUserCredentialsResponse _value;

  @override
  BaseResponseOfUserCredentialsResponse payload(
    UserCredentialsResponse? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfUserCredentialsResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfUserCredentialsResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfUserCredentialsResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfUserCredentialsResponse errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfUserCredentialsResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfUserCredentialsResponse(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfUserCredentialsResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfUserCredentialsResponse.copyWith.fieldName(...)`.
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
