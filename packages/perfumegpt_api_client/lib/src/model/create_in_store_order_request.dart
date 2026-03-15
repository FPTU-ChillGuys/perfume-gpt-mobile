//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/recipient_information.dart';
import 'package:perfumegpt_api_client/src/model/create_order_detail_request.dart';
import 'package:perfumegpt_api_client/src/model/payment_information.dart';
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

     this.voucherCode,

     this.isPickupInStore,

     this.orderDetails,

     this.recipient,

     this.payment,
  });

  @JsonKey(
    
    name: r'voucherCode',
    required: false,
    includeIfNull: false,
  )


  final String? voucherCode;



  @JsonKey(
    
    name: r'isPickupInStore',
    required: false,
    includeIfNull: false,
  )


  final bool? isPickupInStore;



  @JsonKey(
    
    name: r'orderDetails',
    required: false,
    includeIfNull: false,
  )


  final List<CreateOrderDetailRequest>? orderDetails;



  @JsonKey(
    
    name: r'recipient',
    required: false,
    includeIfNull: false,
  )


  final RecipientInformation? recipient;



  @JsonKey(
    
    name: r'payment',
    required: false,
    includeIfNull: false,
  )


  final PaymentInformation? payment;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateInStoreOrderRequest &&
      other.voucherCode == voucherCode &&
      other.isPickupInStore == isPickupInStore &&
      other.orderDetails == orderDetails &&
      other.recipient == recipient &&
      other.payment == payment;

    @override
    int get hashCode =>
        (voucherCode == null ? 0 : voucherCode.hashCode) +
        isPickupInStore.hashCode +
        orderDetails.hashCode +
        (recipient == null ? 0 : recipient.hashCode) +
        payment.hashCode;

  factory CreateInStoreOrderRequest.fromJson(Map<String, dynamic> json) => _$CreateInStoreOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateInStoreOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

