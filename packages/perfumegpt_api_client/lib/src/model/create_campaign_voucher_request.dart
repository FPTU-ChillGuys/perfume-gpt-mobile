//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/discount_type.dart';
import 'package:perfumegpt_api_client/src/model/voucher_type.dart';
import 'package:perfumegpt_api_client/src/model/promotion_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_campaign_voucher_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateCampaignVoucherRequest {
  /// Returns a new [CreateCampaignVoucherRequest] instance.
  CreateCampaignVoucherRequest({

    required  this.code,

     this.discountValue,

     this.targetItemType,

     this.discountType,

     this.applyType,

     this.maxDiscountAmount,

    required  this.minOrderValue,

     this.totalQuantity,

     this.maxUsagePerUser,

     this.isMemberOnly,
  });

  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false,
  )


  final String code;



          // minimum: 0
  @JsonKey(
    
    name: r'discountValue',
    required: false,
    includeIfNull: false,
  )


  final num? discountValue;



  @JsonKey(
    
    name: r'targetItemType',
    required: false,
    includeIfNull: false,
  )


  final PromotionType? targetItemType;



  @JsonKey(
    
    name: r'discountType',
    required: false,
    includeIfNull: false,
  )


  final DiscountType? discountType;



  @JsonKey(
    
    name: r'applyType',
    required: false,
    includeIfNull: false,
  )


  final VoucherType? applyType;



  @JsonKey(
    
    name: r'maxDiscountAmount',
    required: false,
    includeIfNull: false,
  )


  final num? maxDiscountAmount;



          // minimum: 0
  @JsonKey(
    
    name: r'minOrderValue',
    required: true,
    includeIfNull: false,
  )


  final num minOrderValue;



  @JsonKey(
    
    name: r'totalQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? totalQuantity;



  @JsonKey(
    
    name: r'maxUsagePerUser',
    required: false,
    includeIfNull: false,
  )


  final int? maxUsagePerUser;



  @JsonKey(
    
    name: r'isMemberOnly',
    required: false,
    includeIfNull: false,
  )


  final bool? isMemberOnly;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateCampaignVoucherRequest &&
      other.code == code &&
      other.discountValue == discountValue &&
      other.targetItemType == targetItemType &&
      other.discountType == discountType &&
      other.applyType == applyType &&
      other.maxDiscountAmount == maxDiscountAmount &&
      other.minOrderValue == minOrderValue &&
      other.totalQuantity == totalQuantity &&
      other.maxUsagePerUser == maxUsagePerUser &&
      other.isMemberOnly == isMemberOnly;

    @override
    int get hashCode =>
        code.hashCode +
        discountValue.hashCode +
        (targetItemType == null ? 0 : targetItemType.hashCode) +
        discountType.hashCode +
        applyType.hashCode +
        (maxDiscountAmount == null ? 0 : maxDiscountAmount.hashCode) +
        minOrderValue.hashCode +
        (totalQuantity == null ? 0 : totalQuantity.hashCode) +
        (maxUsagePerUser == null ? 0 : maxUsagePerUser.hashCode) +
        isMemberOnly.hashCode;

  factory CreateCampaignVoucherRequest.fromJson(Map<String, dynamic> json) => _$CreateCampaignVoucherRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCampaignVoucherRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

