// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_campaign_promotion_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateCampaignPromotionItemRequestCWProxy {
  CreateCampaignPromotionItemRequest productVariantId(String productVariantId);

  CreateCampaignPromotionItemRequest batchId(String? batchId);

  CreateCampaignPromotionItemRequest promotionType(
    PromotionType? promotionType,
  );

  CreateCampaignPromotionItemRequest discountType(DiscountType? discountType);

  CreateCampaignPromotionItemRequest discountValue(num? discountValue);

  CreateCampaignPromotionItemRequest maxUsage(int? maxUsage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateCampaignPromotionItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateCampaignPromotionItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateCampaignPromotionItemRequest call({
    String productVariantId,
    String? batchId,
    PromotionType? promotionType,
    DiscountType? discountType,
    num? discountValue,
    int? maxUsage,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateCampaignPromotionItemRequest.copyWith(...)` or call `instanceOfCreateCampaignPromotionItemRequest.copyWith.fieldName(value)` for a single field.
class _$CreateCampaignPromotionItemRequestCWProxyImpl
    implements _$CreateCampaignPromotionItemRequestCWProxy {
  const _$CreateCampaignPromotionItemRequestCWProxyImpl(this._value);

  final CreateCampaignPromotionItemRequest _value;

  @override
  CreateCampaignPromotionItemRequest productVariantId(
    String productVariantId,
  ) => call(productVariantId: productVariantId);

  @override
  CreateCampaignPromotionItemRequest batchId(String? batchId) =>
      call(batchId: batchId);

  @override
  CreateCampaignPromotionItemRequest promotionType(
    PromotionType? promotionType,
  ) => call(promotionType: promotionType);

  @override
  CreateCampaignPromotionItemRequest discountType(DiscountType? discountType) =>
      call(discountType: discountType);

  @override
  CreateCampaignPromotionItemRequest discountValue(num? discountValue) =>
      call(discountValue: discountValue);

  @override
  CreateCampaignPromotionItemRequest maxUsage(int? maxUsage) =>
      call(maxUsage: maxUsage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateCampaignPromotionItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateCampaignPromotionItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateCampaignPromotionItemRequest call({
    Object? productVariantId = const $CopyWithPlaceholder(),
    Object? batchId = const $CopyWithPlaceholder(),
    Object? promotionType = const $CopyWithPlaceholder(),
    Object? discountType = const $CopyWithPlaceholder(),
    Object? discountValue = const $CopyWithPlaceholder(),
    Object? maxUsage = const $CopyWithPlaceholder(),
  }) {
    return CreateCampaignPromotionItemRequest(
      productVariantId:
          productVariantId == const $CopyWithPlaceholder() ||
              productVariantId == null
          ? _value.productVariantId
          // ignore: cast_nullable_to_non_nullable
          : productVariantId as String,
      batchId: batchId == const $CopyWithPlaceholder()
          ? _value.batchId
          // ignore: cast_nullable_to_non_nullable
          : batchId as String?,
      promotionType: promotionType == const $CopyWithPlaceholder()
          ? _value.promotionType
          // ignore: cast_nullable_to_non_nullable
          : promotionType as PromotionType?,
      discountType: discountType == const $CopyWithPlaceholder()
          ? _value.discountType
          // ignore: cast_nullable_to_non_nullable
          : discountType as DiscountType?,
      discountValue: discountValue == const $CopyWithPlaceholder()
          ? _value.discountValue
          // ignore: cast_nullable_to_non_nullable
          : discountValue as num?,
      maxUsage: maxUsage == const $CopyWithPlaceholder()
          ? _value.maxUsage
          // ignore: cast_nullable_to_non_nullable
          : maxUsage as int?,
    );
  }
}

extension $CreateCampaignPromotionItemRequestCopyWith
    on CreateCampaignPromotionItemRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateCampaignPromotionItemRequest.copyWith(...)` or `instanceOfCreateCampaignPromotionItemRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateCampaignPromotionItemRequestCWProxy get copyWith =>
      _$CreateCampaignPromotionItemRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCampaignPromotionItemRequest _$CreateCampaignPromotionItemRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateCampaignPromotionItemRequest', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['productVariantId']);
  final val = CreateCampaignPromotionItemRequest(
    productVariantId: $checkedConvert('productVariantId', (v) => v as String),
    batchId: $checkedConvert('batchId', (v) => v as String?),
    promotionType: $checkedConvert(
      'promotionType',
      (v) => $enumDecodeNullable(_$PromotionTypeEnumMap, v),
    ),
    discountType: $checkedConvert(
      'discountType',
      (v) => $enumDecodeNullable(_$DiscountTypeEnumMap, v),
    ),
    discountValue: $checkedConvert('discountValue', (v) => v as num?),
    maxUsage: $checkedConvert('maxUsage', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$CreateCampaignPromotionItemRequestToJson(
  CreateCampaignPromotionItemRequest instance,
) => <String, dynamic>{
  'productVariantId': instance.productVariantId,
  'batchId': ?instance.batchId,
  'promotionType': ?_$PromotionTypeEnumMap[instance.promotionType],
  'discountType': ?_$DiscountTypeEnumMap[instance.discountType],
  'discountValue': ?instance.discountValue,
  'maxUsage': ?instance.maxUsage,
};

const _$PromotionTypeEnumMap = {
  PromotionType.clearance: 'Clearance',
  PromotionType.newArrival: 'NewArrival',
  PromotionType.regular: 'Regular',
};

const _$DiscountTypeEnumMap = {
  DiscountType.percentage: 'Percentage',
  DiscountType.fixedAmount: 'FixedAmount',
};
