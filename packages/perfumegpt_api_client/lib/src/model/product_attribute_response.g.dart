// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductAttributeResponseCWProxy {
  ProductAttributeResponse id(String? id);

  ProductAttributeResponse attributeId(int? attributeId);

  ProductAttributeResponse valueId(int? valueId);

  ProductAttributeResponse attribute(String? attribute);

  ProductAttributeResponse description(String? description);

  ProductAttributeResponse value(String? value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductAttributeResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductAttributeResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductAttributeResponse call({
    String? id,
    int? attributeId,
    int? valueId,
    String? attribute,
    String? description,
    String? value,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductAttributeResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductAttributeResponse.copyWith.fieldName(...)`
class _$ProductAttributeResponseCWProxyImpl
    implements _$ProductAttributeResponseCWProxy {
  const _$ProductAttributeResponseCWProxyImpl(this._value);

  final ProductAttributeResponse _value;

  @override
  ProductAttributeResponse id(String? id) => this(id: id);

  @override
  ProductAttributeResponse attributeId(int? attributeId) =>
      this(attributeId: attributeId);

  @override
  ProductAttributeResponse valueId(int? valueId) => this(valueId: valueId);

  @override
  ProductAttributeResponse attribute(String? attribute) =>
      this(attribute: attribute);

  @override
  ProductAttributeResponse description(String? description) =>
      this(description: description);

  @override
  ProductAttributeResponse value(String? value) => this(value: value);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductAttributeResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductAttributeResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductAttributeResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? attributeId = const $CopyWithPlaceholder(),
    Object? valueId = const $CopyWithPlaceholder(),
    Object? attribute = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return ProductAttributeResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      attributeId: attributeId == const $CopyWithPlaceholder()
          ? _value.attributeId
          // ignore: cast_nullable_to_non_nullable
          : attributeId as int?,
      valueId: valueId == const $CopyWithPlaceholder()
          ? _value.valueId
          // ignore: cast_nullable_to_non_nullable
          : valueId as int?,
      attribute: attribute == const $CopyWithPlaceholder()
          ? _value.attribute
          // ignore: cast_nullable_to_non_nullable
          : attribute as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String?,
    );
  }
}

extension $ProductAttributeResponseCopyWith on ProductAttributeResponse {
  /// Returns a callable class that can be used as follows: `instanceOfProductAttributeResponse.copyWith(...)` or like so:`instanceOfProductAttributeResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductAttributeResponseCWProxy get copyWith =>
      _$ProductAttributeResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAttributeResponse _$ProductAttributeResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductAttributeResponse', json, ($checkedConvert) {
  final val = ProductAttributeResponse(
    id: $checkedConvert('id', (v) => v as String?),
    attributeId: $checkedConvert('attributeId', (v) => (v as num?)?.toInt()),
    valueId: $checkedConvert('valueId', (v) => (v as num?)?.toInt()),
    attribute: $checkedConvert('attribute', (v) => v as String?),
    description: $checkedConvert('description', (v) => v as String?),
    value: $checkedConvert('value', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ProductAttributeResponseToJson(
  ProductAttributeResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'attributeId': ?instance.attributeId,
  'valueId': ?instance.valueId,
  'attribute': ?instance.attribute,
  'description': ?instance.description,
  'value': ?instance.value,
};
