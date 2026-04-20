//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/discount_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_voucher_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateVoucherRequest {
  /// Returns a new [UpdateVoucherRequest] instance.
  UpdateVoucherRequest({

    required  this.code,

     this.discountValue,

     this.discountType,

     this.requiredPoints,

     this.maxDiscountAmount,

     this.minOrderValue,

     this.expiryDate,

     this.totalQuantity,

     this.remainingQuantity,

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



          // minimum: 0
  @JsonKey(
    
    name: r'remainingQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? remainingQuantity;



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
    bool operator ==(Object other) => identical(this, other) || other is UpdateVoucherRequest &&
      other.code == code &&
      other.discountValue == discountValue &&
      other.discountType == discountType &&
      other.requiredPoints == requiredPoints &&
      other.maxDiscountAmount == maxDiscountAmount &&
      other.minOrderValue == minOrderValue &&
      other.expiryDate == expiryDate &&
      other.totalQuantity == totalQuantity &&
      other.remainingQuantity == remainingQuantity &&
      other.maxUsagePerUser == maxUsagePerUser &&
      other.isPublic == isPublic &&
      other.isMemberOnly == isMemberOnly;

    @override
    int get hashCode =>
        code.hashCode +
        discountValue.hashCode +
        discountType.hashCode +
        requiredPoints.hashCode +
        (maxDiscountAmount == null ? 0 : maxDiscountAmount.hashCode) +
        minOrderValue.hashCode +
        expiryDate.hashCode +
        totalQuantity.hashCode +
        remainingQuantity.hashCode +
        (maxUsagePerUser == null ? 0 : maxUsagePerUser.hashCode) +
        isPublic.hashCode +
        isMemberOnly.hashCode;

  factory UpdateVoucherRequest.fromJson(Map<String, dynamic> json) => _$UpdateVoucherRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateVoucherRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

