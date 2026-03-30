// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_campaign_promotion_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateCampaignPromotionItemRequestCWProxy {
  UpdateCampaignPromotionItemRequest id(String? id);

  UpdateCampaignPromotionItemRequest productVariantId(String productVariantId);

  UpdateCampaignPromotionItemRequest batchId(String? batchId);

  UpdateCampaignPromotionItemRequest promotionType(
    PromotionType? promotionType,
  );

  UpdateCampaignPromotionItemRequest maxUsage(int? maxUsage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCampaignPromotionItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCampaignPromotionItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCampaignPromotionItemRequest call({
    String? id,
    String productVariantId,
    String? batchId,
    PromotionType? promotionType,
    int? maxUsage,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateCampaignPromotionItemRequest.copyWith(...)` or call `instanceOfUpdateCampaignPromotionItemRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateCampaignPromotionItemRequestCWProxyImpl
    implements _$UpdateCampaignPromotionItemRequestCWProxy {
  const _$UpdateCampaignPromotionItemRequestCWProxyImpl(this._value);

  final UpdateCampaignPromotionItemRequest _value;

  @override
  UpdateCampaignPromotionItemRequest id(String? id) => call(id: id);

  @override
  UpdateCampaignPromotionItemRequest productVariantId(
    String productVariantId,
  ) => call(productVariantId: productVariantId);

  @override
  UpdateCampaignPromotionItemRequest batchId(String? batchId) =>
      call(batchId: batchId);

  @override
  UpdateCampaignPromotionItemRequest promotionType(
    PromotionType? promotionType,
  ) => call(promotionType: promotionType);

  @override
  UpdateCampaignPromotionItemRequest maxUsage(int? maxUsage) =>
      call(maxUsage: maxUsage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCampaignPromotionItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCampaignPromotionItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCampaignPromotionItemRequest call({
    Object? id = const $CopyWithPlaceholder(),
    Object? productVariantId = const $CopyWithPlaceholder(),
    Object? batchId = const $CopyWithPlaceholder(),
    Object? promotionType = const $CopyWithPlaceholder(),
    Object? maxUsage = const $CopyWithPlaceholder(),
  }) {
    return UpdateCampaignPromotionItemRequest(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
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
      maxUsage: maxUsage == const $CopyWithPlaceholder()
          ? _value.maxUsage
          // ignore: cast_nullable_to_non_nullable
          : maxUsage as int?,
    );
  }
}

extension $UpdateCampaignPromotionItemRequestCopyWith
    on UpdateCampaignPromotionItemRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateCampaignPromotionItemRequest.copyWith(...)` or `instanceOfUpdateCampaignPromotionItemRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateCampaignPromotionItemRequestCWProxy get copyWith =>
      _$UpdateCampaignPromotionItemRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCampaignPromotionItemRequest _$UpdateCampaignPromotionItemRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateCampaignPromotionItemRequest', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['productVariantId']);
  final val = UpdateCampaignPromotionItemRequest(
    id: $checkedConvert('id', (v) => v as String?),
    productVariantId: $checkedConvert('productVariantId', (v) => v as String),
    batchId: $checkedConvert('batchId', (v) => v as String?),
    promotionType: $checkedConvert(
      'promotionType',
      (v) => $enumDecodeNullable(_$PromotionTypeEnumMap, v),
    ),
    maxUsage: $checkedConvert('maxUsage', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$UpdateCampaignPromotionItemRequestToJson(
  UpdateCampaignPromotionItemRequest instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'productVariantId': instance.productVariantId,
  'batchId': ?instance.batchId,
  'promotionType': ?_$PromotionTypeEnumMap[instance.promotionType],
  'maxUsage': ?instance.maxUsage,
};

const _$PromotionTypeEnumMap = {
  PromotionType.clearance: 'Clearance',
  PromotionType.newArrival: 'NewArrival',
  PromotionType.regular: 'Regular',
};
