//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/fulfill_order_item_request.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fulfill_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class FulfillOrderRequest {
  /// Returns a new [FulfillOrderRequest] instance.
  FulfillOrderRequest({

     this.items,
  });

  @JsonKey(
    
    name: r'items',
    required: false,
    includeIfNull: false,
  )


  final List<FulfillOrderItemRequest>? items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is FulfillOrderRequest &&
      other.items == items;

    @override
    int get hashCode =>
        items.hashCode;

  factory FulfillOrderRequest.fromJson(Map<String, dynamic> json) => _$FulfillOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FulfillOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

