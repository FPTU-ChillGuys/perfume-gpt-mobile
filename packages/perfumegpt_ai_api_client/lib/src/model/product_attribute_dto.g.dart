// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductAttributeDtoCWProxy {
  ProductAttributeDto attributeId(int? attributeId);

  ProductAttributeDto valueId(int? valueId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductAttributeDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductAttributeDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductAttributeDto call({int? attributeId, int? valueId});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductAttributeDto.copyWith(...)` or call `instanceOfProductAttributeDto.copyWith.fieldName(value)` for a single field.
class _$ProductAttributeDtoCWProxyImpl implements _$ProductAttributeDtoCWProxy {
  const _$ProductAttributeDtoCWProxyImpl(this._value);

  final ProductAttributeDto _value;

  @override
  ProductAttributeDto attributeId(int? attributeId) =>
      call(attributeId: attributeId);

  @override
  ProductAttributeDto valueId(int? valueId) => call(valueId: valueId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductAttributeDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductAttributeDto(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductAttributeDto.copyWith(...)` or `instanceOfProductAttributeDto.copyWith.fieldName(...)`.
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
