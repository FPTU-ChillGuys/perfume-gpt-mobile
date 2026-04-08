//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/transaction_status.dart';
import 'package:perfumegpt_ai_api_client/src/model/payment_method.dart';
import 'package:perfumegpt_ai_api_client/src/model/transaction_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_transaction_admin_item_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaymentTransactionAdminItemResponse {
  /// Returns a new [PaymentTransactionAdminItemResponse] instance.
  PaymentTransactionAdminItemResponse({

     this.id,

     this.orderId,

    required  this.orderCode,

     this.method,

     this.transactionType,

     this.transactionStatus,

     this.amount,

     this.gatewayTransactionNo,

     this.failureReason,

     this.originalPaymentId,

     this.retryAttempt,

     this.createdAt,

     this.updatedAt,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'orderId',
    required: false,
    includeIfNull: false,
  )


  final String? orderId;



  @JsonKey(
    
    name: r'orderCode',
    required: true,
    includeIfNull: false,
  )


  final String orderCode;



  @JsonKey(
    
    name: r'method',
    required: false,
    includeIfNull: false,
  )


  final PaymentMethod? method;



  @JsonKey(
    
    name: r'transactionType',
    required: false,
    includeIfNull: false,
  )


  final TransactionType? transactionType;



  @JsonKey(
    
    name: r'transactionStatus',
    required: false,
    includeIfNull: false,
  )


  final TransactionStatus? transactionStatus;



  @JsonKey(
    
    name: r'amount',
    required: false,
    includeIfNull: false,
  )


  final num? amount;



  @JsonKey(
    
    name: r'gatewayTransactionNo',
    required: false,
    includeIfNull: false,
  )


  final String? gatewayTransactionNo;



  @JsonKey(
    
    name: r'failureReason',
    required: false,
    includeIfNull: false,
  )


  final String? failureReason;



  @JsonKey(
    
    name: r'originalPaymentId',
    required: false,
    includeIfNull: false,
  )


  final String? originalPaymentId;



  @JsonKey(
    
    name: r'retryAttempt',
    required: false,
    includeIfNull: false,
  )


  final int? retryAttempt;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is PaymentTransactionAdminItemResponse &&
      other.id == id &&
      other.orderId == orderId &&
      other.orderCode == orderCode &&
      other.method == method &&
      other.transactionType == transactionType &&
      other.transactionStatus == transactionStatus &&
      other.amount == amount &&
      other.gatewayTransactionNo == gatewayTransactionNo &&
      other.failureReason == failureReason &&
      other.originalPaymentId == originalPaymentId &&
      other.retryAttempt == retryAttempt &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        id.hashCode +
        orderId.hashCode +
        orderCode.hashCode +
        method.hashCode +
        transactionType.hashCode +
        transactionStatus.hashCode +
        amount.hashCode +
        (gatewayTransactionNo == null ? 0 : gatewayTransactionNo.hashCode) +
        (failureReason == null ? 0 : failureReason.hashCode) +
        (originalPaymentId == null ? 0 : originalPaymentId.hashCode) +
        retryAttempt.hashCode +
        createdAt.hashCode +
        (updatedAt == null ? 0 : updatedAt.hashCode);

  factory PaymentTransactionAdminItemResponse.fromJson(Map<String, dynamic> json) => _$PaymentTransactionAdminItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentTransactionAdminItemResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

