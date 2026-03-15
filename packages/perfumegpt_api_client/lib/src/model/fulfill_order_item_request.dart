//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fulfill_order_item_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class FulfillOrderItemRequest {
  /// Returns a new [FulfillOrderItemRequest] instance.
  FulfillOrderItemRequest({

     this.orderDetailId,

     this.scannedBatchCode,

     this.quantity,
  });

  @JsonKey(
    
    name: r'orderDetailId',
    required: false,
    includeIfNull: false,
  )


  final String? orderDetailId;



  @JsonKey(
    
    name: r'scannedBatchCode',
    required: false,
    includeIfNull: false,
  )


  final String? scannedBatchCode;



  @JsonKey(
    
    name: r'quantity',
    required: false,
    includeIfNull: false,
  )


  final int? quantity;





    @override
    bool operator ==(Object other) => identical(this, other) || other is FulfillOrderItemRequest &&
      other.orderDetailId == orderDetailId &&
      other.scannedBatchCode == scannedBatchCode &&
      other.quantity == quantity;

    @override
    int get hashCode =>
        orderDetailId.hashCode +
        scannedBatchCode.hashCode +
        quantity.hashCode;

  factory FulfillOrderItemRequest.fromJson(Map<String, dynamic> json) => _$FulfillOrderItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FulfillOrderItemRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

