//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_info_response.dart';
import 'package:perfumegpt_api_client/src/model/order_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/shipping_info_response.dart';
import 'package:perfumegpt_api_client/src/model/payment_status.dart';
import 'package:perfumegpt_api_client/src/model/recipient_info_response.dart';
import 'package:perfumegpt_api_client/src/model/voucher_type.dart';
import 'package:perfumegpt_api_client/src/model/order_status.dart';
import 'package:perfumegpt_api_client/src/model/order_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_order_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserOrderResponse {
  /// Returns a new [UserOrderResponse] instance.
  UserOrderResponse({

     this.id,

    required  this.code,

     this.type,

     this.status,

     this.isReturnable,

     this.paymentStatus,

     this.totalAmount,

     this.subTotal,

     this.shippingFee,

     this.voucherCode,

     this.voucherType,

     this.voucherDiscountTotal,

     this.paymentExpiresAt,

     this.paidAt,

     this.createdAt,

     this.updatedAt,

     this.paymentTransactions,

     this.shippingInfo,

     this.recipientInfo,

    required  this.orderDetails,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false,
  )


  final String code;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final OrderType? type;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final OrderStatus? status;



  @JsonKey(
    
    name: r'isReturnable',
    required: false,
    includeIfNull: false,
  )


  final bool? isReturnable;



  @JsonKey(
    
    name: r'paymentStatus',
    required: false,
    includeIfNull: false,
  )


  final PaymentStatus? paymentStatus;



  @JsonKey(
    
    name: r'totalAmount',
    required: false,
    includeIfNull: false,
  )


  final num? totalAmount;



  @JsonKey(
    
    name: r'subTotal',
    required: false,
    includeIfNull: false,
  )


  final num? subTotal;



  @JsonKey(
    
    name: r'shippingFee',
    required: false,
    includeIfNull: false,
  )


  final num? shippingFee;



  @JsonKey(
    
    name: r'voucherCode',
    required: false,
    includeIfNull: false,
  )


  final String? voucherCode;



  @JsonKey(
    
    name: r'voucherType',
    required: false,
    includeIfNull: false,
  )


  final VoucherType? voucherType;



  @JsonKey(
    
    name: r'voucherDiscountTotal',
    required: false,
    includeIfNull: false,
  )


  final num? voucherDiscountTotal;



  @JsonKey(
    
    name: r'paymentExpiresAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? paymentExpiresAt;



  @JsonKey(
    
    name: r'paidAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? paidAt;



  @JsonKey(
    
    name: r'createdAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;



  @JsonKey(
    
    name: r'updatedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? updatedAt;



  @JsonKey(
    
    name: r'paymentTransactions',
    required: false,
    includeIfNull: false,
  )


  final List<PaymentInfoResponse>? paymentTransactions;



  @JsonKey(
    
    name: r'shippingInfo',
    required: false,
    includeIfNull: false,
  )


  final ShippingInfoResponse? shippingInfo;



  @JsonKey(
    
    name: r'recipientInfo',
    required: false,
    includeIfNull: false,
  )


  final RecipientInfoResponse? recipientInfo;



  @JsonKey(
    
    name: r'orderDetails',
    required: true,
    includeIfNull: false,
  )


  final List<OrderDetailResponse> orderDetails;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserOrderResponse &&
      other.id == id &&
      other.code == code &&
      other.type == type &&
      other.status == status &&
      other.isReturnable == isReturnable &&
      other.paymentStatus == paymentStatus &&
      other.totalAmount == totalAmount &&
      other.subTotal == subTotal &&
      other.shippingFee == shippingFee &&
      other.voucherCode == voucherCode &&
      other.voucherType == voucherType &&
      other.voucherDiscountTotal == voucherDiscountTotal &&
      other.paymentExpiresAt == paymentExpiresAt &&
      other.paidAt == paidAt &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.paymentTransactions == paymentTransactions &&
      other.shippingInfo == shippingInfo &&
      other.recipientInfo == recipientInfo &&
      other.orderDetails == orderDetails;

    @override
    int get hashCode =>
        id.hashCode +
        code.hashCode +
        type.hashCode +
        status.hashCode +
        isReturnable.hashCode +
        paymentStatus.hashCode +
        totalAmount.hashCode +
        subTotal.hashCode +
        shippingFee.hashCode +
        (voucherCode == null ? 0 : voucherCode.hashCode) +
        (voucherType == null ? 0 : voucherType.hashCode) +
        voucherDiscountTotal.hashCode +
        (paymentExpiresAt == null ? 0 : paymentExpiresAt.hashCode) +
        (paidAt == null ? 0 : paidAt.hashCode) +
        createdAt.hashCode +
        (updatedAt == null ? 0 : updatedAt.hashCode) +
        (paymentTransactions == null ? 0 : paymentTransactions.hashCode) +
        (shippingInfo == null ? 0 : shippingInfo.hashCode) +
        (recipientInfo == null ? 0 : recipientInfo.hashCode) +
        orderDetails.hashCode;

  factory UserOrderResponse.fromJson(Map<String, dynamic> json) => _$UserOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserOrderResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

