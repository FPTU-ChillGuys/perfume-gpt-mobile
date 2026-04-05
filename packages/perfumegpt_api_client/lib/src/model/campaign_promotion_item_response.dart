//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/promotion_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'campaign_promotion_item_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CampaignPromotionItemResponse {
  /// Returns a new [CampaignPromotionItemResponse] instance.
  CampaignPromotionItemResponse({
    this.id,

    this.campaignId,

    this.productVariantId,

    this.batchId,

    required this.name,

    this.itemType,

    this.startDate,

    this.endDate,

    this.autoStopWhenBatchEmpty,

    this.maxUsage,

    this.currentUsage,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'campaignId', required: false, includeIfNull: false)
  final String? campaignId;

  @JsonKey(name: r'productVariantId', required: false, includeIfNull: false)
  final String? productVariantId;

  @JsonKey(name: r'batchId', required: false, includeIfNull: false)
  final String? batchId;

  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  @JsonKey(name: r'itemType', required: false, includeIfNull: false)
  final PromotionType? itemType;

  @JsonKey(name: r'startDate', required: false, includeIfNull: false)
  final DateTime? startDate;

  @JsonKey(name: r'endDate', required: false, includeIfNull: false)
  final DateTime? endDate;

  @JsonKey(
    name: r'autoStopWhenBatchEmpty',
    required: false,
    includeIfNull: false,
  )
  final bool? autoStopWhenBatchEmpty;

  @JsonKey(name: r'maxUsage', required: false, includeIfNull: false)
  final int? maxUsage;

  @JsonKey(name: r'currentUsage', required: false, includeIfNull: false)
  final int? currentUsage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CampaignPromotionItemResponse &&
          other.id == id &&
          other.campaignId == campaignId &&
          other.productVariantId == productVariantId &&
          other.batchId == batchId &&
          other.name == name &&
          other.itemType == itemType &&
          other.startDate == startDate &&
          other.endDate == endDate &&
          other.autoStopWhenBatchEmpty == autoStopWhenBatchEmpty &&
          other.maxUsage == maxUsage &&
          other.currentUsage == currentUsage;

  @override
  int get hashCode =>
      id.hashCode +
      campaignId.hashCode +
      productVariantId.hashCode +
      (batchId == null ? 0 : batchId.hashCode) +
      name.hashCode +
      itemType.hashCode +
      (startDate == null ? 0 : startDate.hashCode) +
      (endDate == null ? 0 : endDate.hashCode) +
      autoStopWhenBatchEmpty.hashCode +
      (maxUsage == null ? 0 : maxUsage.hashCode) +
      currentUsage.hashCode;

  factory CampaignPromotionItemResponse.fromJson(Map<String, dynamic> json) =>
      _$CampaignPromotionItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignPromotionItemResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
