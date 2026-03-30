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

  BaseResponseOfAddressLevel4Response errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfAddressLevel4Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfAddressLevel4Response(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfAddressLevel4Response call({
    AddressLevel4Response? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfAddressLevel4Response.copyWith(...)` or call `instanceOfBaseResponseOfAddressLevel4Response.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfAddressLevel4ResponseCWProxyImpl
    implements _$BaseResponseOfAddressLevel4ResponseCWProxy {
  const _$BaseResponseOfAddressLevel4ResponseCWProxyImpl(this._value);

  final BaseResponseOfAddressLevel4Response _value;

  @override
  BaseResponseOfAddressLevel4Response payload(AddressLevel4Response? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfAddressLevel4Response success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfAddressLevel4Response message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfAddressLevel4Response errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfAddressLevel4Response errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfAddressLevel4Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfAddressLevel4Response(...).copyWith(id: 12, name: "My name")
  /// ```
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
          : errorType as int?,
    );
  }
}

extension $BaseResponseOfAddressLevel4ResponseCopyWith
    on BaseResponseOfAddressLevel4Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfAddressLevel4Response.copyWith(...)` or `instanceOfBaseResponseOfAddressLevel4Response.copyWith.fieldName(...)`.
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
        errorType: $checkedConvert('errorType', (v) => (v as num?)?.toInt()),
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
  'errorType': ?instance.errorType,
};
