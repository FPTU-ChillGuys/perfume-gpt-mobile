// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CatalogItemResponseCWProxy {
  CatalogItemResponse id(String? id);

  CatalogItemResponse productVariantId(String? productVariantId);

  CatalogItemResponse supplierId(int? supplierId);

  CatalogItemResponse supplierName(String supplierName);

  CatalogItemResponse variantSku(String variantSku);

  CatalogItemResponse variantName(String variantName);

  CatalogItemResponse primaryImageUrl(String? primaryImageUrl);

  CatalogItemResponse negotiatedPrice(num? negotiatedPrice);

  CatalogItemResponse estimatedLeadTimeDays(int? estimatedLeadTimeDays);

  CatalogItemResponse isPrimary(bool? isPrimary);

  CatalogItemResponse createdAt(DateTime? createdAt);

  CatalogItemResponse updatedAt(DateTime? updatedAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CatalogItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CatalogItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CatalogItemResponse call({
    String? id,
    String? productVariantId,
    int? supplierId,
    String supplierName,
    String variantSku,
    String variantName,
    String? primaryImageUrl,
    num? negotiatedPrice,
    int? estimatedLeadTimeDays,
    bool? isPrimary,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCatalogItemResponse.copyWith(...)` or call `instanceOfCatalogItemResponse.copyWith.fieldName(value)` for a single field.
class _$CatalogItemResponseCWProxyImpl implements _$CatalogItemResponseCWProxy {
  const _$CatalogItemResponseCWProxyImpl(this._value);

  final CatalogItemResponse _value;

  @override
  CatalogItemResponse id(String? id) => call(id: id);

  @override
  CatalogItemResponse productVariantId(String? productVariantId) =>
      call(productVariantId: productVariantId);

  @override
  CatalogItemResponse supplierId(int? supplierId) =>
      call(supplierId: supplierId);

  @override
  CatalogItemResponse supplierName(String supplierName) =>
      call(supplierName: supplierName);

  @override
  CatalogItemResponse variantSku(String variantSku) =>
      call(variantSku: variantSku);

  @override
  CatalogItemResponse variantName(String variantName) =>
      call(variantName: variantName);

  @override
  CatalogItemResponse primaryImageUrl(String? primaryImageUrl) =>
      call(primaryImageUrl: primaryImageUrl);

  @override
  CatalogItemResponse negotiatedPrice(num? negotiatedPrice) =>
      call(negotiatedPrice: negotiatedPrice);

  @override
  CatalogItemResponse estimatedLeadTimeDays(int? estimatedLeadTimeDays) =>
      call(estimatedLeadTimeDays: estimatedLeadTimeDays);

  @override
  CatalogItemResponse isPrimary(bool? isPrimary) => call(isPrimary: isPrimary);

  @override
  CatalogItemResponse createdAt(DateTime? createdAt) =>
      call(createdAt: createdAt);

  @override
  CatalogItemResponse updatedAt(DateTime? updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CatalogItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CatalogItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CatalogItemResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? productVariantId = const $CopyWithPlaceholder(),
    Object? supplierId = const $CopyWithPlaceholder(),
    Object? supplierName = const $CopyWithPlaceholder(),
    Object? variantSku = const $CopyWithPlaceholder(),
    Object? variantName = const $CopyWithPlaceholder(),
    Object? primaryImageUrl = const $CopyWithPlaceholder(),
    Object? negotiatedPrice = const $CopyWithPlaceholder(),
    Object? estimatedLeadTimeDays = const $CopyWithPlaceholder(),
    Object? isPrimary = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return CatalogItemResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      productVariantId: productVariantId == const $CopyWithPlaceholder()
          ? _value.productVariantId
          // ignore: cast_nullable_to_non_nullable
          : productVariantId as String?,
      supplierId: supplierId == const $CopyWithPlaceholder()
          ? _value.supplierId
          // ignore: cast_nullable_to_non_nullable
          : supplierId as int?,
      supplierName:
          supplierName == const $CopyWithPlaceholder() || supplierName == null
          ? _value.supplierName
          // ignore: cast_nullable_to_non_nullable
          : supplierName as String,
      variantSku:
          variantSku == const $CopyWithPlaceholder() || variantSku == null
          ? _value.variantSku
          // ignore: cast_nullable_to_non_nullable
          : variantSku as String,
      variantName:
          variantName == const $CopyWithPlaceholder() || variantName == null
          ? _value.variantName
          // ignore: cast_nullable_to_non_nullable
          : variantName as String,
      primaryImageUrl: primaryImageUrl == const $CopyWithPlaceholder()
          ? _value.primaryImageUrl
          // ignore: cast_nullable_to_non_nullable
          : primaryImageUrl as String?,
      negotiatedPrice: negotiatedPrice == const $CopyWithPlaceholder()
          ? _value.negotiatedPrice
          // ignore: cast_nullable_to_non_nullable
          : negotiatedPrice as num?,
      estimatedLeadTimeDays:
          estimatedLeadTimeDays == const $CopyWithPlaceholder()
          ? _value.estimatedLeadTimeDays
          // ignore: cast_nullable_to_non_nullable
          : estimatedLeadTimeDays as int?,
      isPrimary: isPrimary == const $CopyWithPlaceholder()
          ? _value.isPrimary
          // ignore: cast_nullable_to_non_nullable
          : isPrimary as bool?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
    );
  }
}

extension $CatalogItemResponseCopyWith on CatalogItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCatalogItemResponse.copyWith(...)` or `instanceOfCatalogItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CatalogItemResponseCWProxy get copyWith =>
      _$CatalogItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogItemResponse _$CatalogItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CatalogItemResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['supplierName', 'variantSku', 'variantName'],
  );
  final val = CatalogItemResponse(
    id: $checkedConvert('id', (v) => v as String?),
    productVariantId: $checkedConvert('productVariantId', (v) => v as String?),
    supplierId: $checkedConvert('supplierId', (v) => (v as num?)?.toInt()),
    supplierName: $checkedConvert('supplierName', (v) => v as String),
    variantSku: $checkedConvert('variantSku', (v) => v as String),
    variantName: $checkedConvert('variantName', (v) => v as String),
    primaryImageUrl: $checkedConvert('primaryImageUrl', (v) => v as String?),
    negotiatedPrice: $checkedConvert('negotiatedPrice', (v) => v as num?),
    estimatedLeadTimeDays: $checkedConvert(
      'estimatedLeadTimeDays',
      (v) => (v as num?)?.toInt(),
    ),
    isPrimary: $checkedConvert('isPrimary', (v) => v as bool?),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$CatalogItemResponseToJson(
  CatalogItemResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'productVariantId': ?instance.productVariantId,
  'supplierId': ?instance.supplierId,
  'supplierName': instance.supplierName,
  'variantSku': instance.variantSku,
  'variantName': instance.variantName,
  'primaryImageUrl': ?instance.primaryImageUrl,
  'negotiatedPrice': ?instance.negotiatedPrice,
  'estimatedLeadTimeDays': ?instance.estimatedLeadTimeDays,
  'isPrimary': ?instance.isPrimary,
  'createdAt': ?instance.createdAt?.toIso8601String(),
  'updatedAt': ?instance.updatedAt?.toIso8601String(),
};
