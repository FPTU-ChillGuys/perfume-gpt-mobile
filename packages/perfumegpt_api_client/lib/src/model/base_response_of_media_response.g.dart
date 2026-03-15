// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_media_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfMediaResponseCWProxy {
  BaseResponseOfMediaResponse payload(MediaResponse? payload);

  BaseResponseOfMediaResponse success(bool? success);

  BaseResponseOfMediaResponse message(String? message);

  BaseResponseOfMediaResponse errors(List<String>? errors);

  BaseResponseOfMediaResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfMediaResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfMediaResponse call({
    MediaResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfMediaResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfMediaResponse.copyWith.fieldName(...)`
class _$BaseResponseOfMediaResponseCWProxyImpl
    implements _$BaseResponseOfMediaResponseCWProxy {
  const _$BaseResponseOfMediaResponseCWProxyImpl(this._value);

  final BaseResponseOfMediaResponse _value;

  @override
  BaseResponseOfMediaResponse payload(MediaResponse? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfMediaResponse success(bool? success) => this(success: success);

  @override
  BaseResponseOfMediaResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfMediaResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfMediaResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfMediaResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfMediaResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfMediaResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as MediaResponse?,
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

extension $BaseResponseOfMediaResponseCopyWith on BaseResponseOfMediaResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfMediaResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfMediaResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfMediaResponseCWProxy get copyWith =>
      _$BaseResponseOfMediaResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfMediaResponse _$BaseResponseOfMediaResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfMediaResponse', json, ($checkedConvert) {
  final val = BaseResponseOfMediaResponse(
    payload: $checkedConvert(
      'payload',
      (v) =>
          v == null ? null : MediaResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfMediaResponseToJson(
  BaseResponseOfMediaResponse instance,
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
