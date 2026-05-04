//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/cancel_order_reason.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'staff_cancel_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StaffCancelOrderRequest {
  /// Returns a new [StaffCancelOrderRequest] instance.
  StaffCancelOrderRequest({

     this.reason,

     this.note,

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
    
    name: r'note',
    required: false,
    includeIfNull: false,
  )


  final String? note;



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
    bool operator ==(Object other) => identical(this, other) || other is StaffCancelOrderRequest &&
      other.reason == reason &&
      other.note == note &&
      other.refundBankName == refundBankName &&
      other.refundAccountNumber == refundAccountNumber &&
      other.refundAccountName == refundAccountName;

    @override
    int get hashCode =>
        reason.hashCode +
        (note == null ? 0 : note.hashCode) +
        (refundBankName == null ? 0 : refundBankName.hashCode) +
        (refundAccountNumber == null ? 0 : refundAccountNumber.hashCode) +
        (refundAccountName == null ? 0 : refundAccountName.hashCode);

  factory StaffCancelOrderRequest.fromJson(Map<String, dynamic> json) => _$StaffCancelOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$StaffCancelOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

