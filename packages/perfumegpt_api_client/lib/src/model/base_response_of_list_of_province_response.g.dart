// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_province_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfProvinceResponseCWProxy {
  BaseResponseOfListOfProvinceResponse payload(List<ProvinceResponse>? payload);

  BaseResponseOfListOfProvinceResponse success(bool? success);

  BaseResponseOfListOfProvinceResponse message(String? message);

  BaseResponseOfListOfProvinceResponse errors(List<String>? errors);

  BaseResponseOfListOfProvinceResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfProvinceResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfProvinceResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfProvinceResponse call({
    List<ProvinceResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfProvinceResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfProvinceResponse.copyWith.fieldName(...)`
class _$BaseResponseOfListOfProvinceResponseCWProxyImpl
    implements _$BaseResponseOfListOfProvinceResponseCWProxy {
  const _$BaseResponseOfListOfProvinceResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfProvinceResponse _value;

  @override
  BaseResponseOfListOfProvinceResponse payload(
    List<ProvinceResponse>? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfListOfProvinceResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfProvinceResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfProvinceResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfProvinceResponse errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfProvinceResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfProvinceResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfProvinceResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfProvinceResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<ProvinceResponse>?,
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

extension $BaseResponseOfListOfProvinceResponseCopyWith
    on BaseResponseOfListOfProvinceResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfProvinceResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfProvinceResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfProvinceResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfProvinceResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfProvinceResponse
_$BaseResponseOfListOfProvinceResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfProvinceResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfProvinceResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map((e) => ProvinceResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfListOfProvinceResponseToJson(
  BaseResponseOfListOfProvinceResponse instance,
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
