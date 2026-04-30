//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_method.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'process_refund_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProcessRefundRequest {
  /// Returns a new [ProcessRefundRequest] instance.
  ProcessRefundRequest({

     this.approvedRefundAmount,

     this.refundMethod,

     this.manualTransactionReference,

     this.note,
  });

  @JsonKey(
    
    name: r'approvedRefundAmount',
    required: false,
    includeIfNull: false,
  )


  final num? approvedRefundAmount;



  @JsonKey(
    
    name: r'refundMethod',
    required: false,
    includeIfNull: false,
  )


  final PaymentMethod? refundMethod;



  @JsonKey(
    
    name: r'manualTransactionReference',
    required: false,
    includeIfNull: false,
  )


  final String? manualTransactionReference;



  @JsonKey(
    
    name: r'note',
    required: false,
    includeIfNull: false,
  )


  final String? note;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProcessRefundRequest &&
      other.approvedRefundAmount == approvedRefundAmount &&
      other.refundMethod == refundMethod &&
      other.manualTransactionReference == manualTransactionReference &&
      other.note == note;

    @override
    int get hashCode =>
        approvedRefundAmount.hashCode +
        (refundMethod == null ? 0 : refundMethod.hashCode) +
        (manualTransactionReference == null ? 0 : manualTransactionReference.hashCode) +
        (note == null ? 0 : note.hashCode);

  factory ProcessRefundRequest.fromJson(Map<String, dynamic> json) => _$ProcessRefundRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessRefundRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

