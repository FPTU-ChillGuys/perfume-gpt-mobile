//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_cart_item_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateCartItemRequest {
  /// Returns a new [CreateCartItemRequest] instance.
  CreateCartItemRequest({

     this.variantId,

     this.quantity,
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





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateCartItemRequest &&
      other.variantId == variantId &&
      other.quantity == quantity;

    @override
    int get hashCode =>
        variantId.hashCode +
        quantity.hashCode;

  factory CreateCartItemRequest.fromJson(Map<String, dynamic> json) => _$CreateCartItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCartItemRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

