// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_media_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfMediaResponseCWProxy {
  BaseResponseOfListOfMediaResponse payload(List<MediaResponse>? payload);

  BaseResponseOfListOfMediaResponse success(bool? success);

  BaseResponseOfListOfMediaResponse message(String? message);

  BaseResponseOfListOfMediaResponse errors(List<String>? errors);

  BaseResponseOfListOfMediaResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfMediaResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfMediaResponse call({
    List<MediaResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfMediaResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfMediaResponse.copyWith.fieldName(...)`
class _$BaseResponseOfListOfMediaResponseCWProxyImpl
    implements _$BaseResponseOfListOfMediaResponseCWProxy {
  const _$BaseResponseOfListOfMediaResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfMediaResponse _value;

  @override
  BaseResponseOfListOfMediaResponse payload(List<MediaResponse>? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfListOfMediaResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfMediaResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfMediaResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfMediaResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfMediaResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfMediaResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfMediaResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<MediaResponse>?,
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

extension $BaseResponseOfListOfMediaResponseCopyWith
    on BaseResponseOfListOfMediaResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfMediaResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfMediaResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfMediaResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfMediaResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfMediaResponse _$BaseResponseOfListOfMediaResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfMediaResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfMediaResponse(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map((e) => MediaResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfListOfMediaResponseToJson(
  BaseResponseOfListOfMediaResponse instance,
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
