//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/get_cart_item_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_cart_items_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetCartItemsResponse {
  /// Returns a new [GetCartItemsResponse] instance.
  GetCartItemsResponse({

    required  this.items,
  });

  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false,
  )


  final List<GetCartItemResponse> items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetCartItemsResponse &&
      other.items == items;

    @override
    int get hashCode =>
        items.hashCode;

  factory GetCartItemsResponse.fromJson(Map<String, dynamic> json) => _$GetCartItemsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetCartItemsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

