// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BrandLookupItemCWProxy {
  BrandLookupItem id(int? id);

  BrandLookupItem name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BrandLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BrandLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BrandLookupItem call({int? id, String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBrandLookupItem.copyWith(...)` or call `instanceOfBrandLookupItem.copyWith.fieldName(value)` for a single field.
class _$BrandLookupItemCWProxyImpl implements _$BrandLookupItemCWProxy {
  const _$BrandLookupItemCWProxyImpl(this._value);

  final BrandLookupItem _value;

  @override
  BrandLookupItem id(int? id) => call(id: id);

  @override
  BrandLookupItem name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BrandLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BrandLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BrandLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return BrandLookupItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $BrandLookupItemCopyWith on BrandLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBrandLookupItem.copyWith(...)` or `instanceOfBrandLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BrandLookupItemCWProxy get copyWith => _$BrandLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandLookupItem _$BrandLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BrandLookupItem', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['name']);
      final val = BrandLookupItem(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$BrandLookupItemToJson(BrandLookupItem instance) =>
    <String, dynamic>{'id': ?instance.id, 'name': instance.name};
