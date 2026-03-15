//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_stock_adjustment_detail_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateStockAdjustmentDetailRequest {
  /// Returns a new [CreateStockAdjustmentDetailRequest] instance.
  CreateStockAdjustmentDetailRequest({

     this.variantId,

     this.batchId,

     this.adjustmentQuantity,

     this.note,
  });

  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;



  @JsonKey(
    
    name: r'batchId',
    required: false,
    includeIfNull: false,
  )


  final String? batchId;



  @JsonKey(
    
    name: r'adjustmentQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? adjustmentQuantity;



  @JsonKey(
    
    name: r'note',
    required: false,
    includeIfNull: false,
  )


  final String? note;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateStockAdjustmentDetailRequest &&
      other.variantId == variantId &&
      other.batchId == batchId &&
      other.adjustmentQuantity == adjustmentQuantity &&
      other.note == note;

    @override
    int get hashCode =>
        variantId.hashCode +
        batchId.hashCode +
        adjustmentQuantity.hashCode +
        (note == null ? 0 : note.hashCode);

  factory CreateStockAdjustmentDetailRequest.fromJson(Map<String, dynamic> json) => _$CreateStockAdjustmentDetailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateStockAdjustmentDetailRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

