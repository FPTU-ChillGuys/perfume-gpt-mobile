//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/discount_type.dart';
import 'package:perfumegpt_ai_api_client/src/model/voucher_type.dart';
import 'package:perfumegpt_ai_api_client/src/model/promotion_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'voucher_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VoucherResponse {
  /// Returns a new [VoucherResponse] instance.
  VoucherResponse({

     this.id,

    required  this.code,

     this.discountValue,

     this.discountType,

     this.campaignId,

     this.applyType,

     this.targetItemType,

     this.requiredPoints,

     this.minOrderValue,

     this.expiryDate,

     this.isExpired,

     this.totalQuantity,

     this.remainingQuantity,

     this.isPublic,

     this.createdAt,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false,
  )


  final String code;



  @JsonKey(
    
    name: r'discountValue',
    required: false,
    includeIfNull: false,
  )


  final num? discountValue;



  @JsonKey(
    
    name: r'discountType',
    required: false,
    includeIfNull: false,
  )


  final DiscountType? discountType;



  @JsonKey(
    
    name: r'campaignId',
    required: false,
    includeIfNull: false,
  )


  final String? campaignId;



  @JsonKey(
    
    name: r'applyType',
    required: false,
    includeIfNull: false,
  )


  final VoucherType? applyType;



  @JsonKey(
    
    name: r'targetItemType',
    required: false,
    includeIfNull: false,
  )


  final PromotionType? targetItemType;



  @JsonKey(
    
    name: r'requiredPoints',
    required: false,
    includeIfNull: false,
  )


  final int? requiredPoints;



  @JsonKey(
    
    name: r'minOrderValue',
    required: false,
    includeIfNull: false,
  )


  final num? minOrderValue;



  @JsonKey(
    
    name: r'expiryDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? expiryDate;



  @JsonKey(
    
    name: r'isExpired',
    required: false,
    includeIfNull: false,
  )


  final bool? isExpired;



  @JsonKey(
    
    name: r'totalQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? totalQuantity;



  @JsonKey(
    
    name: r'remainingQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? remainingQuantity;



  @JsonKey(
    
    name: r'isPublic',
    required: false,
    includeIfNull: false,
  )


  final bool? isPublic;



  @JsonKey(
    
    name: r'createdAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VoucherResponse &&
      other.id == id &&
      other.code == code &&
      other.discountValue == discountValue &&
      other.discountType == discountType &&
      other.campaignId == campaignId &&
      other.applyType == applyType &&
      other.targetItemType == targetItemType &&
      other.requiredPoints == requiredPoints &&
      other.minOrderValue == minOrderValue &&
      other.expiryDate == expiryDate &&
      other.isExpired == isExpired &&
      other.totalQuantity == totalQuantity &&
      other.remainingQuantity == remainingQuantity &&
      other.isPublic == isPublic &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        id.hashCode +
        code.hashCode +
        discountValue.hashCode +
        discountType.hashCode +
        (campaignId == null ? 0 : campaignId.hashCode) +
        applyType.hashCode +
        targetItemType.hashCode +
        (requiredPoints == null ? 0 : requiredPoints.hashCode) +
        (minOrderValue == null ? 0 : minOrderValue.hashCode) +
        expiryDate.hashCode +
        isExpired.hashCode +
        (totalQuantity == null ? 0 : totalQuantity.hashCode) +
        (remainingQuantity == null ? 0 : remainingQuantity.hashCode) +
        isPublic.hashCode +
        createdAt.hashCode;

  factory VoucherResponse.fromJson(Map<String, dynamic> json) => _$VoucherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VoucherResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

