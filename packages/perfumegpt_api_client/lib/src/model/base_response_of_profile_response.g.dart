// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_profile_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfProfileResponseCWProxy {
  BaseResponseOfProfileResponse payload(ProfileResponse? payload);

  BaseResponseOfProfileResponse success(bool? success);

  BaseResponseOfProfileResponse message(String? message);

  BaseResponseOfProfileResponse errors(List<String>? errors);

  BaseResponseOfProfileResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfProfileResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfProfileResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfProfileResponse call({
    ProfileResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfProfileResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfProfileResponse.copyWith.fieldName(...)`
class _$BaseResponseOfProfileResponseCWProxyImpl
    implements _$BaseResponseOfProfileResponseCWProxy {
  const _$BaseResponseOfProfileResponseCWProxyImpl(this._value);

  final BaseResponseOfProfileResponse _value;

  @override
  BaseResponseOfProfileResponse payload(ProfileResponse? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfProfileResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfProfileResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfProfileResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfProfileResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfProfileResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfProfileResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfProfileResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfProfileResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ProfileResponse?,
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

extension $BaseResponseOfProfileResponseCopyWith
    on BaseResponseOfProfileResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfProfileResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfProfileResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfProfileResponseCWProxy get copyWith =>
      _$BaseResponseOfProfileResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfProfileResponse _$BaseResponseOfProfileResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfProfileResponse', json, ($checkedConvert) {
  final val = BaseResponseOfProfileResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : ProfileResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfProfileResponseToJson(
  BaseResponseOfProfileResponse instance,
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
