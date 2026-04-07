//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/variant_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_cart_item_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetCartItemResponse {
  /// Returns a new [GetCartItemResponse] instance.
  GetCartItemResponse({

     this.cartItemId,

     this.variantId,

    required  this.variantName,

    required  this.imageUrl,

     this.volumeMl,

     this.type,

     this.variantPrice,

     this.quantity,

     this.isAvailable,

     this.subTotal,
  });

  @JsonKey(
    
    name: r'cartItemId',
    required: false,
    includeIfNull: false,
  )


  final String? cartItemId;



  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;



  @JsonKey(
    
    name: r'variantName',
    required: true,
    includeIfNull: false,
  )


  final String variantName;



  @JsonKey(
    
    name: r'imageUrl',
    required: true,
    includeIfNull: false,
  )


  final String imageUrl;



  @JsonKey(
    
    name: r'volumeMl',
    required: false,
    includeIfNull: false,
  )


  final int? volumeMl;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final VariantType? type;



  @JsonKey(
    
    name: r'variantPrice',
    required: false,
    includeIfNull: false,
  )


  final num? variantPrice;



  @JsonKey(
    
    name: r'quantity',
    required: false,
    includeIfNull: false,
  )


  final int? quantity;



  @JsonKey(
    
    name: r'isAvailable',
    required: false,
    includeIfNull: false,
  )


  final bool? isAvailable;



  @JsonKey(
    
    name: r'subTotal',
    required: false,
    includeIfNull: false,
  )


  final num? subTotal;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetCartItemResponse &&
      other.cartItemId == cartItemId &&
      other.variantId == variantId &&
      other.variantName == variantName &&
      other.imageUrl == imageUrl &&
      other.volumeMl == volumeMl &&
      other.type == type &&
      other.variantPrice == variantPrice &&
      other.quantity == quantity &&
      other.isAvailable == isAvailable &&
      other.subTotal == subTotal;

    @override
    int get hashCode =>
        cartItemId.hashCode +
        variantId.hashCode +
        variantName.hashCode +
        imageUrl.hashCode +
        volumeMl.hashCode +
        type.hashCode +
        variantPrice.hashCode +
        quantity.hashCode +
        isAvailable.hashCode +
        subTotal.hashCode;

  factory GetCartItemResponse.fromJson(Map<String, dynamic> json) => _$GetCartItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetCartItemResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

