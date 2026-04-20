// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductVariantResponseCWProxy {
  ProductVariantResponse id(String id);

  ProductVariantResponse productId(String productId);

  ProductVariantResponse sku(String sku);

  ProductVariantResponse barcode(String barcode);

  ProductVariantResponse volumeMl(num volumeMl);

  ProductVariantResponse type(String type);

  ProductVariantResponse basePrice(num basePrice);

  ProductVariantResponse status(String status);

  ProductVariantResponse concentrationId(num concentrationId);

  ProductVariantResponse concentration(ConcentrationResponse? concentration);

  ProductVariantResponse stock(VariantStockResponse? stock);

  ProductVariantResponse media(List<VariantMediaResponse> media);

  ProductVariantResponse attributes(List<ProductAttributeResponse> attributes);

  ProductVariantResponse longevity(num? longevity);

  ProductVariantResponse sillage(num? sillage);

  ProductVariantResponse createdAt(String createdAt);

  ProductVariantResponse updatedAt(Object? updatedAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductVariantResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductVariantResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductVariantResponse call({
    String id,
    String productId,
    String sku,
    String barcode,
    num volumeMl,
    String type,
    num basePrice,
    String status,
    num concentrationId,
    ConcentrationResponse? concentration,
    VariantStockResponse? stock,
    List<VariantMediaResponse> media,
    List<ProductAttributeResponse> attributes,
    num? longevity,
    num? sillage,
    String createdAt,
    Object? updatedAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductVariantResponse.copyWith(...)` or call `instanceOfProductVariantResponse.copyWith.fieldName(value)` for a single field.
class _$ProductVariantResponseCWProxyImpl
    implements _$ProductVariantResponseCWProxy {
  const _$ProductVariantResponseCWProxyImpl(this._value);

  final ProductVariantResponse _value;

  @override
  ProductVariantResponse id(String id) => call(id: id);

  @override
  ProductVariantResponse productId(String productId) =>
      call(productId: productId);

  @override
  ProductVariantResponse sku(String sku) => call(sku: sku);

  @override
  ProductVariantResponse barcode(String barcode) => call(barcode: barcode);

  @override
  ProductVariantResponse volumeMl(num volumeMl) => call(volumeMl: volumeMl);

  @override
  ProductVariantResponse type(String type) => call(type: type);

  @override
  ProductVariantResponse basePrice(num basePrice) => call(basePrice: basePrice);

  @override
  ProductVariantResponse status(String status) => call(status: status);

  @override
  ProductVariantResponse concentrationId(num concentrationId) =>
      call(concentrationId: concentrationId);

  @override
  ProductVariantResponse concentration(ConcentrationResponse? concentration) =>
      call(concentration: concentration);

  @override
  ProductVariantResponse stock(VariantStockResponse? stock) =>
      call(stock: stock);

  @override
  ProductVariantResponse media(List<VariantMediaResponse> media) =>
      call(media: media);

  @override
  ProductVariantResponse attributes(
    List<ProductAttributeResponse> attributes,
  ) => call(attributes: attributes);

  @override
  ProductVariantResponse longevity(num? longevity) =>
      call(longevity: longevity);

  @override
  ProductVariantResponse sillage(num? sillage) => call(sillage: sillage);

  @override
  ProductVariantResponse createdAt(String createdAt) =>
      call(createdAt: createdAt);

  @override
  ProductVariantResponse updatedAt(Object? updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductVariantResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductVariantResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductVariantResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? productId = const $CopyWithPlaceholder(),
    Object? sku = const $CopyWithPlaceholder(),
    Object? barcode = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? basePrice = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? concentrationId = const $CopyWithPlaceholder(),
    Object? concentration = const $CopyWithPlaceholder(),
    Object? stock = const $CopyWithPlaceholder(),
    Object? media = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
    Object? longevity = const $CopyWithPlaceholder(),
    Object? sillage = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return ProductVariantResponse(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      productId: productId == const $CopyWithPlaceholder() || productId == null
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as String,
      sku: sku == const $CopyWithPlaceholder() || sku == null
          ? _value.sku
          // ignore: cast_nullable_to_non_nullable
          : sku as String,
      barcode: barcode == const $CopyWithPlaceholder() || barcode == null
          ? _value.barcode
          // ignore: cast_nullable_to_non_nullable
          : barcode as String,
      volumeMl: volumeMl == const $CopyWithPlaceholder() || volumeMl == null
          ? _value.volumeMl
          // ignore: cast_nullable_to_non_nullable
          : volumeMl as num,
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as String,
      basePrice: basePrice == const $CopyWithPlaceholder() || basePrice == null
          ? _value.basePrice
          // ignore: cast_nullable_to_non_nullable
          : basePrice as num,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String,
      concentrationId:
          concentrationId == const $CopyWithPlaceholder() ||
              concentrationId == null
          ? _value.concentrationId
          // ignore: cast_nullable_to_non_nullable
          : concentrationId as num,
      concentration: concentration == const $CopyWithPlaceholder()
          ? _value.concentration
          // ignore: cast_nullable_to_non_nullable
          : concentration as ConcentrationResponse?,
      stock: stock == const $CopyWithPlaceholder()
          ? _value.stock
          // ignore: cast_nullable_to_non_nullable
          : stock as VariantStockResponse?,
      media: media == const $CopyWithPlaceholder() || media == null
          ? _value.media
          // ignore: cast_nullable_to_non_nullable
          : media as List<VariantMediaResponse>,
      attributes:
          attributes == const $CopyWithPlaceholder() || attributes == null
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as List<ProductAttributeResponse>,
      longevity: longevity == const $CopyWithPlaceholder()
          ? _value.longevity
          // ignore: cast_nullable_to_non_nullable
          : longevity as num?,
      sillage: sillage == const $CopyWithPlaceholder()
          ? _value.sillage
          // ignore: cast_nullable_to_non_nullable
          : sillage as num?,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as String,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as Object?,
    );
  }
}

extension $ProductVariantResponseCopyWith on ProductVariantResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductVariantResponse.copyWith(...)` or `instanceOfProductVariantResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductVariantResponseCWProxy get copyWith =>
      _$ProductVariantResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVariantResponse _$ProductVariantResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductVariantResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'productId',
      'sku',
      'barcode',
      'volumeMl',
      'type',
      'basePrice',
      'status',
      'concentrationId',
      'media',
      'attributes',
      'createdAt',
    ],
  );
  final val = ProductVariantResponse(
    id: $checkedConvert('id', (v) => v as String),
    productId: $checkedConvert('productId', (v) => v as String),
    sku: $checkedConvert('sku', (v) => v as String),
    barcode: $checkedConvert('barcode', (v) => v as String),
    volumeMl: $checkedConvert('volumeMl', (v) => v as num),
    type: $checkedConvert('type', (v) => v as String),
    basePrice: $checkedConvert('basePrice', (v) => v as num),
    status: $checkedConvert('status', (v) => v as String),
    concentrationId: $checkedConvert('concentrationId', (v) => v as num),
    concentration: $checkedConvert(
      'concentration',
      (v) => v == null
          ? null
          : ConcentrationResponse.fromJson(v as Map<String, dynamic>),
    ),
    stock: $checkedConvert(
      'stock',
      (v) => v == null
          ? null
          : VariantStockResponse.fromJson(v as Map<String, dynamic>),
    ),
    media: $checkedConvert(
      'media',
      (v) => (v as List<dynamic>)
          .map((e) => VariantMediaResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    attributes: $checkedConvert(
      'attributes',
      (v) => (v as List<dynamic>)
          .map(
            (e) => ProductAttributeResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    longevity: $checkedConvert('longevity', (v) => v as num?),
    sillage: $checkedConvert('sillage', (v) => v as num?),
    createdAt: $checkedConvert('createdAt', (v) => v as String),
    updatedAt: $checkedConvert('updatedAt', (v) => v),
  );
  return val;
});

Map<String, dynamic> _$ProductVariantResponseToJson(
  ProductVariantResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'sku': instance.sku,
  'barcode': instance.barcode,
  'volumeMl': instance.volumeMl,
  'type': instance.type,
  'basePrice': instance.basePrice,
  'status': instance.status,
  'concentrationId': instance.concentrationId,
  'concentration': ?instance.concentration?.toJson(),
  'stock': ?instance.stock?.toJson(),
  'media': instance.media.map((e) => e.toJson()).toList(),
  'attributes': instance.attributes.map((e) => e.toJson()).toList(),
  'longevity': ?instance.longevity,
  'sillage': ?instance.sillage,
  'createdAt': instance.createdAt,
  'updatedAt': ?instance.updatedAt,
};
