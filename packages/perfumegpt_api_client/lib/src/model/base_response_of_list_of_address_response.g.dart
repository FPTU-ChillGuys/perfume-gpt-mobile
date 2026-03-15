// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_address_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfAddressResponseCWProxy {
  BaseResponseOfListOfAddressResponse payload(List<AddressResponse>? payload);

  BaseResponseOfListOfAddressResponse success(bool? success);

  BaseResponseOfListOfAddressResponse message(String? message);

  BaseResponseOfListOfAddressResponse errors(List<String>? errors);

  BaseResponseOfListOfAddressResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfAddressResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfAddressResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfAddressResponse call({
    List<AddressResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfAddressResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfAddressResponse.copyWith.fieldName(...)`
class _$BaseResponseOfListOfAddressResponseCWProxyImpl
    implements _$BaseResponseOfListOfAddressResponseCWProxy {
  const _$BaseResponseOfListOfAddressResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfAddressResponse _value;

  @override
  BaseResponseOfListOfAddressResponse payload(List<AddressResponse>? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfListOfAddressResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfAddressResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfAddressResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfAddressResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfAddressResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfAddressResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfAddressResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfAddressResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<AddressResponse>?,
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

extension $BaseResponseOfListOfAddressResponseCopyWith
    on BaseResponseOfListOfAddressResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfAddressResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfAddressResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfAddressResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfAddressResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfAddressResponse
_$BaseResponseOfListOfAddressResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfAddressResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfAddressResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map((e) => AddressResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfListOfAddressResponseToJson(
  BaseResponseOfListOfAddressResponse instance,
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
