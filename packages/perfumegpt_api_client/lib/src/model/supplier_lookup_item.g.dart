// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SupplierLookupItemCWProxy {
  SupplierLookupItem id(int? id);

  SupplierLookupItem name(String? name);

  SupplierLookupItem phone(String? phone);

  SupplierLookupItem contactEmail(String? contactEmail);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SupplierLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SupplierLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  SupplierLookupItem call({
    int? id,
    String? name,
    String? phone,
    String? contactEmail,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSupplierLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSupplierLookupItem.copyWith.fieldName(...)`
class _$SupplierLookupItemCWProxyImpl implements _$SupplierLookupItemCWProxy {
  const _$SupplierLookupItemCWProxyImpl(this._value);

  final SupplierLookupItem _value;

  @override
  SupplierLookupItem id(int? id) => this(id: id);

  @override
  SupplierLookupItem name(String? name) => this(name: name);

  @override
  SupplierLookupItem phone(String? phone) => this(phone: phone);

  @override
  SupplierLookupItem contactEmail(String? contactEmail) =>
      this(contactEmail: contactEmail);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SupplierLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SupplierLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
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
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
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
  /// Returns a callable class that can be used as follows: `instanceOfSupplierLookupItem.copyWith(...)` or like so:`instanceOfSupplierLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SupplierLookupItemCWProxy get copyWith =>
      _$SupplierLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupplierLookupItem _$SupplierLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SupplierLookupItem', json, ($checkedConvert) {
      final val = SupplierLookupItem(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        phone: $checkedConvert('phone', (v) => v as String?),
        contactEmail: $checkedConvert('contactEmail', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$SupplierLookupItemToJson(SupplierLookupItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'phone': ?instance.phone,
      'contactEmail': ?instance.contactEmail,
    };
