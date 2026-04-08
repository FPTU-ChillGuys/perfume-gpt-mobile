// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CategoriesLookupItemCWProxy {
  CategoriesLookupItem id(int? id);

  CategoriesLookupItem name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CategoriesLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CategoriesLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  CategoriesLookupItem call({int? id, String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCategoriesLookupItem.copyWith(...)` or call `instanceOfCategoriesLookupItem.copyWith.fieldName(value)` for a single field.
class _$CategoriesLookupItemCWProxyImpl
    implements _$CategoriesLookupItemCWProxy {
  const _$CategoriesLookupItemCWProxyImpl(this._value);

  final CategoriesLookupItem _value;

  @override
  CategoriesLookupItem id(int? id) => call(id: id);

  @override
  CategoriesLookupItem name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CategoriesLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CategoriesLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  CategoriesLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return CategoriesLookupItem(
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

extension $CategoriesLookupItemCopyWith on CategoriesLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCategoriesLookupItem.copyWith(...)` or `instanceOfCategoriesLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CategoriesLookupItemCWProxy get copyWith =>
      _$CategoriesLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesLookupItem _$CategoriesLookupItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CategoriesLookupItem', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = CategoriesLookupItem(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$CategoriesLookupItemToJson(
  CategoriesLookupItem instance,
) => <String, dynamic>{'id': ?instance.id, 'name': instance.name};
