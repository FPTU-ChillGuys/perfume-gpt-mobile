//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/pos_order_detail_list_item.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'preview_pos_order_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PreviewPosOrderResponse {
  /// Returns a new [PreviewPosOrderResponse] instance.
  PreviewPosOrderResponse({

     this.items,

     this.subTotal,

     this.shippingFee,

     this.discount,

     this.totalPrice,
  });

  @JsonKey(
    
    name: r'items',
    required: false,
    includeIfNull: false,
  )


  final List<PosOrderDetailListItem>? items;



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
    
    name: r'discount',
    required: false,
    includeIfNull: false,
  )


  final num? discount;



  @JsonKey(
    
    name: r'totalPrice',
    required: false,
    includeIfNull: false,
  )


  final num? totalPrice;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PreviewPosOrderResponse &&
      other.items == items &&
      other.subTotal == subTotal &&
      other.shippingFee == shippingFee &&
      other.discount == discount &&
      other.totalPrice == totalPrice;

    @override
    int get hashCode =>
        items.hashCode +
        subTotal.hashCode +
        shippingFee.hashCode +
        discount.hashCode +
        totalPrice.hashCode;

  factory PreviewPosOrderResponse.fromJson(Map<String, dynamic> json) => _$PreviewPosOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewPosOrderResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

