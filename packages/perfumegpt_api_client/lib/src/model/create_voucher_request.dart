//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/discount_type.dart';
import 'package:perfumegpt_api_client/src/model/voucher_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_voucher_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateVoucherRequest {
  /// Returns a new [CreateVoucherRequest] instance.
  CreateVoucherRequest({

    required  this.code,

     this.discountValue,

     this.discountType,

     this.applyType,

     this.requiredPoints,

     this.maxDiscountAmount,

     this.minOrderValue,

     this.expiryDate,

     this.totalQuantity,

     this.maxUsagePerUser,

     this.isPublic,

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



          // minimum: 0
  @JsonKey(
    
    name: r'requiredPoints',
    required: false,
    includeIfNull: false,
  )


  final int? requiredPoints;



  @JsonKey(
    
    name: r'maxDiscountAmount',
    required: false,
    includeIfNull: false,
  )


  final num? maxDiscountAmount;



          // minimum: 0
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



          // minimum: 0
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
    
    name: r'isPublic',
    required: false,
    includeIfNull: false,
  )


  final bool? isPublic;



  @JsonKey(
    
    name: r'isMemberOnly',
    required: false,
    includeIfNull: false,
  )


  final bool? isMemberOnly;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateVoucherRequest &&
      other.code == code &&
      other.discountValue == discountValue &&
      other.discountType == discountType &&
      other.applyType == applyType &&
      other.requiredPoints == requiredPoints &&
      other.maxDiscountAmount == maxDiscountAmount &&
      other.minOrderValue == minOrderValue &&
      other.expiryDate == expiryDate &&
      other.totalQuantity == totalQuantity &&
      other.maxUsagePerUser == maxUsagePerUser &&
      other.isPublic == isPublic &&
      other.isMemberOnly == isMemberOnly;

    @override
    int get hashCode =>
        code.hashCode +
        discountValue.hashCode +
        discountType.hashCode +
        applyType.hashCode +
        requiredPoints.hashCode +
        (maxDiscountAmount == null ? 0 : maxDiscountAmount.hashCode) +
        minOrderValue.hashCode +
        expiryDate.hashCode +
        totalQuantity.hashCode +
        (maxUsagePerUser == null ? 0 : maxUsagePerUser.hashCode) +
        isPublic.hashCode +
        isMemberOnly.hashCode;

  factory CreateVoucherRequest.fromJson(Map<String, dynamic> json) => _$CreateVoucherRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateVoucherRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

