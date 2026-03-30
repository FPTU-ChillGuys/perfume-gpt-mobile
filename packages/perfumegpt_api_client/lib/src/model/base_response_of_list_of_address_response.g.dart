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

  BaseResponseOfListOfAddressResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfAddressResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfAddressResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfAddressResponse call({
    List<AddressResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfAddressResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfAddressResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfAddressResponseCWProxyImpl
    implements _$BaseResponseOfListOfAddressResponseCWProxy {
  const _$BaseResponseOfListOfAddressResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfAddressResponse _value;

  @override
  BaseResponseOfListOfAddressResponse payload(List<AddressResponse>? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfListOfAddressResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfAddressResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfAddressResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfAddressResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfAddressResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfAddressResponse(...).copyWith(id: 12, name: "My name")
  /// ```
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
          : errorType as int?,
    );
  }
}

extension $BaseResponseOfListOfAddressResponseCopyWith
    on BaseResponseOfListOfAddressResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfAddressResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfAddressResponse.copyWith.fieldName(...)`.
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
        errorType: $checkedConvert('errorType', (v) => (v as num?)?.toInt()),
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
  'errorType': ?instance.errorType,
};
