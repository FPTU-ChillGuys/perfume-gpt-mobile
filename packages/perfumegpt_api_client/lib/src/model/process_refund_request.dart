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
  ProcessRefundRequest({this.refundMethod});

  @JsonKey(name: r'refundMethod', required: false, includeIfNull: false)
  final PaymentMethod? refundMethod;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProcessRefundRequest && other.refundMethod == refundMethod;

  @override
  int get hashCode => refundMethod.hashCode;

  factory ProcessRefundRequest.fromJson(Map<String, dynamic> json) =>
      _$ProcessRefundRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessRefundRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
