//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/pos_scan_item_request.dart';
import 'package:perfumegpt_api_client/src/model/contact_address_information.dart';
import 'package:perfumegpt_api_client/src/model/payment_method.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'preview_pos_order_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PreviewPosOrderRequest {
  /// Returns a new [PreviewPosOrderRequest] instance.
  PreviewPosOrderRequest({
    required this.scannedItems,

    this.voucherCode,

    this.guestEmailOrPhoneNumber,

    this.customerId,

    this.sessionId,

    this.paymentMethod,

    this.recipient,
  });

  @JsonKey(name: r'scannedItems', required: true, includeIfNull: false)
  final List<PosScanItemRequest> scannedItems;

  @JsonKey(name: r'voucherCode', required: false, includeIfNull: false)
  final String? voucherCode;

  @JsonKey(
    name: r'guestEmailOrPhoneNumber',
    required: false,
    includeIfNull: false,
  )
  final String? guestEmailOrPhoneNumber;

  @JsonKey(name: r'customerId', required: false, includeIfNull: false)
  final String? customerId;

  @JsonKey(name: r'sessionId', required: false, includeIfNull: false)
  final String? sessionId;

  @JsonKey(name: r'paymentMethod', required: false, includeIfNull: false)
  final PaymentMethod? paymentMethod;

  @JsonKey(name: r'recipient', required: false, includeIfNull: false)
  final ContactAddressInformation? recipient;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PreviewPosOrderRequest &&
          other.scannedItems == scannedItems &&
          other.voucherCode == voucherCode &&
          other.guestEmailOrPhoneNumber == guestEmailOrPhoneNumber &&
          other.customerId == customerId &&
          other.sessionId == sessionId &&
          other.paymentMethod == paymentMethod &&
          other.recipient == recipient;

  @override
  int get hashCode =>
      scannedItems.hashCode +
      (voucherCode == null ? 0 : voucherCode.hashCode) +
      (guestEmailOrPhoneNumber == null ? 0 : guestEmailOrPhoneNumber.hashCode) +
      (customerId == null ? 0 : customerId.hashCode) +
      (sessionId == null ? 0 : sessionId.hashCode) +
      (paymentMethod == null ? 0 : paymentMethod.hashCode) +
      (recipient == null ? 0 : recipient.hashCode);

  factory PreviewPosOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$PreviewPosOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewPosOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
