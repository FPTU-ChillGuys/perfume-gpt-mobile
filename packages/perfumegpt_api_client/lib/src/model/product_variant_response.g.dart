// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductVariantResponseCWProxy {
  ProductVariantResponse id(String? id);

  ProductVariantResponse productId(String? productId);

  ProductVariantResponse productName(String? productName);

  ProductVariantResponse media(List<MediaResponse>? media);

  ProductVariantResponse barcode(String? barcode);

  ProductVariantResponse sku(String? sku);

  ProductVariantResponse volumeMl(int? volumeMl);

  ProductVariantResponse concentrationId(int? concentrationId);

  ProductVariantResponse concentrationName(String? concentrationName);

  ProductVariantResponse type(VariantType? type);

  ProductVariantResponse basePrice(num? basePrice);

  ProductVariantResponse status(VariantStatus? status);

  ProductVariantResponse stockQuantity(int? stockQuantity);

  ProductVariantResponse attributes(List<ProductAttributeResponse>? attributes);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductVariantResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductVariantResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductVariantResponse call({
    String? id,
    String? productId,
    String? productName,
    List<MediaResponse>? media,
    String? barcode,
    String? sku,
    int? volumeMl,
    int? concentrationId,
    String? concentrationName,
    VariantType? type,
    num? basePrice,
    VariantStatus? status,
    int? stockQuantity,
    List<ProductAttributeResponse>? attributes,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductVariantResponse.copyWith(...)` or call `instanceOfProductVariantResponse.copyWith.fieldName(value)` for a single field.
class _$ProductVariantResponseCWProxyImpl
    implements _$ProductVariantResponseCWProxy {
  const _$ProductVariantResponseCWProxyImpl(this._value);

  final ProductVariantResponse _value;

  @override
  ProductVariantResponse id(String? id) => call(id: id);

  @override
  ProductVariantResponse productId(String? productId) =>
      call(productId: productId);

  @override
  ProductVariantResponse productName(String? productName) =>
      call(productName: productName);

  @override
  ProductVariantResponse media(List<MediaResponse>? media) =>
      call(media: media);

  @override
  ProductVariantResponse barcode(String? barcode) => call(barcode: barcode);

  @override
  ProductVariantResponse sku(String? sku) => call(sku: sku);

  @override
  ProductVariantResponse volumeMl(int? volumeMl) => call(volumeMl: volumeMl);

  @override
  ProductVariantResponse concentrationId(int? concentrationId) =>
      call(concentrationId: concentrationId);

  @override
  ProductVariantResponse concentrationName(String? concentrationName) =>
      call(concentrationName: concentrationName);

  @override
  ProductVariantResponse type(VariantType? type) => call(type: type);

  @override
  ProductVariantResponse basePrice(num? basePrice) =>
      call(basePrice: basePrice);

  @override
  ProductVariantResponse status(VariantStatus? status) => call(status: status);

  @override
  ProductVariantResponse stockQuantity(int? stockQuantity) =>
      call(stockQuantity: stockQuantity);

  @override
  ProductVariantResponse attributes(
    List<ProductAttributeResponse>? attributes,
  ) => call(attributes: attributes);

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
    Object? productName = const $CopyWithPlaceholder(),
    Object? media = const $CopyWithPlaceholder(),
    Object? barcode = const $CopyWithPlaceholder(),
    Object? sku = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? concentrationId = const $CopyWithPlaceholder(),
    Object? concentrationName = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? basePrice = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? stockQuantity = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
  }) {
    return ProductVariantResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      productId: productId == const $CopyWithPlaceholder()
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as String?,
      productName: productName == const $CopyWithPlaceholder()
          ? _value.productName
          // ignore: cast_nullable_to_non_nullable
          : productName as String?,
      media: media == const $CopyWithPlaceholder()
          ? _value.media
          // ignore: cast_nullable_to_non_nullable
          : media as List<MediaResponse>?,
      barcode: barcode == const $CopyWithPlaceholder()
          ? _value.barcode
          // ignore: cast_nullable_to_non_nullable
          : barcode as String?,
      sku: sku == const $CopyWithPlaceholder()
          ? _value.sku
          // ignore: cast_nullable_to_non_nullable
          : sku as String?,
      volumeMl: volumeMl == const $CopyWithPlaceholder()
          ? _value.volumeMl
          // ignore: cast_nullable_to_non_nullable
          : volumeMl as int?,
      concentrationId: concentrationId == const $CopyWithPlaceholder()
          ? _value.concentrationId
          // ignore: cast_nullable_to_non_nullable
          : concentrationId as int?,
      concentrationName: concentrationName == const $CopyWithPlaceholder()
          ? _value.concentrationName
          // ignore: cast_nullable_to_non_nullable
          : concentrationName as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as VariantType?,
      basePrice: basePrice == const $CopyWithPlaceholder()
          ? _value.basePrice
          // ignore: cast_nullable_to_non_nullable
          : basePrice as num?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as VariantStatus?,
      stockQuantity: stockQuantity == const $CopyWithPlaceholder()
          ? _value.stockQuantity
          // ignore: cast_nullable_to_non_nullable
          : stockQuantity as int?,
      attributes: attributes == const $CopyWithPlaceholder()
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as List<ProductAttributeResponse>?,
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
  final val = ProductVariantResponse(
    id: $checkedConvert('id', (v) => v as String?),
    productId: $checkedConvert('productId', (v) => v as String?),
    productName: $checkedConvert('productName', (v) => v as String?),
    media: $checkedConvert(
      'media',
      (v) => (v as List<dynamic>?)
          ?.map((e) => MediaResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    barcode: $checkedConvert('barcode', (v) => v as String?),
    sku: $checkedConvert('sku', (v) => v as String?),
    volumeMl: $checkedConvert('volumeMl', (v) => (v as num?)?.toInt()),
    concentrationId: $checkedConvert(
      'concentrationId',
      (v) => (v as num?)?.toInt(),
    ),
    concentrationName: $checkedConvert(
      'concentrationName',
      (v) => v as String?,
    ),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(_$VariantTypeEnumMap, v),
    ),
    basePrice: $checkedConvert('basePrice', (v) => v as num?),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$VariantStatusEnumMap, v),
    ),
    stockQuantity: $checkedConvert(
      'stockQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    attributes: $checkedConvert(
      'attributes',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ProductAttributeResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProductVariantResponseToJson(
  ProductVariantResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'productId': ?instance.productId,
  'productName': ?instance.productName,
  'media': ?instance.media?.map((e) => e.toJson()).toList(),
  'barcode': ?instance.barcode,
  'sku': ?instance.sku,
  'volumeMl': ?instance.volumeMl,
  'concentrationId': ?instance.concentrationId,
  'concentrationName': ?instance.concentrationName,
  'type': ?_$VariantTypeEnumMap[instance.type],
  'basePrice': ?instance.basePrice,
  'status': ?_$VariantStatusEnumMap[instance.status],
  'stockQuantity': ?instance.stockQuantity,
  'attributes': ?instance.attributes?.map((e) => e.toJson()).toList(),
};

const _$VariantTypeEnumMap = {
  VariantType.fullBox: 'FullBox',
  VariantType.tester: 'Tester',
  VariantType.mini: 'Mini',
};

const _$VariantStatusEnumMap = {
  VariantStatus.active: 'Active',
  VariantStatus.inactive: 'Inactive',
  VariantStatus.discontinued: 'Discontinued',
  VariantStatus.outOfStock: 'out_of_stock',
};
