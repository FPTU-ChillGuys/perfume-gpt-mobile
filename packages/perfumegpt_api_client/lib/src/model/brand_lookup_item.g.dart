// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BrandLookupItemCWProxy {
  BrandLookupItem id(int? id);

  BrandLookupItem name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BrandLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BrandLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BrandLookupItem call({int? id, String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBrandLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBrandLookupItem.copyWith.fieldName(...)`
class _$BrandLookupItemCWProxyImpl implements _$BrandLookupItemCWProxy {
  const _$BrandLookupItemCWProxyImpl(this._value);

  final BrandLookupItem _value;

  @override
  BrandLookupItem id(int? id) => this(id: id);

  @override
  BrandLookupItem name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BrandLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BrandLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BrandLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return BrandLookupItem(
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

extension $BrandLookupItemCopyWith on BrandLookupItem {
  /// Returns a callable class that can be used as follows: `instanceOfBrandLookupItem.copyWith(...)` or like so:`instanceOfBrandLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BrandLookupItemCWProxy get copyWith => _$BrandLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandLookupItem _$BrandLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BrandLookupItem', json, ($checkedConvert) {
      final val = BrandLookupItem(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$BrandLookupItemToJson(BrandLookupItem instance) =>
    <String, dynamic>{'id': ?instance.id, 'name': ?instance.name};
