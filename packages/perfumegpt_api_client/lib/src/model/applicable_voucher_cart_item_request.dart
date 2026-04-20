//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'applicable_voucher_cart_item_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApplicableVoucherCartItemRequest {
  /// Returns a new [ApplicableVoucherCartItemRequest] instance.
  ApplicableVoucherCartItemRequest({

     this.variantId,

     this.quantity,

     this.price,
  });

  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;



  @JsonKey(
    
    name: r'quantity',
    required: false,
    includeIfNull: false,
  )


  final int? quantity;



  @JsonKey(
    
    name: r'price',
    required: false,
    includeIfNull: false,
  )


  final num? price;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApplicableVoucherCartItemRequest &&
      other.variantId == variantId &&
      other.quantity == quantity &&
      other.price == price;

    @override
    int get hashCode =>
        variantId.hashCode +
        quantity.hashCode +
        price.hashCode;

  factory ApplicableVoucherCartItemRequest.fromJson(Map<String, dynamic> json) => _$ApplicableVoucherCartItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicableVoucherCartItemRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

