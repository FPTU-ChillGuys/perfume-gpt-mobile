//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_to_cart_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AddToCartRequest {
  /// Returns a new [AddToCartRequest] instance.
  AddToCartRequest({

    required  this.variantId,

    required  this.quantity,
  });

  @JsonKey(
    
    name: r'variantId',
    required: true,
    includeIfNull: false,
  )


  final String variantId;



  @JsonKey(
    
    name: r'quantity',
    required: true,
    includeIfNull: false,
  )


  final num quantity;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AddToCartRequest &&
      other.variantId == variantId &&
      other.quantity == quantity;

    @override
    int get hashCode =>
        variantId.hashCode +
        quantity.hashCode;

  factory AddToCartRequest.fromJson(Map<String, dynamic> json) => _$AddToCartRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddToCartRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

