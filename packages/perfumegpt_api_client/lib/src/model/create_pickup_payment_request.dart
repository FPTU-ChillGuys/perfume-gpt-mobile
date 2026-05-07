//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_method.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_pickup_payment_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreatePickupPaymentRequest {
  /// Returns a new [CreatePickupPaymentRequest] instance.
  CreatePickupPaymentRequest({this.paymentMethod, this.posSessionId});

  @JsonKey(name: r'paymentMethod', required: false, includeIfNull: false)
  final PaymentMethod? paymentMethod;

  @JsonKey(name: r'posSessionId', required: false, includeIfNull: false)
  final String? posSessionId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreatePickupPaymentRequest &&
          other.paymentMethod == paymentMethod &&
          other.posSessionId == posSessionId;

  @override
  int get hashCode =>
      paymentMethod.hashCode +
      (posSessionId == null ? 0 : posSessionId.hashCode);

  factory CreatePickupPaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePickupPaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePickupPaymentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
