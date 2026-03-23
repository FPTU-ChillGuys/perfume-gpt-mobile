// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_level4_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddressLevel4ResponseCWProxy {
  AddressLevel4Response data(List<String>? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AddressLevel4Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AddressLevel4Response(...).copyWith(id: 12, name: "My name")
  /// ```
  AddressLevel4Response call({List<String>? data});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAddressLevel4Response.copyWith(...)` or call `instanceOfAddressLevel4Response.copyWith.fieldName(value)` for a single field.
class _$AddressLevel4ResponseCWProxyImpl
    implements _$AddressLevel4ResponseCWProxy {
  const _$AddressLevel4ResponseCWProxyImpl(this._value);

  final AddressLevel4Response _value;

  @override
  AddressLevel4Response data(List<String>? data) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AddressLevel4Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AddressLevel4Response(...).copyWith(id: 12, name: "My name")
  /// ```
  AddressLevel4Response call({Object? data = const $CopyWithPlaceholder()}) {
    return AddressLevel4Response(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as List<String>?,
    );
  }
}

extension $AddressLevel4ResponseCopyWith on AddressLevel4Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAddressLevel4Response.copyWith(...)` or `instanceOfAddressLevel4Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AddressLevel4ResponseCWProxy get copyWith =>
      _$AddressLevel4ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressLevel4Response _$AddressLevel4ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AddressLevel4Response', json, ($checkedConvert) {
  final val = AddressLevel4Response(
    data: $checkedConvert(
      'data',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$AddressLevel4ResponseToJson(
  AddressLevel4Response instance,
) => <String, dynamic>{'data': ?instance.data};
