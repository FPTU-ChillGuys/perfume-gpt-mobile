// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_card_variant_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductCardVariantResponseCWProxy {
  ProductCardVariantResponse id(String id);

  ProductCardVariantResponse sku(String sku);

  ProductCardVariantResponse volumeMl(num volumeMl);

  ProductCardVariantResponse basePrice(num basePrice);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductCardVariantResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductCardVariantResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductCardVariantResponse call({
    String id,
    String sku,
    num volumeMl,
    num basePrice,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductCardVariantResponse.copyWith(...)` or call `instanceOfProductCardVariantResponse.copyWith.fieldName(value)` for a single field.
class _$ProductCardVariantResponseCWProxyImpl
    implements _$ProductCardVariantResponseCWProxy {
  const _$ProductCardVariantResponseCWProxyImpl(this._value);

  final ProductCardVariantResponse _value;

  @override
  ProductCardVariantResponse id(String id) => call(id: id);

  @override
  ProductCardVariantResponse sku(String sku) => call(sku: sku);

  @override
  ProductCardVariantResponse volumeMl(num volumeMl) => call(volumeMl: volumeMl);

  @override
  ProductCardVariantResponse basePrice(num basePrice) =>
      call(basePrice: basePrice);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductCardVariantResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductCardVariantResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductCardVariantResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? sku = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? basePrice = const $CopyWithPlaceholder(),
  }) {
    return ProductCardVariantResponse(
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

extension $ProductCardVariantResponseCopyWith on ProductCardVariantResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductCardVariantResponse.copyWith(...)` or `instanceOfProductCardVariantResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductCardVariantResponseCWProxy get copyWith =>
      _$ProductCardVariantResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCardVariantResponse _$ProductCardVariantResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductCardVariantResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['id', 'sku', 'volumeMl', 'basePrice']);
  final val = ProductCardVariantResponse(
    id: $checkedConvert('id', (v) => v as String),
    sku: $checkedConvert('sku', (v) => v as String),
    volumeMl: $checkedConvert('volumeMl', (v) => v as num),
    basePrice: $checkedConvert('basePrice', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$ProductCardVariantResponseToJson(
  ProductCardVariantResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'sku': instance.sku,
  'volumeMl': instance.volumeMl,
  'basePrice': instance.basePrice,
};
