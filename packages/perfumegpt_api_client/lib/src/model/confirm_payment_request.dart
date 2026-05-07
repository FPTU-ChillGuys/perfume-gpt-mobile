//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'confirm_payment_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ConfirmPaymentRequest {
  /// Returns a new [ConfirmPaymentRequest] instance.
  ConfirmPaymentRequest({
    required this.isSuccess,

    this.failureReason,

    this.posSessionId,
  });

  @JsonKey(name: r'isSuccess', required: true, includeIfNull: false)
  final bool isSuccess;

  @JsonKey(name: r'failureReason', required: false, includeIfNull: false)
  final String? failureReason;

  @JsonKey(name: r'posSessionId', required: false, includeIfNull: false)
  final String? posSessionId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConfirmPaymentRequest &&
          other.isSuccess == isSuccess &&
          other.failureReason == failureReason &&
          other.posSessionId == posSessionId;

  @override
  int get hashCode =>
      isSuccess.hashCode +
      (failureReason == null ? 0 : failureReason.hashCode) +
      (posSessionId == null ? 0 : posSessionId.hashCode);

  factory ConfirmPaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmPaymentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
