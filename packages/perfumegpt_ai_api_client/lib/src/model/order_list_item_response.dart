//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_list_item_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderListItemResponse {
  /// Returns a new [OrderListItemResponse] instance.
  OrderListItemResponse({

    required  this.createdAt,

    required  this.customerId,

    required  this.customerName,

    required  this.id,

    required  this.code,

    required  this.itemCount,

    required  this.paymentStatus,

    required  this.shippingStatus,

    required  this.staffId,

    required  this.staffName,

    required  this.status,

    required  this.totalAmount,

    required  this.type,

    required  this.updatedAt,
  });

      /// Order creation date
  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final String createdAt;



      /// Customer ID
  @JsonKey(
    
    name: r'customerId',
    required: true,
    includeIfNull: true,
  )


  final Object? customerId;



      /// Customer name
  @JsonKey(
    
    name: r'customerName',
    required: true,
    includeIfNull: true,
  )


  final Object? customerName;



      /// Order ID
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Order code
  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false,
  )


  final String code;



      /// Number of items in the order
  @JsonKey(
    
    name: r'itemCount',
    required: true,
    includeIfNull: false,
  )


  final num itemCount;



      /// Payment status of the order
  @JsonKey(
    
    name: r'paymentStatus',
    required: true,
    includeIfNull: false,
  )


  final OrderListItemResponsePaymentStatusEnum paymentStatus;



      /// Shipping status code
  @JsonKey(
    
    name: r'shippingStatus',
    required: true,
    includeIfNull: true,
  )


  final Object? shippingStatus;



      /// Staff ID
  @JsonKey(
    
    name: r'staffId',
    required: true,
    includeIfNull: true,
  )


  final Object? staffId;



      /// Staff name
  @JsonKey(
    
    name: r'staffName',
    required: true,
    includeIfNull: true,
  )


  final Object? staffName;



      /// Order status
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final OrderListItemResponseStatusEnum status;



      /// Total amount of the order
  @JsonKey(
    
    name: r'totalAmount',
    required: true,
    includeIfNull: false,
  )


  final num totalAmount;



      /// Order type
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  )


  final OrderListItemResponseTypeEnum type;



      /// Order last updated date
  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: true,
  )


  final Object? updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is OrderListItemResponse &&
      other.createdAt == createdAt &&
      other.customerId == customerId &&
      other.customerName == customerName &&
      other.id == id &&
      other.code == code &&
      other.itemCount == itemCount &&
      other.paymentStatus == paymentStatus &&
      other.shippingStatus == shippingStatus &&
      other.staffId == staffId &&
      other.staffName == staffName &&
      other.status == status &&
      other.totalAmount == totalAmount &&
      other.type == type &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        createdAt.hashCode +
        (customerId == null ? 0 : customerId.hashCode) +
        (customerName == null ? 0 : customerName.hashCode) +
        id.hashCode +
        code.hashCode +
        itemCount.hashCode +
        paymentStatus.hashCode +
        (shippingStatus == null ? 0 : shippingStatus.hashCode) +
        (staffId == null ? 0 : staffId.hashCode) +
        (staffName == null ? 0 : staffName.hashCode) +
        status.hashCode +
        totalAmount.hashCode +
        type.hashCode +
        (updatedAt == null ? 0 : updatedAt.hashCode);

  factory OrderListItemResponse.fromJson(Map<String, dynamic> json) => _$OrderListItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderListItemResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Payment status of the order
enum OrderListItemResponsePaymentStatusEnum {
    /// Payment status of the order
@JsonValue(r'Unpaid')
unpaid(r'Unpaid'),
    /// Payment status of the order
@JsonValue(r'Paid')
paid(r'Paid'),
    /// Payment status of the order
@JsonValue(r'Refunded')
refunded(r'Refunded');

const OrderListItemResponsePaymentStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


/// Order status
enum OrderListItemResponseStatusEnum {
    /// Order status
@JsonValue(r'Pending')
pending(r'Pending'),
    /// Order status
@JsonValue(r'Processing')
processing(r'Processing'),
    /// Order status
@JsonValue(r'Shipped')
shipped(r'Shipped'),
    /// Order status
@JsonValue(r'Delivered')
delivered(r'Delivered'),
    /// Order status
@JsonValue(r'Canceled')
canceled(r'Canceled'),
    /// Order status
@JsonValue(r'Returned')
returned(r'Returned');

const OrderListItemResponseStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


/// Order type
enum OrderListItemResponseTypeEnum {
    /// Order type
@JsonValue(r'Online')
online(r'Online'),
    /// Order type
@JsonValue(r'Offline')
offline(r'Offline'),
    /// Order type
@JsonValue(r'Shoppe')
shoppe(r'Shoppe');

const OrderListItemResponseTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


