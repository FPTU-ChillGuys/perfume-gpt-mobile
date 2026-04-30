//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'store_policy_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StorePolicyResponse {
  /// Returns a new [StorePolicyResponse] instance.
  StorePolicyResponse({

     this.id,

     this.requiredDepositPercentage,

     this.depositTimeoutMinutes,

     this.isDepositRequiredForCOD,

     this.reviewRewardPoints,

     this.stockAdjustmentAutoApprovalThreshold,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'requiredDepositPercentage',
    required: false,
    includeIfNull: false,
  )


  final num? requiredDepositPercentage;



  @JsonKey(
    
    name: r'depositTimeoutMinutes',
    required: false,
    includeIfNull: false,
  )


  final int? depositTimeoutMinutes;



  @JsonKey(
    
    name: r'isDepositRequiredForCOD',
    required: false,
    includeIfNull: false,
  )


  final bool? isDepositRequiredForCOD;



  @JsonKey(
    
    name: r'reviewRewardPoints',
    required: false,
    includeIfNull: false,
  )


  final int? reviewRewardPoints;



  @JsonKey(
    
    name: r'stockAdjustmentAutoApprovalThreshold',
    required: false,
    includeIfNull: false,
  )


  final int? stockAdjustmentAutoApprovalThreshold;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StorePolicyResponse &&
      other.id == id &&
      other.requiredDepositPercentage == requiredDepositPercentage &&
      other.depositTimeoutMinutes == depositTimeoutMinutes &&
      other.isDepositRequiredForCOD == isDepositRequiredForCOD &&
      other.reviewRewardPoints == reviewRewardPoints &&
      other.stockAdjustmentAutoApprovalThreshold == stockAdjustmentAutoApprovalThreshold;

    @override
    int get hashCode =>
        id.hashCode +
        requiredDepositPercentage.hashCode +
        depositTimeoutMinutes.hashCode +
        isDepositRequiredForCOD.hashCode +
        reviewRewardPoints.hashCode +
        stockAdjustmentAutoApprovalThreshold.hashCode;

  factory StorePolicyResponse.fromJson(Map<String, dynamic> json) => _$StorePolicyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StorePolicyResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

