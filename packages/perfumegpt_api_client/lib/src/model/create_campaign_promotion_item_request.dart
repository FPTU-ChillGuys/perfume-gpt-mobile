//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/promotion_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_campaign_promotion_item_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateCampaignPromotionItemRequest {
  /// Returns a new [CreateCampaignPromotionItemRequest] instance.
  CreateCampaignPromotionItemRequest({

    required  this.productVariantId,

     this.batchId,

     this.promotionType,

     this.maxUsage,
  });

  @JsonKey(
    
    name: r'productVariantId',
    required: true,
    includeIfNull: false,
  )


  final String productVariantId;



  @JsonKey(
    
    name: r'batchId',
    required: false,
    includeIfNull: false,
  )


  final String? batchId;



  @JsonKey(
    
    name: r'promotionType',
    required: false,
    includeIfNull: false,
  )


  final PromotionType? promotionType;



  @JsonKey(
    
    name: r'maxUsage',
    required: false,
    includeIfNull: false,
  )


  final int? maxUsage;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateCampaignPromotionItemRequest &&
      other.productVariantId == productVariantId &&
      other.batchId == batchId &&
      other.promotionType == promotionType &&
      other.maxUsage == maxUsage;

    @override
    int get hashCode =>
        productVariantId.hashCode +
        (batchId == null ? 0 : batchId.hashCode) +
        promotionType.hashCode +
        (maxUsage == null ? 0 : maxUsage.hashCode);

  factory CreateCampaignPromotionItemRequest.fromJson(Map<String, dynamic> json) => _$CreateCampaignPromotionItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCampaignPromotionItemRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

