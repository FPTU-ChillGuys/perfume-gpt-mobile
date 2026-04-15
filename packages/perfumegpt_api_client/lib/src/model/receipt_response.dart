//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/receipt_item_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'receipt_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReceiptResponse {
  /// Returns a new [ReceiptResponse] instance.
  ReceiptResponse({

     this.orderId,

    required  this.code,

     this.orderDate,

    required  this.orderStatus,

    required  this.staffName,

    required  this.customerName,

    required  this.recipientPhone,

    required  this.recipientAddress,

    required  this.items,

     this.subtotal,

     this.shippingFee,

     this.discount,

     this.tax,

     this.total,

    required  this.paymentMethod,

     this.note,
  });

  @JsonKey(
    
    name: r'orderId',
    required: false,
    includeIfNull: false,
  )


  final String? orderId;



  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false,
  )


  final String code;



  @JsonKey(
    
    name: r'orderDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? orderDate;



  @JsonKey(
    
    name: r'orderStatus',
    required: true,
    includeIfNull: false,
  )


  final String orderStatus;



  @JsonKey(
    
    name: r'staffName',
    required: true,
    includeIfNull: false,
  )


  final String staffName;



  @JsonKey(
    
    name: r'customerName',
    required: true,
    includeIfNull: false,
  )


  final String customerName;



  @JsonKey(
    
    name: r'recipientPhone',
    required: true,
    includeIfNull: false,
  )


  final String recipientPhone;



  @JsonKey(
    
    name: r'recipientAddress',
    required: true,
    includeIfNull: false,
  )


  final String recipientAddress;



  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false,
  )


  final List<ReceiptItemDto> items;



  @JsonKey(
    
    name: r'subtotal',
    required: false,
    includeIfNull: false,
  )


  final num? subtotal;



  @JsonKey(
    
    name: r'shippingFee',
    required: false,
    includeIfNull: false,
  )


  final num? shippingFee;



  @JsonKey(
    
    name: r'discount',
    required: false,
    includeIfNull: false,
  )


  final num? discount;



  @JsonKey(
    
    name: r'tax',
    required: false,
    includeIfNull: false,
  )


  final num? tax;



  @JsonKey(
    
    name: r'total',
    required: false,
    includeIfNull: false,
  )


  final num? total;



  @JsonKey(
    
    name: r'paymentMethod',
    required: true,
    includeIfNull: false,
  )


  final String paymentMethod;



  @JsonKey(
    
    name: r'note',
    required: false,
    includeIfNull: false,
  )


  final String? note;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ReceiptResponse &&
      other.orderId == orderId &&
      other.code == code &&
      other.orderDate == orderDate &&
      other.orderStatus == orderStatus &&
      other.staffName == staffName &&
      other.customerName == customerName &&
      other.recipientPhone == recipientPhone &&
      other.recipientAddress == recipientAddress &&
      other.items == items &&
      other.subtotal == subtotal &&
      other.shippingFee == shippingFee &&
      other.discount == discount &&
      other.tax == tax &&
      other.total == total &&
      other.paymentMethod == paymentMethod &&
      other.note == note;

    @override
    int get hashCode =>
        orderId.hashCode +
        code.hashCode +
        orderDate.hashCode +
        orderStatus.hashCode +
        staffName.hashCode +
        customerName.hashCode +
        recipientPhone.hashCode +
        recipientAddress.hashCode +
        items.hashCode +
        subtotal.hashCode +
        shippingFee.hashCode +
        discount.hashCode +
        tax.hashCode +
        total.hashCode +
        paymentMethod.hashCode +
        (note == null ? 0 : note.hashCode);

  factory ReceiptResponse.fromJson(Map<String, dynamic> json) => _$ReceiptResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReceiptResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

