//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/contact_address_information.dart';
import 'package:perfumegpt_ai_api_client/src/model/delivery_method.dart';
import 'package:perfumegpt_ai_api_client/src/model/payment_information.dart';
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

     this.expectedTotalPrice,

     this.deliveryMethod,

     this.savedAddressId,

     this.recipient,

    required  this.payment,
  });

  @JsonKey(
    
    name: r'voucherCode',
    required: false,
    includeIfNull: false,
  )


  final String? voucherCode;



  @JsonKey(
    
    name: r'itemIds',
    required: false,
    includeIfNull: false,
  )


  final List<String>? itemIds;



  @JsonKey(
    
    name: r'expectedTotalPrice',
    required: false,
    includeIfNull: false,
  )


  final num? expectedTotalPrice;



  @JsonKey(
    
    name: r'deliveryMethod',
    required: false,
    includeIfNull: false,
  )


  final DeliveryMethod? deliveryMethod;



  @JsonKey(
    
    name: r'savedAddressId',
    required: false,
    includeIfNull: false,
  )


  final String? savedAddressId;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateOrderRequest &&
      other.voucherCode == voucherCode &&
      other.itemIds == itemIds &&
      other.expectedTotalPrice == expectedTotalPrice &&
      other.deliveryMethod == deliveryMethod &&
      other.savedAddressId == savedAddressId &&
      other.recipient == recipient &&
      other.payment == payment;

    @override
    int get hashCode =>
        (voucherCode == null ? 0 : voucherCode.hashCode) +
        itemIds.hashCode +
        (expectedTotalPrice == null ? 0 : expectedTotalPrice.hashCode) +
        deliveryMethod.hashCode +
        (savedAddressId == null ? 0 : savedAddressId.hashCode) +
        (recipient == null ? 0 : recipient.hashCode) +
        payment.hashCode;

  factory CreateOrderRequest.fromJson(Map<String, dynamic> json) => _$CreateOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

