//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_method.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'retry_or_change_payment_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RetryOrChangePaymentRequest {
  /// Returns a new [RetryOrChangePaymentRequest] instance.
  RetryOrChangePaymentRequest({
    this.newPaymentMethod,

    this.newDepositMethod,

    this.posSessionId,
  });

  @JsonKey(name: r'newPaymentMethod', required: false, includeIfNull: false)
  final PaymentMethod? newPaymentMethod;

  @JsonKey(name: r'newDepositMethod', required: false, includeIfNull: false)
  final PaymentMethod? newDepositMethod;

  @JsonKey(name: r'posSessionId', required: false, includeIfNull: false)
  final String? posSessionId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RetryOrChangePaymentRequest &&
          other.newPaymentMethod == newPaymentMethod &&
          other.newDepositMethod == newDepositMethod &&
          other.posSessionId == posSessionId;

  @override
  int get hashCode =>
      (newPaymentMethod == null ? 0 : newPaymentMethod.hashCode) +
      (newDepositMethod == null ? 0 : newDepositMethod.hashCode) +
      (posSessionId == null ? 0 : posSessionId.hashCode);

  factory RetryOrChangePaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$RetryOrChangePaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RetryOrChangePaymentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
