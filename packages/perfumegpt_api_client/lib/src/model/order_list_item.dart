//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_status.dart';
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

    this.customerId,

    this.customerName,

    this.staffId,

    this.staffName,

    this.type,

    this.status,

    this.paymentStatus,

    this.totalAmount,

    this.itemCount,

    this.shippingStatus,

    this.createdAt,

    this.updatedAt,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

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

  @JsonKey(name: r'itemCount', required: false, includeIfNull: false)
  final int? itemCount;

  @JsonKey(name: r'shippingStatus', required: false, includeIfNull: false)
  final int? shippingStatus;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderListItem &&
          other.id == id &&
          other.customerId == customerId &&
          other.customerName == customerName &&
          other.staffId == staffId &&
          other.staffName == staffName &&
          other.type == type &&
          other.status == status &&
          other.paymentStatus == paymentStatus &&
          other.totalAmount == totalAmount &&
          other.itemCount == itemCount &&
          other.shippingStatus == shippingStatus &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      id.hashCode +
      (customerId == null ? 0 : customerId.hashCode) +
      (customerName == null ? 0 : customerName.hashCode) +
      (staffId == null ? 0 : staffId.hashCode) +
      (staffName == null ? 0 : staffName.hashCode) +
      type.hashCode +
      status.hashCode +
      paymentStatus.hashCode +
      totalAmount.hashCode +
      itemCount.hashCode +
      (shippingStatus == null ? 0 : shippingStatus.hashCode) +
      createdAt.hashCode +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  factory OrderListItem.fromJson(Map<String, dynamic> json) =>
      _$OrderListItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderListItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
