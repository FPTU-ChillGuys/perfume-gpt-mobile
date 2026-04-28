// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_card_variant_output_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductCardVariantOutputDtoCWProxy {
  ProductCardVariantOutputDto id(String id);

  ProductCardVariantOutputDto sku(String sku);

  ProductCardVariantOutputDto volumeMl(num volumeMl);

  ProductCardVariantOutputDto basePrice(num basePrice);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductCardVariantOutputDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductCardVariantOutputDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductCardVariantOutputDto call({
    String id,
    String sku,
    num volumeMl,
    num basePrice,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductCardVariantOutputDto.copyWith(...)` or call `instanceOfProductCardVariantOutputDto.copyWith.fieldName(value)` for a single field.
class _$ProductCardVariantOutputDtoCWProxyImpl
    implements _$ProductCardVariantOutputDtoCWProxy {
  const _$ProductCardVariantOutputDtoCWProxyImpl(this._value);

  final ProductCardVariantOutputDto _value;

  @override
  ProductCardVariantOutputDto id(String id) => call(id: id);

  @override
  ProductCardVariantOutputDto sku(String sku) => call(sku: sku);

  @override
  ProductCardVariantOutputDto volumeMl(num volumeMl) =>
      call(volumeMl: volumeMl);

  @override
  ProductCardVariantOutputDto basePrice(num basePrice) =>
      call(basePrice: basePrice);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductCardVariantOutputDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductCardVariantOutputDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductCardVariantOutputDto call({
    Object? id = const $CopyWithPlaceholder(),
    Object? sku = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? basePrice = const $CopyWithPlaceholder(),
  }) {
    return ProductCardVariantOutputDto(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      sku: sku == const $CopyWithPlaceholder() || sku == null
          ? _value.sku
          // ignore: cast_nullable_to_non_nullable
          : sku as String,
      volumeMl: volumeMl == const $CopyWithPlaceholder() || volumeMl == null
          ? _value.volumeMl
          // ignore: cast_nullable_to_non_nullable
          : volumeMl as num,
      basePrice: basePrice == const $CopyWithPlaceholder() || basePrice == null
          ? _value.basePrice
          // ignore: cast_nullable_to_non_nullable
          : basePrice as num,
    );
  }
}

extension $ProductCardVariantOutputDtoCopyWith on ProductCardVariantOutputDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductCardVariantOutputDto.copyWith(...)` or `instanceOfProductCardVariantOutputDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductCardVariantOutputDtoCWProxy get copyWith =>
      _$ProductCardVariantOutputDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCardVariantOutputDto _$ProductCardVariantOutputDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductCardVariantOutputDto', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['id', 'sku', 'volumeMl', 'basePrice']);
  final val = ProductCardVariantOutputDto(
    id: $checkedConvert('id', (v) => v as String),
    sku: $checkedConvert('sku', (v) => v as String),
    volumeMl: $checkedConvert('volumeMl', (v) => v as num),
    basePrice: $checkedConvert('basePrice', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$ProductCardVariantOutputDtoToJson(
  ProductCardVariantOutputDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'sku': instance.sku,
  'volumeMl': instance.volumeMl,
  'basePrice': instance.basePrice,
};
