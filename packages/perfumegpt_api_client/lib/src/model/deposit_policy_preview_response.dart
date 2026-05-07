//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deposit_policy_preview_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DepositPolicyPreviewResponse {
  /// Returns a new [DepositPolicyPreviewResponse] instance.
  DepositPolicyPreviewResponse({
    this.isDepositRequired,

    this.depositRate,

    this.depositAmount,

    this.remainingAmount,
  });

  @JsonKey(name: r'isDepositRequired', required: false, includeIfNull: false)
  final bool? isDepositRequired;

  @JsonKey(name: r'depositRate', required: false, includeIfNull: false)
  final num? depositRate;

  @JsonKey(name: r'depositAmount', required: false, includeIfNull: false)
  final num? depositAmount;

  @JsonKey(name: r'remainingAmount', required: false, includeIfNull: false)
  final num? remainingAmount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DepositPolicyPreviewResponse &&
          other.isDepositRequired == isDepositRequired &&
          other.depositRate == depositRate &&
          other.depositAmount == depositAmount &&
          other.remainingAmount == remainingAmount;

  @override
  int get hashCode =>
      isDepositRequired.hashCode +
      depositRate.hashCode +
      depositAmount.hashCode +
      remainingAmount.hashCode;

  factory DepositPolicyPreviewResponse.fromJson(Map<String, dynamic> json) =>
      _$DepositPolicyPreviewResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DepositPolicyPreviewResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
