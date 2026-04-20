//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/pos_scan_item_request.dart';
import 'package:perfumegpt_api_client/src/model/payment_information.dart';
import 'package:perfumegpt_api_client/src/model/contact_address_information.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_in_store_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateInStoreOrderRequest {
  /// Returns a new [CreateInStoreOrderRequest] instance.
  CreateInStoreOrderRequest({

    required  this.scannedItems,

     this.voucherCode,

     this.guestEmailOrPhoneNumber,

     this.customerId,

     this.isPickupInStore,

     this.recipient,

    required  this.payment,

     this.expectedTotalPrice,

     this.posSessionId,
  });

  @JsonKey(
    
    name: r'scannedItems',
    required: true,
    includeIfNull: false,
  )


  final List<PosScanItemRequest> scannedItems;



  @JsonKey(
    
    name: r'voucherCode',
    required: false,
    includeIfNull: false,
  )


  final String? voucherCode;



  @JsonKey(
    
    name: r'guestEmailOrPhoneNumber',
    required: false,
    includeIfNull: false,
  )


  final String? guestEmailOrPhoneNumber;



  @JsonKey(
    
    name: r'customerId',
    required: false,
    includeIfNull: false,
  )


  final String? customerId;



  @JsonKey(
    
    name: r'isPickupInStore',
    required: false,
    includeIfNull: false,
  )


  final bool? isPickupInStore;



  @JsonKey(
    
    name: r'recipient',
    required: false,
    includeIfNull: false,
  )


  final ContactAddressInformation? recipient;



  @JsonKey(
    
    name: r'payment',
    required: true,
    includeIfNull: false,
  )


  final PaymentInformation payment;



  @JsonKey(
    
    name: r'expectedTotalPrice',
    required: false,
    includeIfNull: false,
  )


  final num? expectedTotalPrice;



  @JsonKey(
    
    name: r'posSessionId',
    required: false,
    includeIfNull: false,
  )


  final String? posSessionId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateInStoreOrderRequest &&
      other.scannedItems == scannedItems &&
      other.voucherCode == voucherCode &&
      other.guestEmailOrPhoneNumber == guestEmailOrPhoneNumber &&
      other.customerId == customerId &&
      other.isPickupInStore == isPickupInStore &&
      other.recipient == recipient &&
      other.payment == payment &&
      other.expectedTotalPrice == expectedTotalPrice &&
      other.posSessionId == posSessionId;

    @override
    int get hashCode =>
        scannedItems.hashCode +
        (voucherCode == null ? 0 : voucherCode.hashCode) +
        (guestEmailOrPhoneNumber == null ? 0 : guestEmailOrPhoneNumber.hashCode) +
        (customerId == null ? 0 : customerId.hashCode) +
        isPickupInStore.hashCode +
        (recipient == null ? 0 : recipient.hashCode) +
        payment.hashCode +
        (expectedTotalPrice == null ? 0 : expectedTotalPrice.hashCode) +
        (posSessionId == null ? 0 : posSessionId.hashCode);

  factory CreateInStoreOrderRequest.fromJson(Map<String, dynamic> json) => _$CreateInStoreOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateInStoreOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

