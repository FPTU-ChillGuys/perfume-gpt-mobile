//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_cart_total_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetCartTotalResponse {
  /// Returns a new [GetCartTotalResponse] instance.
  GetCartTotalResponse({

     this.subtotal,

     this.shippingFee,

     this.discount,

     this.totalPrice,
  });

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
    
    name: r'totalPrice',
    required: false,
    includeIfNull: false,
  )


  final num? totalPrice;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetCartTotalResponse &&
      other.subtotal == subtotal &&
      other.shippingFee == shippingFee &&
      other.discount == discount &&
      other.totalPrice == totalPrice;

    @override
    int get hashCode =>
        subtotal.hashCode +
        shippingFee.hashCode +
        discount.hashCode +
        totalPrice.hashCode;

  factory GetCartTotalResponse.fromJson(Map<String, dynamic> json) => _$GetCartTotalResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetCartTotalResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

