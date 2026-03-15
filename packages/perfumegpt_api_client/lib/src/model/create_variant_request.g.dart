// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_variant_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateVariantRequestCWProxy {
  CreateVariantRequest productId(String? productId);

  CreateVariantRequest barcode(String? barcode);

  CreateVariantRequest sku(String? sku);

  CreateVariantRequest volumeMl(int? volumeMl);

  CreateVariantRequest concentrationId(int? concentrationId);

  CreateVariantRequest type(VariantType? type);

  CreateVariantRequest basePrice(num? basePrice);

  CreateVariantRequest status(VariantStatus? status);

  CreateVariantRequest lowStockThreshold(int? lowStockThreshold);

  CreateVariantRequest attributes(List<ProductAttributeDto>? attributes);

  CreateVariantRequest temporaryMediaIds(List<String>? temporaryMediaIds);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateVariantRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateVariantRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateVariantRequest call({
    String? productId,
    String? barcode,
    String? sku,
    int? volumeMl,
    int? concentrationId,
    VariantType? type,
    num? basePrice,
    VariantStatus? status,
    int? lowStockThreshold,
    List<ProductAttributeDto>? attributes,
    List<String>? temporaryMediaIds,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateVariantRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateVariantRequest.copyWith.fieldName(...)`
class _$CreateVariantRequestCWProxyImpl
    implements _$CreateVariantRequestCWProxy {
  const _$CreateVariantRequestCWProxyImpl(this._value);

  final CreateVariantRequest _value;

  @override
  CreateVariantRequest productId(String? productId) =>
      this(productId: productId);

  @override
  CreateVariantRequest barcode(String? barcode) => this(barcode: barcode);

  @override
  CreateVariantRequest sku(String? sku) => this(sku: sku);

  @override
  CreateVariantRequest volumeMl(int? volumeMl) => this(volumeMl: volumeMl);

  @override
  CreateVariantRequest concentrationId(int? concentrationId) =>
      this(concentrationId: concentrationId);

  @override
  CreateVariantRequest type(VariantType? type) => this(type: type);

  @override
  CreateVariantRequest basePrice(num? basePrice) => this(basePrice: basePrice);

  @override
  CreateVariantRequest status(VariantStatus? status) => this(status: status);

  @override
  CreateVariantRequest lowStockThreshold(int? lowStockThreshold) =>
      this(lowStockThreshold: lowStockThreshold);

  @override
  CreateVariantRequest attributes(List<ProductAttributeDto>? attributes) =>
      this(attributes: attributes);

  @override
  CreateVariantRequest temporaryMediaIds(List<String>? temporaryMediaIds) =>
      this(temporaryMediaIds: temporaryMediaIds);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateVariantRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateVariantRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateVariantRequest call({
    Object? productId = const $CopyWithPlaceholder(),
    Object? barcode = const $CopyWithPlaceholder(),
    Object? sku = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? concentrationId = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? basePrice = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? lowStockThreshold = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
    Object? temporaryMediaIds = const $CopyWithPlaceholder(),
  }) {
    return CreateVariantRequest(
      productId: productId == const $CopyWithPlaceholder()
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as String?,
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
  /// Returns a callable class that can be used as follows: `instanceOfCreateVariantRequest.copyWith(...)` or like so:`instanceOfCreateVariantRequest.copyWith.fieldName(...)`.
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
  final val = CreateVariantRequest(
    productId: $checkedConvert('productId', (v) => v as String?),
    barcode: $checkedConvert('barcode', (v) => v as String?),
    sku: $checkedConvert('sku', (v) => v as String?),
    volumeMl: $checkedConvert('volumeMl', (v) => (v as num?)?.toInt()),
    concentrationId: $checkedConvert(
      'concentrationId',
      (v) => (v as num?)?.toInt(),
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
  'productId': ?instance.productId,
  'barcode': ?instance.barcode,
  'sku': ?instance.sku,
  'volumeMl': ?instance.volumeMl,
  'concentrationId': ?instance.concentrationId,
  'type': ?_$VariantTypeEnumMap[instance.type],
  'basePrice': ?instance.basePrice,
  'status': ?_$VariantStatusEnumMap[instance.status],
  'lowStockThreshold': ?instance.lowStockThreshold,
  'attributes': ?instance.attributes?.map((e) => e.toJson()).toList(),
  'temporaryMediaIds': ?instance.temporaryMediaIds,
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
