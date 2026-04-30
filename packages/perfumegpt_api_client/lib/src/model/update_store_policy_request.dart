//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_store_policy_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateStorePolicyRequest {
  /// Returns a new [UpdateStorePolicyRequest] instance.
  UpdateStorePolicyRequest({

     this.requiredDepositPercentage,

     this.depositTimeoutMinutes,

     this.isDepositRequiredForCOD,

     this.reviewRewardPoints,

     this.stockAdjustmentAutoApprovalThreshold,
  });

          // minimum: 0
          // maximum: 100
  @JsonKey(
    
    name: r'requiredDepositPercentage',
    required: false,
    includeIfNull: false,
  )


  final num? requiredDepositPercentage;



          // minimum: 0
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



          // minimum: 0
  @JsonKey(
    
    name: r'reviewRewardPoints',
    required: false,
    includeIfNull: false,
  )


  final int? reviewRewardPoints;



          // minimum: 0
  @JsonKey(
    
    name: r'stockAdjustmentAutoApprovalThreshold',
    required: false,
    includeIfNull: false,
  )


  final int? stockAdjustmentAutoApprovalThreshold;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateStorePolicyRequest &&
      other.requiredDepositPercentage == requiredDepositPercentage &&
      other.depositTimeoutMinutes == depositTimeoutMinutes &&
      other.isDepositRequiredForCOD == isDepositRequiredForCOD &&
      other.reviewRewardPoints == reviewRewardPoints &&
      other.stockAdjustmentAutoApprovalThreshold == stockAdjustmentAutoApprovalThreshold;

    @override
    int get hashCode =>
        requiredDepositPercentage.hashCode +
        depositTimeoutMinutes.hashCode +
        isDepositRequiredForCOD.hashCode +
        reviewRewardPoints.hashCode +
        stockAdjustmentAutoApprovalThreshold.hashCode;

  factory UpdateStorePolicyRequest.fromJson(Map<String, dynamic> json) => _$UpdateStorePolicyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateStorePolicyRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

