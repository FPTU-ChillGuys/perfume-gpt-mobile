//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/discount_type.dart';
import 'package:perfumegpt_api_client/src/model/promotion_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_campaign_promotion_item_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateCampaignPromotionItemRequest {
  /// Returns a new [UpdateCampaignPromotionItemRequest] instance.
  UpdateCampaignPromotionItemRequest({
    this.id,

    required this.productVariantId,

    this.batchId,

    this.promotionType,

    this.discountType,

    this.discountValue,

    this.maxUsage,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'productVariantId', required: true, includeIfNull: false)
  final String productVariantId;

  @JsonKey(name: r'batchId', required: false, includeIfNull: false)
  final String? batchId;

  @JsonKey(name: r'promotionType', required: false, includeIfNull: false)
  final PromotionType? promotionType;

  @JsonKey(name: r'discountType', required: false, includeIfNull: false)
  final DiscountType? discountType;

  // minimum: 0
  @JsonKey(name: r'discountValue', required: false, includeIfNull: false)
  final num? discountValue;

  @JsonKey(name: r'maxUsage', required: false, includeIfNull: false)
  final int? maxUsage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateCampaignPromotionItemRequest &&
          other.id == id &&
          other.productVariantId == productVariantId &&
          other.batchId == batchId &&
          other.promotionType == promotionType &&
          other.discountType == discountType &&
          other.discountValue == discountValue &&
          other.maxUsage == maxUsage;

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      productVariantId.hashCode +
      (batchId == null ? 0 : batchId.hashCode) +
      promotionType.hashCode +
      discountType.hashCode +
      discountValue.hashCode +
      (maxUsage == null ? 0 : maxUsage.hashCode);

  factory UpdateCampaignPromotionItemRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UpdateCampaignPromotionItemRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateCampaignPromotionItemRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
