// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_value_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AttributeValueLookupItemCWProxy {
  AttributeValueLookupItem id(int? id);

  AttributeValueLookupItem value(String value);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AttributeValueLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AttributeValueLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  AttributeValueLookupItem call({int? id, String value});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAttributeValueLookupItem.copyWith(...)` or call `instanceOfAttributeValueLookupItem.copyWith.fieldName(value)` for a single field.
class _$AttributeValueLookupItemCWProxyImpl
    implements _$AttributeValueLookupItemCWProxy {
  const _$AttributeValueLookupItemCWProxyImpl(this._value);

  final AttributeValueLookupItem _value;

  @override
  AttributeValueLookupItem id(int? id) => call(id: id);

  @override
  AttributeValueLookupItem value(String value) => call(value: value);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AttributeValueLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AttributeValueLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  AttributeValueLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return AttributeValueLookupItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      value: value == const $CopyWithPlaceholder() || value == null
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String,
    );
  }
}

extension $AttributeValueLookupItemCopyWith on AttributeValueLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAttributeValueLookupItem.copyWith(...)` or `instanceOfAttributeValueLookupItem.copyWith.fieldName(...)`.
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
  $checkKeys(json, requiredKeys: const ['value']);
  final val = AttributeValueLookupItem(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    value: $checkedConvert('value', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$AttributeValueLookupItemToJson(
  AttributeValueLookupItem instance,
) => <String, dynamic>{'id': ?instance.id, 'value': instance.value};
