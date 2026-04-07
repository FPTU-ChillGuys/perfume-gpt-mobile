//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_method.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'process_cancel_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProcessCancelRequest {
  /// Returns a new [ProcessCancelRequest] instance.
  ProcessCancelRequest({

     this.isApproved,

     this.staffNote,

     this.refundMethod,

     this.manualTransactionReference,
  });

  @JsonKey(
    
    name: r'isApproved',
    required: false,
    includeIfNull: false,
  )


  final bool? isApproved;



  @JsonKey(
    
    name: r'staffNote',
    required: false,
    includeIfNull: false,
  )


  final String? staffNote;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProcessCancelRequest &&
      other.isApproved == isApproved &&
      other.staffNote == staffNote &&
      other.refundMethod == refundMethod &&
      other.manualTransactionReference == manualTransactionReference;

    @override
    int get hashCode =>
        isApproved.hashCode +
        (staffNote == null ? 0 : staffNote.hashCode) +
        refundMethod.hashCode +
        (manualTransactionReference == null ? 0 : manualTransactionReference.hashCode);

  factory ProcessCancelRequest.fromJson(Map<String, dynamic> json) => _$ProcessCancelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessCancelRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

