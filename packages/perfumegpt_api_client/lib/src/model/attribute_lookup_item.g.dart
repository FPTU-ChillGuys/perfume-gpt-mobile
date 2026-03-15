// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AttributeLookupItemCWProxy {
  AttributeLookupItem id(int? id);

  AttributeLookupItem name(String? name);

  AttributeLookupItem description(String? description);

  AttributeLookupItem isVariantLevel(bool? isVariantLevel);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AttributeLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AttributeLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  AttributeLookupItem call({
    int? id,
    String? name,
    String? description,
    bool? isVariantLevel,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAttributeLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAttributeLookupItem.copyWith.fieldName(...)`
class _$AttributeLookupItemCWProxyImpl implements _$AttributeLookupItemCWProxy {
  const _$AttributeLookupItemCWProxyImpl(this._value);

  final AttributeLookupItem _value;

  @override
  AttributeLookupItem id(int? id) => this(id: id);

  @override
  AttributeLookupItem name(String? name) => this(name: name);

  @override
  AttributeLookupItem description(String? description) =>
      this(description: description);

  @override
  AttributeLookupItem isVariantLevel(bool? isVariantLevel) =>
      this(isVariantLevel: isVariantLevel);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AttributeLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AttributeLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  AttributeLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? isVariantLevel = const $CopyWithPlaceholder(),
  }) {
    return AttributeLookupItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      isVariantLevel: isVariantLevel == const $CopyWithPlaceholder()
          ? _value.isVariantLevel
          // ignore: cast_nullable_to_non_nullable
          : isVariantLevel as bool?,
    );
  }
}

extension $AttributeLookupItemCopyWith on AttributeLookupItem {
  /// Returns a callable class that can be used as follows: `instanceOfAttributeLookupItem.copyWith(...)` or like so:`instanceOfAttributeLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AttributeLookupItemCWProxy get copyWith =>
      _$AttributeLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributeLookupItem _$AttributeLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AttributeLookupItem', json, ($checkedConvert) {
      final val = AttributeLookupItem(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
        description: $checkedConvert('description', (v) => v as String?),
        isVariantLevel: $checkedConvert('isVariantLevel', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$AttributeLookupItemToJson(
  AttributeLookupItem instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'description': ?instance.description,
  'isVariantLevel': ?instance.isVariantLevel,
};
