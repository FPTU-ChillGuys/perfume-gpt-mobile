//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/deposit_policy_preview_response.dart';
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

     this.depositPolicy,
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



  @JsonKey(
    
    name: r'depositPolicy',
    required: false,
    includeIfNull: false,
  )


  final DepositPolicyPreviewResponse? depositPolicy;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetCartTotalResponse &&
      other.subtotal == subtotal &&
      other.shippingFee == shippingFee &&
      other.discount == discount &&
      other.totalPrice == totalPrice &&
      other.depositPolicy == depositPolicy;

    @override
    int get hashCode =>
        subtotal.hashCode +
        shippingFee.hashCode +
        discount.hashCode +
        totalPrice.hashCode +
        depositPolicy.hashCode;

  factory GetCartTotalResponse.fromJson(Map<String, dynamic> json) => _$GetCartTotalResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetCartTotalResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

