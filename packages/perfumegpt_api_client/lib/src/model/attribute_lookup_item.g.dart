// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AttributeLookupItemCWProxy {
  AttributeLookupItem id(int? id);

  AttributeLookupItem internalCode(String? internalCode);

  AttributeLookupItem name(String? name);

  AttributeLookupItem description(String? description);

  AttributeLookupItem isVariantLevel(bool? isVariantLevel);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AttributeLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AttributeLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  AttributeLookupItem call({
    int? id,
    String? internalCode,
    String? name,
    String? description,
    bool? isVariantLevel,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAttributeLookupItem.copyWith(...)` or call `instanceOfAttributeLookupItem.copyWith.fieldName(value)` for a single field.
class _$AttributeLookupItemCWProxyImpl implements _$AttributeLookupItemCWProxy {
  const _$AttributeLookupItemCWProxyImpl(this._value);

  final AttributeLookupItem _value;

  @override
  AttributeLookupItem id(int? id) => call(id: id);

  @override
  AttributeLookupItem internalCode(String? internalCode) =>
      call(internalCode: internalCode);

  @override
  AttributeLookupItem name(String? name) => call(name: name);

  @override
  AttributeLookupItem description(String? description) =>
      call(description: description);

  @override
  AttributeLookupItem isVariantLevel(bool? isVariantLevel) =>
      call(isVariantLevel: isVariantLevel);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AttributeLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AttributeLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  AttributeLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? internalCode = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? isVariantLevel = const $CopyWithPlaceholder(),
  }) {
    return AttributeLookupItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      internalCode: internalCode == const $CopyWithPlaceholder()
          ? _value.internalCode
          // ignore: cast_nullable_to_non_nullable
          : internalCode as String?,
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAttributeLookupItem.copyWith(...)` or `instanceOfAttributeLookupItem.copyWith.fieldName(...)`.
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
        internalCode: $checkedConvert('internalCode', (v) => v as String?),
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
  'internalCode': ?instance.internalCode,
  'name': ?instance.name,
  'description': ?instance.description,
  'isVariantLevel': ?instance.isVariantLevel,
};
