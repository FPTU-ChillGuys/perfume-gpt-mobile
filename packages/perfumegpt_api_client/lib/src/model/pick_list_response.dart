//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/pick_list_item_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pick_list_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PickListResponse {
  /// Returns a new [PickListResponse] instance.
  PickListResponse({

     this.orderId,

     this.items,
  });

  @JsonKey(
    
    name: r'orderId',
    required: false,
    includeIfNull: false,
  )


  final String? orderId;



  @JsonKey(
    
    name: r'items',
    required: false,
    includeIfNull: false,
  )


  final List<PickListItemResponse>? items;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PickListResponse &&
      other.orderId == orderId &&
      other.items == items;

    @override
    int get hashCode =>
        orderId.hashCode +
        items.hashCode;

  factory PickListResponse.fromJson(Map<String, dynamic> json) => _$PickListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickListResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

