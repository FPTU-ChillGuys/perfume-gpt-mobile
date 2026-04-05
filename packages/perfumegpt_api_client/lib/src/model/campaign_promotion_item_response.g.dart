// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_promotion_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CampaignPromotionItemResponseCWProxy {
  CampaignPromotionItemResponse id(String? id);

  CampaignPromotionItemResponse campaignId(String? campaignId);

  CampaignPromotionItemResponse productVariantId(String? productVariantId);

  CampaignPromotionItemResponse batchId(String? batchId);

  CampaignPromotionItemResponse name(String name);

  CampaignPromotionItemResponse itemType(PromotionType? itemType);

  CampaignPromotionItemResponse startDate(DateTime? startDate);

  CampaignPromotionItemResponse endDate(DateTime? endDate);

  CampaignPromotionItemResponse autoStopWhenBatchEmpty(
    bool? autoStopWhenBatchEmpty,
  );

  CampaignPromotionItemResponse maxUsage(int? maxUsage);

  CampaignPromotionItemResponse currentUsage(int? currentUsage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CampaignPromotionItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CampaignPromotionItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CampaignPromotionItemResponse call({
    String? id,
    String? campaignId,
    String? productVariantId,
    String? batchId,
    String name,
    PromotionType? itemType,
    DateTime? startDate,
    DateTime? endDate,
    bool? autoStopWhenBatchEmpty,
    int? maxUsage,
    int? currentUsage,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCampaignPromotionItemResponse.copyWith(...)` or call `instanceOfCampaignPromotionItemResponse.copyWith.fieldName(value)` for a single field.
class _$CampaignPromotionItemResponseCWProxyImpl
    implements _$CampaignPromotionItemResponseCWProxy {
  const _$CampaignPromotionItemResponseCWProxyImpl(this._value);

  final CampaignPromotionItemResponse _value;

  @override
  CampaignPromotionItemResponse id(String? id) => call(id: id);

  @override
  CampaignPromotionItemResponse campaignId(String? campaignId) =>
      call(campaignId: campaignId);

  @override
  CampaignPromotionItemResponse productVariantId(String? productVariantId) =>
      call(productVariantId: productVariantId);

  @override
  CampaignPromotionItemResponse batchId(String? batchId) =>
      call(batchId: batchId);

  @override
  CampaignPromotionItemResponse name(String name) => call(name: name);

  @override
  CampaignPromotionItemResponse itemType(PromotionType? itemType) =>
      call(itemType: itemType);

  @override
  CampaignPromotionItemResponse startDate(DateTime? startDate) =>
      call(startDate: startDate);

  @override
  CampaignPromotionItemResponse endDate(DateTime? endDate) =>
      call(endDate: endDate);

  @override
  CampaignPromotionItemResponse autoStopWhenBatchEmpty(
    bool? autoStopWhenBatchEmpty,
  ) => call(autoStopWhenBatchEmpty: autoStopWhenBatchEmpty);

  @override
  CampaignPromotionItemResponse maxUsage(int? maxUsage) =>
      call(maxUsage: maxUsage);

  @override
  CampaignPromotionItemResponse currentUsage(int? currentUsage) =>
      call(currentUsage: currentUsage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CampaignPromotionItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CampaignPromotionItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CampaignPromotionItemResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? campaignId = const $CopyWithPlaceholder(),
    Object? productVariantId = const $CopyWithPlaceholder(),
    Object? batchId = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? itemType = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? autoStopWhenBatchEmpty = const $CopyWithPlaceholder(),
    Object? maxUsage = const $CopyWithPlaceholder(),
    Object? currentUsage = const $CopyWithPlaceholder(),
  }) {
    return CampaignPromotionItemResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      campaignId: campaignId == const $CopyWithPlaceholder()
          ? _value.campaignId
          // ignore: cast_nullable_to_non_nullable
          : campaignId as String?,
      productVariantId: productVariantId == const $CopyWithPlaceholder()
          ? _value.productVariantId
          // ignore: cast_nullable_to_non_nullable
          : productVariantId as String?,
      batchId: batchId == const $CopyWithPlaceholder()
          ? _value.batchId
          // ignore: cast_nullable_to_non_nullable
          : batchId as String?,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      itemType: itemType == const $CopyWithPlaceholder()
          ? _value.itemType
          // ignore: cast_nullable_to_non_nullable
          : itemType as PromotionType?,
      startDate: startDate == const $CopyWithPlaceholder()
          ? _value.startDate
          // ignore: cast_nullable_to_non_nullable
          : startDate as DateTime?,
      endDate: endDate == const $CopyWithPlaceholder()
          ? _value.endDate
          // ignore: cast_nullable_to_non_nullable
          : endDate as DateTime?,
      autoStopWhenBatchEmpty:
          autoStopWhenBatchEmpty == const $CopyWithPlaceholder()
          ? _value.autoStopWhenBatchEmpty
          // ignore: cast_nullable_to_non_nullable
          : autoStopWhenBatchEmpty as bool?,
      maxUsage: maxUsage == const $CopyWithPlaceholder()
          ? _value.maxUsage
          // ignore: cast_nullable_to_non_nullable
          : maxUsage as int?,
      currentUsage: currentUsage == const $CopyWithPlaceholder()
          ? _value.currentUsage
          // ignore: cast_nullable_to_non_nullable
          : currentUsage as int?,
    );
  }
}

extension $CampaignPromotionItemResponseCopyWith
    on CampaignPromotionItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCampaignPromotionItemResponse.copyWith(...)` or `instanceOfCampaignPromotionItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CampaignPromotionItemResponseCWProxy get copyWith =>
      _$CampaignPromotionItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CampaignPromotionItemResponse _$CampaignPromotionItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CampaignPromotionItemResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = CampaignPromotionItemResponse(
    id: $checkedConvert('id', (v) => v as String?),
    campaignId: $checkedConvert('campaignId', (v) => v as String?),
    productVariantId: $checkedConvert('productVariantId', (v) => v as String?),
    batchId: $checkedConvert('batchId', (v) => v as String?),
    name: $checkedConvert('name', (v) => v as String),
    itemType: $checkedConvert(
      'itemType',
      (v) => $enumDecodeNullable(_$PromotionTypeEnumMap, v),
    ),
    startDate: $checkedConvert(
      'startDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    endDate: $checkedConvert(
      'endDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    autoStopWhenBatchEmpty: $checkedConvert(
      'autoStopWhenBatchEmpty',
      (v) => v as bool?,
    ),
    maxUsage: $checkedConvert('maxUsage', (v) => (v as num?)?.toInt()),
    currentUsage: $checkedConvert('currentUsage', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$CampaignPromotionItemResponseToJson(
  CampaignPromotionItemResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'campaignId': ?instance.campaignId,
  'productVariantId': ?instance.productVariantId,
  'batchId': ?instance.batchId,
  'name': instance.name,
  'itemType': ?_$PromotionTypeEnumMap[instance.itemType],
  'startDate': ?instance.startDate?.toIso8601String(),
  'endDate': ?instance.endDate?.toIso8601String(),
  'autoStopWhenBatchEmpty': ?instance.autoStopWhenBatchEmpty,
  'maxUsage': ?instance.maxUsage,
  'currentUsage': ?instance.currentUsage,
};

const _$PromotionTypeEnumMap = {
  PromotionType.clearance: 'Clearance',
  PromotionType.newArrival: 'NewArrival',
  PromotionType.regular: 'Regular',
};
