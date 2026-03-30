// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SupplierResponseCWProxy {
  SupplierResponse id(int? id);

  SupplierResponse name(String? name);

  SupplierResponse contactEmail(String? contactEmail);

  SupplierResponse phone(String? phone);

  SupplierResponse address(String? address);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SupplierResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SupplierResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SupplierResponse call({
    int? id,
    String? name,
    String? contactEmail,
    String? phone,
    String? address,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSupplierResponse.copyWith(...)` or call `instanceOfSupplierResponse.copyWith.fieldName(value)` for a single field.
class _$SupplierResponseCWProxyImpl implements _$SupplierResponseCWProxy {
  const _$SupplierResponseCWProxyImpl(this._value);

  final SupplierResponse _value;

  @override
  SupplierResponse id(int? id) => call(id: id);

  @override
  SupplierResponse name(String? name) => call(name: name);

  @override
  SupplierResponse contactEmail(String? contactEmail) =>
      call(contactEmail: contactEmail);

  @override
  SupplierResponse phone(String? phone) => call(phone: phone);

  @override
  SupplierResponse address(String? address) => call(address: address);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SupplierResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SupplierResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SupplierResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? contactEmail = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
  }) {
    return SupplierResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      contactEmail: contactEmail == const $CopyWithPlaceholder()
          ? _value.contactEmail
          // ignore: cast_nullable_to_non_nullable
          : contactEmail as String?,
      phone: phone == const $CopyWithPlaceholder()
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String?,
      address: address == const $CopyWithPlaceholder()
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String?,
    );
  }
}

extension $SupplierResponseCopyWith on SupplierResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSupplierResponse.copyWith(...)` or `instanceOfSupplierResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SupplierResponseCWProxy get copyWith => _$SupplierResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupplierResponse _$SupplierResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SupplierResponse', json, ($checkedConvert) {
      final val = SupplierResponse(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        contactEmail: $checkedConvert('contactEmail', (v) => v as String?),
        phone: $checkedConvert('phone', (v) => v as String?),
        address: $checkedConvert('address', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$SupplierResponseToJson(SupplierResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'contactEmail': ?instance.contactEmail,
      'phone': ?instance.phone,
      'address': ?instance.address,
    };
