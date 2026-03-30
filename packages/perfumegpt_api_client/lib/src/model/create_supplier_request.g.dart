// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_supplier_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateSupplierRequestCWProxy {
  CreateSupplierRequest name(String name);

  CreateSupplierRequest contactEmail(String contactEmail);

  CreateSupplierRequest phone(String phone);

  CreateSupplierRequest address(String address);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateSupplierRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateSupplierRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateSupplierRequest call({
    String name,
    String contactEmail,
    String phone,
    String address,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateSupplierRequest.copyWith(...)` or call `instanceOfCreateSupplierRequest.copyWith.fieldName(value)` for a single field.
class _$CreateSupplierRequestCWProxyImpl
    implements _$CreateSupplierRequestCWProxy {
  const _$CreateSupplierRequestCWProxyImpl(this._value);

  final CreateSupplierRequest _value;

  @override
  CreateSupplierRequest name(String name) => call(name: name);

  @override
  CreateSupplierRequest contactEmail(String contactEmail) =>
      call(contactEmail: contactEmail);

  @override
  CreateSupplierRequest phone(String phone) => call(phone: phone);

  @override
  CreateSupplierRequest address(String address) => call(address: address);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateSupplierRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateSupplierRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateSupplierRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? contactEmail = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
  }) {
    return CreateSupplierRequest(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      contactEmail:
          contactEmail == const $CopyWithPlaceholder() || contactEmail == null
          ? _value.contactEmail
          // ignore: cast_nullable_to_non_nullable
          : contactEmail as String,
      phone: phone == const $CopyWithPlaceholder() || phone == null
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String,
      address: address == const $CopyWithPlaceholder() || address == null
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String,
    );
  }
}

extension $CreateSupplierRequestCopyWith on CreateSupplierRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateSupplierRequest.copyWith(...)` or `instanceOfCreateSupplierRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateSupplierRequestCWProxy get copyWith =>
      _$CreateSupplierRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateSupplierRequest _$CreateSupplierRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateSupplierRequest', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['name', 'contactEmail', 'phone', 'address'],
  );
  final val = CreateSupplierRequest(
    name: $checkedConvert('name', (v) => v as String),
    contactEmail: $checkedConvert('contactEmail', (v) => v as String),
    phone: $checkedConvert('phone', (v) => v as String),
    address: $checkedConvert('address', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$CreateSupplierRequestToJson(
  CreateSupplierRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'contactEmail': instance.contactEmail,
  'phone': instance.phone,
  'address': instance.address,
};
