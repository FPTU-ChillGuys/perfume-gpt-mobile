// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_value_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AttributeValueLookupItemCWProxy {
  AttributeValueLookupItem id(int? id);

  AttributeValueLookupItem value(String? value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AttributeValueLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AttributeValueLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  AttributeValueLookupItem call({int? id, String? value});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAttributeValueLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAttributeValueLookupItem.copyWith.fieldName(...)`
class _$AttributeValueLookupItemCWProxyImpl
    implements _$AttributeValueLookupItemCWProxy {
  const _$AttributeValueLookupItemCWProxyImpl(this._value);

  final AttributeValueLookupItem _value;

  @override
  AttributeValueLookupItem id(int? id) => this(id: id);

  @override
  AttributeValueLookupItem value(String? value) => this(value: value);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AttributeValueLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AttributeValueLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  AttributeValueLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return AttributeValueLookupItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String?,
    );
  }
}

extension $AttributeValueLookupItemCopyWith on AttributeValueLookupItem {
  /// Returns a callable class that can be used as follows: `instanceOfAttributeValueLookupItem.copyWith(...)` or like so:`instanceOfAttributeValueLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AttributeValueLookupItemCWProxy get copyWith =>
      _$AttributeValueLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributeValueLookupItem _$AttributeValueLookupItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AttributeValueLookupItem', json, ($checkedConvert) {
  final val = AttributeValueLookupItem(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    value: $checkedConvert('value', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$AttributeValueLookupItemToJson(
  AttributeValueLookupItem instance,
) => <String, dynamic>{'id': ?instance.id, 'value': ?instance.value};
