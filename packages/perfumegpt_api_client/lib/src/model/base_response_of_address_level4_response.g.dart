// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_address_level4_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfAddressLevel4ResponseCWProxy {
  BaseResponseOfAddressLevel4Response payload(AddressLevel4Response? payload);

  BaseResponseOfAddressLevel4Response success(bool? success);

  BaseResponseOfAddressLevel4Response message(String? message);

  BaseResponseOfAddressLevel4Response errors(List<String>? errors);

  BaseResponseOfAddressLevel4Response errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfAddressLevel4Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfAddressLevel4Response(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfAddressLevel4Response call({
    AddressLevel4Response? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfAddressLevel4Response.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfAddressLevel4Response.copyWith.fieldName(...)`
class _$BaseResponseOfAddressLevel4ResponseCWProxyImpl
    implements _$BaseResponseOfAddressLevel4ResponseCWProxy {
  const _$BaseResponseOfAddressLevel4ResponseCWProxyImpl(this._value);

  final BaseResponseOfAddressLevel4Response _value;

  @override
  BaseResponseOfAddressLevel4Response payload(AddressLevel4Response? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfAddressLevel4Response success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfAddressLevel4Response message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfAddressLevel4Response errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfAddressLevel4Response errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfAddressLevel4Response(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfAddressLevel4Response(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfAddressLevel4Response call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfAddressLevel4Response(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as AddressLevel4Response?,
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

extension $BaseResponseOfAddressLevel4ResponseCopyWith
    on BaseResponseOfAddressLevel4Response {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfAddressLevel4Response.copyWith(...)` or like so:`instanceOfBaseResponseOfAddressLevel4Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfAddressLevel4ResponseCWProxy get copyWith =>
      _$BaseResponseOfAddressLevel4ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfAddressLevel4Response
_$BaseResponseOfAddressLevel4ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfAddressLevel4Response', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfAddressLevel4Response(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : AddressLevel4Response.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfAddressLevel4ResponseToJson(
  BaseResponseOfAddressLevel4Response instance,
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
