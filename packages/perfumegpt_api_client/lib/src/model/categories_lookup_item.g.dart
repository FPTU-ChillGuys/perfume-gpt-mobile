// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CategoriesLookupItemCWProxy {
  CategoriesLookupItem id(int? id);

  CategoriesLookupItem name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CategoriesLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CategoriesLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  CategoriesLookupItem call({int? id, String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCategoriesLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCategoriesLookupItem.copyWith.fieldName(...)`
class _$CategoriesLookupItemCWProxyImpl
    implements _$CategoriesLookupItemCWProxy {
  const _$CategoriesLookupItemCWProxyImpl(this._value);

  final CategoriesLookupItem _value;

  @override
  CategoriesLookupItem id(int? id) => this(id: id);

  @override
  CategoriesLookupItem name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CategoriesLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CategoriesLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  CategoriesLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return CategoriesLookupItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $CategoriesLookupItemCopyWith on CategoriesLookupItem {
  /// Returns a callable class that can be used as follows: `instanceOfCategoriesLookupItem.copyWith(...)` or like so:`instanceOfCategoriesLookupItem.copyWith.fieldName(...)`.
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
  final val = CategoriesLookupItem(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CategoriesLookupItemToJson(
  CategoriesLookupItem instance,
) => <String, dynamic>{'id': ?instance.id, 'name': ?instance.name};
