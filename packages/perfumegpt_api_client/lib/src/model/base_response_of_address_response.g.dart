// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_address_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfAddressResponseCWProxy {
  BaseResponseOfAddressResponse payload(AddressResponse? payload);

  BaseResponseOfAddressResponse success(bool? success);

  BaseResponseOfAddressResponse message(String? message);

  BaseResponseOfAddressResponse errors(List<String>? errors);

  BaseResponseOfAddressResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfAddressResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfAddressResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfAddressResponse call({
    AddressResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfAddressResponse.copyWith(...)` or call `instanceOfBaseResponseOfAddressResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfAddressResponseCWProxyImpl
    implements _$BaseResponseOfAddressResponseCWProxy {
  const _$BaseResponseOfAddressResponseCWProxyImpl(this._value);

  final BaseResponseOfAddressResponse _value;

  @override
  BaseResponseOfAddressResponse payload(AddressResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfAddressResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfAddressResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfAddressResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfAddressResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfAddressResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfAddressResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfAddressResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfAddressResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as AddressResponse?,
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

extension $BaseResponseOfAddressResponseCopyWith
    on BaseResponseOfAddressResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfAddressResponse.copyWith(...)` or `instanceOfBaseResponseOfAddressResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfAddressResponseCWProxy get copyWith =>
      _$BaseResponseOfAddressResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfAddressResponse _$BaseResponseOfAddressResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfAddressResponse', json, ($checkedConvert) {
  final val = BaseResponseOfAddressResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : AddressResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfAddressResponseToJson(
  BaseResponseOfAddressResponse instance,
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
