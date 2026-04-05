// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SupplierLookupItemCWProxy {
  SupplierLookupItem id(int? id);

  SupplierLookupItem name(String name);

  SupplierLookupItem phone(String? phone);

  SupplierLookupItem contactEmail(String? contactEmail);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SupplierLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SupplierLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  SupplierLookupItem call({
    int? id,
    String name,
    String? phone,
    String? contactEmail,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSupplierLookupItem.copyWith(...)` or call `instanceOfSupplierLookupItem.copyWith.fieldName(value)` for a single field.
class _$SupplierLookupItemCWProxyImpl implements _$SupplierLookupItemCWProxy {
  const _$SupplierLookupItemCWProxyImpl(this._value);

  final SupplierLookupItem _value;

  @override
  SupplierLookupItem id(int? id) => call(id: id);

  @override
  SupplierLookupItem name(String name) => call(name: name);

  @override
  SupplierLookupItem phone(String? phone) => call(phone: phone);

  @override
  SupplierLookupItem contactEmail(String? contactEmail) =>
      call(contactEmail: contactEmail);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SupplierLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SupplierLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  SupplierLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
    Object? contactEmail = const $CopyWithPlaceholder(),
  }) {
    return SupplierLookupItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      phone: phone == const $CopyWithPlaceholder()
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String?,
      contactEmail: contactEmail == const $CopyWithPlaceholder()
          ? _value.contactEmail
          // ignore: cast_nullable_to_non_nullable
          : contactEmail as String?,
    );
  }
}

extension $SupplierLookupItemCopyWith on SupplierLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSupplierLookupItem.copyWith(...)` or `instanceOfSupplierLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SupplierLookupItemCWProxy get copyWith =>
      _$SupplierLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupplierLookupItem _$SupplierLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SupplierLookupItem', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['name']);
      final val = SupplierLookupItem(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String),
        phone: $checkedConvert('phone', (v) => v as String?),
        contactEmail: $checkedConvert('contactEmail', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$SupplierLookupItemToJson(SupplierLookupItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': instance.name,
      'phone': ?instance.phone,
      'contactEmail': ?instance.contactEmail,
    };
