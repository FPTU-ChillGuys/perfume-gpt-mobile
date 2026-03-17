//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/recipient_information.dart';
import 'package:perfumegpt_api_client/src/model/payment_information.dart';
import 'package:perfumegpt_api_client/src/model/delivery_method.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_order_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateOrderRequest {
  /// Returns a new [CreateOrderRequest] instance.
  CreateOrderRequest({
    this.voucherCode,

    this.itemIds,

    this.deliveryMethod,

    this.guestEmail,

    this.savedAddressId,

    this.recipient,

    this.payment,
  });

  @JsonKey(name: r'voucherCode', required: false, includeIfNull: false)
  final String? voucherCode;

  @JsonKey(name: r'itemIds', required: false, includeIfNull: false)
  final List<String>? itemIds;

  @JsonKey(name: r'deliveryMethod', required: false, includeIfNull: false)
  final DeliveryMethod? deliveryMethod;

  @JsonKey(name: r'guestEmail', required: false, includeIfNull: false)
  final String? guestEmail;

  @JsonKey(name: r'savedAddressId', required: false, includeIfNull: false)
  final String? savedAddressId;

  @JsonKey(name: r'recipient', required: false, includeIfNull: false)
  final RecipientInformation? recipient;

  @JsonKey(name: r'payment', required: false, includeIfNull: false)
  final PaymentInformation? payment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateOrderRequest &&
          other.voucherCode == voucherCode &&
          other.itemIds == itemIds &&
          other.deliveryMethod == deliveryMethod &&
          other.guestEmail == guestEmail &&
          other.savedAddressId == savedAddressId &&
          other.recipient == recipient &&
          other.payment == payment;

  @override
  int get hashCode =>
      (voucherCode == null ? 0 : voucherCode.hashCode) +
      itemIds.hashCode +
      deliveryMethod.hashCode +
      (guestEmail == null ? 0 : guestEmail.hashCode) +
      (savedAddressId == null ? 0 : savedAddressId.hashCode) +
      (recipient == null ? 0 : recipient.hashCode) +
      payment.hashCode;

  factory CreateOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
