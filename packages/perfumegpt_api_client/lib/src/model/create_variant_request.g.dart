// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_variant_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateVariantRequestCWProxy {
  CreateVariantRequest productId(String productId);

  CreateVariantRequest barcode(String barcode);

  CreateVariantRequest sku(String sku);

  CreateVariantRequest volumeMl(int? volumeMl);

  CreateVariantRequest concentrationId(int? concentrationId);

  CreateVariantRequest sillage(int? sillage);

  CreateVariantRequest longevity(int? longevity);

  CreateVariantRequest type(VariantType? type);

  CreateVariantRequest basePrice(num? basePrice);

  CreateVariantRequest retailPrice(num? retailPrice);

  CreateVariantRequest status(VariantStatus? status);

  CreateVariantRequest lowStockThreshold(int? lowStockThreshold);

  CreateVariantRequest attributes(List<ProductAttributeDto>? attributes);

  CreateVariantRequest temporaryMediaIds(List<String>? temporaryMediaIds);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateVariantRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateVariantRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateVariantRequest call({
    String productId,
    String barcode,
    String sku,
    int? volumeMl,
    int? concentrationId,
    int? sillage,
    int? longevity,
    VariantType? type,
    num? basePrice,
    num? retailPrice,
    VariantStatus? status,
    int? lowStockThreshold,
    List<ProductAttributeDto>? attributes,
    List<String>? temporaryMediaIds,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateVariantRequest.copyWith(...)` or call `instanceOfCreateVariantRequest.copyWith.fieldName(value)` for a single field.
class _$CreateVariantRequestCWProxyImpl
    implements _$CreateVariantRequestCWProxy {
  const _$CreateVariantRequestCWProxyImpl(this._value);

  final CreateVariantRequest _value;

  @override
  CreateVariantRequest productId(String productId) =>
      call(productId: productId);

  @override
  CreateVariantRequest barcode(String barcode) => call(barcode: barcode);

  @override
  CreateVariantRequest sku(String sku) => call(sku: sku);

  @override
  CreateVariantRequest volumeMl(int? volumeMl) => call(volumeMl: volumeMl);

  @override
  CreateVariantRequest concentrationId(int? concentrationId) =>
      call(concentrationId: concentrationId);

  @override
  CreateVariantRequest sillage(int? sillage) => call(sillage: sillage);

  @override
  CreateVariantRequest longevity(int? longevity) => call(longevity: longevity);

  @override
  CreateVariantRequest type(VariantType? type) => call(type: type);

  @override
  CreateVariantRequest basePrice(num? basePrice) => call(basePrice: basePrice);

  @override
  CreateVariantRequest retailPrice(num? retailPrice) =>
      call(retailPrice: retailPrice);

  @override
  CreateVariantRequest status(VariantStatus? status) => call(status: status);

  @override
  CreateVariantRequest lowStockThreshold(int? lowStockThreshold) =>
      call(lowStockThreshold: lowStockThreshold);

  @override
  CreateVariantRequest attributes(List<ProductAttributeDto>? attributes) =>
      call(attributes: attributes);

  @override
  CreateVariantRequest temporaryMediaIds(List<String>? temporaryMediaIds) =>
      call(temporaryMediaIds: temporaryMediaIds);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateVariantRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateVariantRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateVariantRequest call({
    Object? productId = const $CopyWithPlaceholder(),
    Object? barcode = const $CopyWithPlaceholder(),
    Object? sku = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? concentrationId = const $CopyWithPlaceholder(),
    Object? sillage = const $CopyWithPlaceholder(),
    Object? longevity = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? basePrice = const $CopyWithPlaceholder(),
    Object? retailPrice = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? lowStockThreshold = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
    Object? temporaryMediaIds = const $CopyWithPlaceholder(),
  }) {
    return CreateVariantRequest(
      productId: productId == const $CopyWithPlaceholder() || productId == null
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as String,
      barcode: barcode == const $CopyWithPlaceholder() || barcode == null
          ? _value.barcode
          // ignore: cast_nullable_to_non_nullable
          : barcode as String,
      sku: sku == const $CopyWithPlaceholder() || sku == null
          ? _value.sku
          // ignore: cast_nullable_to_non_nullable
          : sku as String,
      volumeMl: volumeMl == const $CopyWithPlaceholder()
          ? _value.volumeMl
          // ignore: cast_nullable_to_non_nullable
          : volumeMl as int?,
      concentrationId: concentrationId == const $CopyWithPlaceholder()
          ? _value.concentrationId
          // ignore: cast_nullable_to_non_nullable
          : concentrationId as int?,
      sillage: sillage == const $CopyWithPlaceholder()
          ? _value.sillage
          // ignore: cast_nullable_to_non_nullable
          : sillage as int?,
      longevity: longevity == const $CopyWithPlaceholder()
          ? _value.longevity
          // ignore: cast_nullable_to_non_nullable
          : longevity as int?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as VariantType?,
      basePrice: basePrice == const $CopyWithPlaceholder()
          ? _value.basePrice
          // ignore: cast_nullable_to_non_nullable
          : basePrice as num?,
      retailPrice: retailPrice == const $CopyWithPlaceholder()
          ? _value.retailPrice
          // ignore: cast_nullable_to_non_nullable
          : retailPrice as num?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as VariantStatus?,
      lowStockThreshold: lowStockThreshold == const $CopyWithPlaceholder()
          ? _value.lowStockThreshold
          // ignore: cast_nullable_to_non_nullable
          : lowStockThreshold as int?,
      attributes: attributes == const $CopyWithPlaceholder()
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as List<ProductAttributeDto>?,
      temporaryMediaIds: temporaryMediaIds == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIds
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIds as List<String>?,
    );
  }
}

extension $CreateVariantRequestCopyWith on CreateVariantRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateVariantRequest.copyWith(...)` or `instanceOfCreateVariantRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateVariantRequestCWProxy get copyWith =>
      _$CreateVariantRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateVariantRequest _$CreateVariantRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateVariantRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['productId', 'barcode', 'sku']);
  final val = CreateVariantRequest(
    productId: $checkedConvert('productId', (v) => v as String),
    barcode: $checkedConvert('barcode', (v) => v as String),
    sku: $checkedConvert('sku', (v) => v as String),
    volumeMl: $checkedConvert('volumeMl', (v) => (v as num?)?.toInt()),
    concentrationId: $checkedConvert(
      'concentrationId',
      (v) => (v as num?)?.toInt(),
    ),
    sillage: $checkedConvert('sillage', (v) => (v as num?)?.toInt()),
    longevity: $checkedConvert('longevity', (v) => (v as num?)?.toInt()),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(_$VariantTypeEnumMap, v),
    ),
    basePrice: $checkedConvert('basePrice', (v) => v as num?),
    retailPrice: $checkedConvert('retailPrice', (v) => v as num?),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$VariantStatusEnumMap, v),
    ),
    lowStockThreshold: $checkedConvert(
      'lowStockThreshold',
      (v) => (v as num?)?.toInt(),
    ),
    attributes: $checkedConvert(
      'attributes',
      (v) => (v as List<dynamic>?)
          ?.map((e) => ProductAttributeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    temporaryMediaIds: $checkedConvert(
      'temporaryMediaIds',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateVariantRequestToJson(
  CreateVariantRequest instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'barcode': instance.barcode,
  'sku': instance.sku,
  'volumeMl': ?instance.volumeMl,
  'concentrationId': ?instance.concentrationId,
  'sillage': ?instance.sillage,
  'longevity': ?instance.longevity,
  'type': ?_$VariantTypeEnumMap[instance.type],
  'basePrice': ?instance.basePrice,
  'retailPrice': ?instance.retailPrice,
  'status': ?_$VariantStatusEnumMap[instance.status],
  'lowStockThreshold': ?instance.lowStockThreshold,
  'attributes': ?instance.attributes?.map((e) => e.toJson()).toList(),
  'temporaryMediaIds': ?instance.temporaryMediaIds,
};

const _$VariantTypeEnumMap = {
  VariantType.standard: 'Standard',
  VariantType.fullBox: 'FullBox',
  VariantType.tester: 'Tester',
  VariantType.mini: 'Mini',
};

const _$VariantStatusEnumMap = {
  VariantStatus.active: 'Active',
  VariantStatus.inactive: 'Inactive',
  VariantStatus.discontinued: 'Discontinued',
};
