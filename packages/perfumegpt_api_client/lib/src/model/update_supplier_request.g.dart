// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_supplier_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateSupplierRequestCWProxy {
  UpdateSupplierRequest name(String name);

  UpdateSupplierRequest contactEmail(String contactEmail);

  UpdateSupplierRequest phone(String phone);

  UpdateSupplierRequest address(String address);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateSupplierRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateSupplierRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateSupplierRequest call({
    String name,
    String contactEmail,
    String phone,
    String address,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateSupplierRequest.copyWith(...)` or call `instanceOfUpdateSupplierRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateSupplierRequestCWProxyImpl
    implements _$UpdateSupplierRequestCWProxy {
  const _$UpdateSupplierRequestCWProxyImpl(this._value);

  final UpdateSupplierRequest _value;

  @override
  UpdateSupplierRequest name(String name) => call(name: name);

  @override
  UpdateSupplierRequest contactEmail(String contactEmail) =>
      call(contactEmail: contactEmail);

  @override
  UpdateSupplierRequest phone(String phone) => call(phone: phone);

  @override
  UpdateSupplierRequest address(String address) => call(address: address);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateSupplierRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateSupplierRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateSupplierRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? contactEmail = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
  }) {
    return UpdateSupplierRequest(
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

extension $UpdateSupplierRequestCopyWith on UpdateSupplierRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateSupplierRequest.copyWith(...)` or `instanceOfUpdateSupplierRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateSupplierRequestCWProxy get copyWith =>
      _$UpdateSupplierRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateSupplierRequest _$UpdateSupplierRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateSupplierRequest', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['name', 'contactEmail', 'phone', 'address'],
  );
  final val = UpdateSupplierRequest(
    name: $checkedConvert('name', (v) => v as String),
    contactEmail: $checkedConvert('contactEmail', (v) => v as String),
    phone: $checkedConvert('phone', (v) => v as String),
    address: $checkedConvert('address', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$UpdateSupplierRequestToJson(
  UpdateSupplierRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'contactEmail': instance.contactEmail,
  'phone': instance.phone,
  'address': instance.address,
};
