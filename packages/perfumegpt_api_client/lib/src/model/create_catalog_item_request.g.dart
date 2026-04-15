// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_catalog_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateCatalogItemRequestCWProxy {
  CreateCatalogItemRequest productVariantId(String productVariantId);

  CreateCatalogItemRequest supplierId(int? supplierId);

  CreateCatalogItemRequest negotiatedPrice(num? negotiatedPrice);

  CreateCatalogItemRequest estimatedLeadTimeDays(int? estimatedLeadTimeDays);

  CreateCatalogItemRequest isPrimary(bool? isPrimary);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateCatalogItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateCatalogItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateCatalogItemRequest call({
    String productVariantId,
    int? supplierId,
    num? negotiatedPrice,
    int? estimatedLeadTimeDays,
    bool? isPrimary,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateCatalogItemRequest.copyWith(...)` or call `instanceOfCreateCatalogItemRequest.copyWith.fieldName(value)` for a single field.
class _$CreateCatalogItemRequestCWProxyImpl
    implements _$CreateCatalogItemRequestCWProxy {
  const _$CreateCatalogItemRequestCWProxyImpl(this._value);

  final CreateCatalogItemRequest _value;

  @override
  CreateCatalogItemRequest productVariantId(String productVariantId) =>
      call(productVariantId: productVariantId);

  @override
  CreateCatalogItemRequest supplierId(int? supplierId) =>
      call(supplierId: supplierId);

  @override
  CreateCatalogItemRequest negotiatedPrice(num? negotiatedPrice) =>
      call(negotiatedPrice: negotiatedPrice);

  @override
  CreateCatalogItemRequest estimatedLeadTimeDays(int? estimatedLeadTimeDays) =>
      call(estimatedLeadTimeDays: estimatedLeadTimeDays);

  @override
  CreateCatalogItemRequest isPrimary(bool? isPrimary) =>
      call(isPrimary: isPrimary);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateCatalogItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateCatalogItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateCatalogItemRequest call({
    Object? productVariantId = const $CopyWithPlaceholder(),
    Object? supplierId = const $CopyWithPlaceholder(),
    Object? negotiatedPrice = const $CopyWithPlaceholder(),
    Object? estimatedLeadTimeDays = const $CopyWithPlaceholder(),
    Object? isPrimary = const $CopyWithPlaceholder(),
  }) {
    return CreateCatalogItemRequest(
      productVariantId:
          productVariantId == const $CopyWithPlaceholder() ||
              productVariantId == null
          ? _value.productVariantId
          // ignore: cast_nullable_to_non_nullable
          : productVariantId as String,
      supplierId: supplierId == const $CopyWithPlaceholder()
          ? _value.supplierId
          // ignore: cast_nullable_to_non_nullable
          : supplierId as int?,
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
    );
  }
}

extension $CreateCatalogItemRequestCopyWith on CreateCatalogItemRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateCatalogItemRequest.copyWith(...)` or `instanceOfCreateCatalogItemRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateCatalogItemRequestCWProxy get copyWith =>
      _$CreateCatalogItemRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCatalogItemRequest _$CreateCatalogItemRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateCatalogItemRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['productVariantId']);
  final val = CreateCatalogItemRequest(
    productVariantId: $checkedConvert('productVariantId', (v) => v as String),
    supplierId: $checkedConvert('supplierId', (v) => (v as num?)?.toInt()),
    negotiatedPrice: $checkedConvert('negotiatedPrice', (v) => v as num?),
    estimatedLeadTimeDays: $checkedConvert(
      'estimatedLeadTimeDays',
      (v) => (v as num?)?.toInt(),
    ),
    isPrimary: $checkedConvert('isPrimary', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$CreateCatalogItemRequestToJson(
  CreateCatalogItemRequest instance,
) => <String, dynamic>{
  'productVariantId': instance.productVariantId,
  'supplierId': ?instance.supplierId,
  'negotiatedPrice': ?instance.negotiatedPrice,
  'estimatedLeadTimeDays': ?instance.estimatedLeadTimeDays,
  'isPrimary': ?instance.isPrimary,
};
