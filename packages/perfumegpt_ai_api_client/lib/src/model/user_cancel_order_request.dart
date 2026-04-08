//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/cancel_order_reason.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_cancel_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserCancelOrderRequest {
  /// Returns a new [UserCancelOrderRequest] instance.
  UserCancelOrderRequest({

     this.reason,

     this.refundBankName,

     this.refundAccountNumber,

     this.refundAccountName,
  });

  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false,
  )


  final CancelOrderReason? reason;



  @JsonKey(
    
    name: r'refundBankName',
    required: false,
    includeIfNull: false,
  )


  final String? refundBankName;



  @JsonKey(
    
    name: r'refundAccountNumber',
    required: false,
    includeIfNull: false,
  )


  final String? refundAccountNumber;



  @JsonKey(
    
    name: r'refundAccountName',
    required: false,
    includeIfNull: false,
  )


  final String? refundAccountName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserCancelOrderRequest &&
      other.reason == reason &&
      other.refundBankName == refundBankName &&
      other.refundAccountNumber == refundAccountNumber &&
      other.refundAccountName == refundAccountName;

    @override
    int get hashCode =>
        reason.hashCode +
        (refundBankName == null ? 0 : refundBankName.hashCode) +
        (refundAccountNumber == null ? 0 : refundAccountNumber.hashCode) +
        (refundAccountName == null ? 0 : refundAccountName.hashCode);

  factory UserCancelOrderRequest.fromJson(Map<String, dynamic> json) => _$UserCancelOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserCancelOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

