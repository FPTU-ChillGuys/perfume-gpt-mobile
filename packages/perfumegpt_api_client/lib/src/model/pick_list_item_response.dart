//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/pick_list_batch_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pick_list_item_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PickListItemResponse {
  /// Returns a new [PickListItemResponse] instance.
  PickListItemResponse({

     this.orderDetailId,

     this.variantId,

     this.variantName,

     this.quantity,

     this.batches,
  });

  @JsonKey(
    
    name: r'orderDetailId',
    required: false,
    includeIfNull: false,
  )


  final String? orderDetailId;



  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;



  @JsonKey(
    
    name: r'variantName',
    required: false,
    includeIfNull: false,
  )


  final String? variantName;



  @JsonKey(
    
    name: r'quantity',
    required: false,
    includeIfNull: false,
  )


  final int? quantity;



  @JsonKey(
    
    name: r'batches',
    required: false,
    includeIfNull: false,
  )


  final List<PickListBatchInfo>? batches;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PickListItemResponse &&
      other.orderDetailId == orderDetailId &&
      other.variantId == variantId &&
      other.variantName == variantName &&
      other.quantity == quantity &&
      other.batches == batches;

    @override
    int get hashCode =>
        orderDetailId.hashCode +
        variantId.hashCode +
        variantName.hashCode +
        quantity.hashCode +
        batches.hashCode;

  factory PickListItemResponse.fromJson(Map<String, dynamic> json) => _$PickListItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PickListItemResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

