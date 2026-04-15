//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_return_request_detail_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderReturnRequestDetailResponse {
  /// Returns a new [OrderReturnRequestDetailResponse] instance.
  OrderReturnRequestDetailResponse({

     this.id,

     this.orderDetailId,

     this.variantId,

     this.requestedQuantity,

     this.unitPrice,

     this.campaignDiscount,

     this.campaignPrice,

     this.voucherDiscount,

     this.refundableAmount,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'orderDetailId',
    required: false,
    includeIfNull: false,
  )


  final String? orderDetailId;



  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;



  @JsonKey(
    
    name: r'requestedQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? requestedQuantity;



  @JsonKey(
    
    name: r'unitPrice',
    required: false,
    includeIfNull: false,
  )


  final num? unitPrice;



  @JsonKey(
    
    name: r'campaignDiscount',
    required: false,
    includeIfNull: false,
  )


  final num? campaignDiscount;



  @JsonKey(
    
    name: r'campaignPrice',
    required: false,
    includeIfNull: false,
  )


  final num? campaignPrice;



  @JsonKey(
    
    name: r'voucherDiscount',
    required: false,
    includeIfNull: false,
  )


  final num? voucherDiscount;



  @JsonKey(
    
    name: r'refundableAmount',
    required: false,
    includeIfNull: false,
  )


  final num? refundableAmount;





    @override
    bool operator ==(Object other) => identical(this, other) || other is OrderReturnRequestDetailResponse &&
      other.id == id &&
      other.orderDetailId == orderDetailId &&
      other.variantId == variantId &&
      other.requestedQuantity == requestedQuantity &&
      other.unitPrice == unitPrice &&
      other.campaignDiscount == campaignDiscount &&
      other.campaignPrice == campaignPrice &&
      other.voucherDiscount == voucherDiscount &&
      other.refundableAmount == refundableAmount;

    @override
    int get hashCode =>
        id.hashCode +
        orderDetailId.hashCode +
        variantId.hashCode +
        requestedQuantity.hashCode +
        unitPrice.hashCode +
        campaignDiscount.hashCode +
        campaignPrice.hashCode +
        voucherDiscount.hashCode +
        refundableAmount.hashCode;

  factory OrderReturnRequestDetailResponse.fromJson(Map<String, dynamic> json) => _$OrderReturnRequestDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderReturnRequestDetailResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

