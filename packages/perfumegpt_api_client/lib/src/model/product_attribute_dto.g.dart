// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductAttributeDtoCWProxy {
  ProductAttributeDto attributeId(int? attributeId);

  ProductAttributeDto valueId(int? valueId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductAttributeDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductAttributeDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductAttributeDto call({int? attributeId, int? valueId});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductAttributeDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductAttributeDto.copyWith.fieldName(...)`
class _$ProductAttributeDtoCWProxyImpl implements _$ProductAttributeDtoCWProxy {
  const _$ProductAttributeDtoCWProxyImpl(this._value);

  final ProductAttributeDto _value;

  @override
  ProductAttributeDto attributeId(int? attributeId) =>
      this(attributeId: attributeId);

  @override
  ProductAttributeDto valueId(int? valueId) => this(valueId: valueId);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductAttributeDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductAttributeDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductAttributeDto call({
    Object? attributeId = const $CopyWithPlaceholder(),
    Object? valueId = const $CopyWithPlaceholder(),
  }) {
    return ProductAttributeDto(
      attributeId: attributeId == const $CopyWithPlaceholder()
          ? _value.attributeId
          // ignore: cast_nullable_to_non_nullable
          : attributeId as int?,
      valueId: valueId == const $CopyWithPlaceholder()
          ? _value.valueId
          // ignore: cast_nullable_to_non_nullable
          : valueId as int?,
    );
  }
}

extension $ProductAttributeDtoCopyWith on ProductAttributeDto {
  /// Returns a callable class that can be used as follows: `instanceOfProductAttributeDto.copyWith(...)` or like so:`instanceOfProductAttributeDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductAttributeDtoCWProxy get copyWith =>
      _$ProductAttributeDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAttributeDto _$ProductAttributeDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductAttributeDto', json, ($checkedConvert) {
      final val = ProductAttributeDto(
        attributeId: $checkedConvert(
          'attributeId',
          (v) => (v as num?)?.toInt(),
        ),
        valueId: $checkedConvert('valueId', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ProductAttributeDtoToJson(
  ProductAttributeDto instance,
) => <String, dynamic>{
  'attributeId': ?instance.attributeId,
  'valueId': ?instance.valueId,
};
