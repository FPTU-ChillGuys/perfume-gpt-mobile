//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/shipping_status.dart';
import 'package:perfumegpt_api_client/src/model/payment_info_response.dart';
import 'package:perfumegpt_api_client/src/model/payment_status.dart';
import 'package:perfumegpt_api_client/src/model/order_detail_list_item.dart';
import 'package:perfumegpt_api_client/src/model/order_status.dart';
import 'package:perfumegpt_api_client/src/model/order_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_list_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderListItem {
  /// Returns a new [OrderListItem] instance.
  OrderListItem({
    this.id,

    required this.code,

    this.customerId,

    this.customerName,

    this.staffId,

    this.staffName,

    this.type,

    this.status,

    this.paymentStatus,

    this.totalAmount,

    this.requiredDepositAmount,

    this.paidAmount,

    this.remainingAmount,

    this.itemCount,

    this.isReturnalbe,

    this.shippingStatus,

    this.createdAt,

    this.paymentExpiresAt,

    this.updatedAt,

    required this.orderDetails,

    this.paymentTransactions,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'code', required: true, includeIfNull: false)
  final String code;

  @JsonKey(name: r'customerId', required: false, includeIfNull: false)
  final String? customerId;

  @JsonKey(name: r'customerName', required: false, includeIfNull: false)
  final String? customerName;

  @JsonKey(name: r'staffId', required: false, includeIfNull: false)
  final String? staffId;

  @JsonKey(name: r'staffName', required: false, includeIfNull: false)
  final String? staffName;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final OrderType? type;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final OrderStatus? status;

  @JsonKey(name: r'paymentStatus', required: false, includeIfNull: false)
  final PaymentStatus? paymentStatus;

  @JsonKey(name: r'totalAmount', required: false, includeIfNull: false)
  final num? totalAmount;

  @JsonKey(
    name: r'requiredDepositAmount',
    required: false,
    includeIfNull: false,
  )
  final num? requiredDepositAmount;

  @JsonKey(name: r'paidAmount', required: false, includeIfNull: false)
  final num? paidAmount;

  @JsonKey(name: r'remainingAmount', required: false, includeIfNull: false)
  final num? remainingAmount;

  @JsonKey(name: r'itemCount', required: false, includeIfNull: false)
  final int? itemCount;

  @JsonKey(name: r'isReturnalbe', required: false, includeIfNull: false)
  final bool? isReturnalbe;

  @JsonKey(name: r'shippingStatus', required: false, includeIfNull: false)
  final ShippingStatus? shippingStatus;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'paymentExpiresAt', required: false, includeIfNull: false)
  final DateTime? paymentExpiresAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: r'orderDetails', required: true, includeIfNull: false)
  final List<OrderDetailListItem> orderDetails;

  @JsonKey(name: r'paymentTransactions', required: false, includeIfNull: false)
  final List<PaymentInfoResponse>? paymentTransactions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderListItem &&
          other.id == id &&
          other.code == code &&
          other.customerId == customerId &&
          other.customerName == customerName &&
          other.staffId == staffId &&
          other.staffName == staffName &&
          other.type == type &&
          other.status == status &&
          other.paymentStatus == paymentStatus &&
          other.totalAmount == totalAmount &&
          other.requiredDepositAmount == requiredDepositAmount &&
          other.paidAmount == paidAmount &&
          other.remainingAmount == remainingAmount &&
          other.itemCount == itemCount &&
          other.isReturnalbe == isReturnalbe &&
          other.shippingStatus == shippingStatus &&
          other.createdAt == createdAt &&
          other.paymentExpiresAt == paymentExpiresAt &&
          other.updatedAt == updatedAt &&
          other.orderDetails == orderDetails &&
          other.paymentTransactions == paymentTransactions;

  @override
  int get hashCode =>
      id.hashCode +
      code.hashCode +
      (customerId == null ? 0 : customerId.hashCode) +
      (customerName == null ? 0 : customerName.hashCode) +
      (staffId == null ? 0 : staffId.hashCode) +
      (staffName == null ? 0 : staffName.hashCode) +
      type.hashCode +
      status.hashCode +
      paymentStatus.hashCode +
      totalAmount.hashCode +
      requiredDepositAmount.hashCode +
      paidAmount.hashCode +
      remainingAmount.hashCode +
      itemCount.hashCode +
      isReturnalbe.hashCode +
      (shippingStatus == null ? 0 : shippingStatus.hashCode) +
      createdAt.hashCode +
      (paymentExpiresAt == null ? 0 : paymentExpiresAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      orderDetails.hashCode +
      (paymentTransactions == null ? 0 : paymentTransactions.hashCode);

  factory OrderListItem.fromJson(Map<String, dynamic> json) =>
      _$OrderListItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderListItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
