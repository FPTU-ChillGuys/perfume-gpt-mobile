//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stock_adjustment_detail_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StockAdjustmentDetailResponse {
  /// Returns a new [StockAdjustmentDetailResponse] instance.
  StockAdjustmentDetailResponse({

     this.id,

     this.productVariantId,

    required  this.productName,

    required  this.variantSku,

     this.batchId,

    required  this.batchCode,

     this.adjustmentQuantity,

     this.approvedQuantity,

     this.note,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'productVariantId',
    required: false,
    includeIfNull: false,
  )


  final String? productVariantId;



  @JsonKey(
    
    name: r'productName',
    required: true,
    includeIfNull: false,
  )


  final String productName;



  @JsonKey(
    
    name: r'variantSku',
    required: true,
    includeIfNull: false,
  )


  final String variantSku;



  @JsonKey(
    
    name: r'batchId',
    required: false,
    includeIfNull: false,
  )


  final String? batchId;



  @JsonKey(
    
    name: r'batchCode',
    required: true,
    includeIfNull: false,
  )


  final String batchCode;



  @JsonKey(
    
    name: r'adjustmentQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? adjustmentQuantity;



  @JsonKey(
    
    name: r'approvedQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? approvedQuantity;



  @JsonKey(
    
    name: r'note',
    required: false,
    includeIfNull: false,
  )


  final String? note;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StockAdjustmentDetailResponse &&
      other.id == id &&
      other.productVariantId == productVariantId &&
      other.productName == productName &&
      other.variantSku == variantSku &&
      other.batchId == batchId &&
      other.batchCode == batchCode &&
      other.adjustmentQuantity == adjustmentQuantity &&
      other.approvedQuantity == approvedQuantity &&
      other.note == note;

    @override
    int get hashCode =>
        id.hashCode +
        productVariantId.hashCode +
        productName.hashCode +
        variantSku.hashCode +
        batchId.hashCode +
        batchCode.hashCode +
        adjustmentQuantity.hashCode +
        approvedQuantity.hashCode +
        (note == null ? 0 : note.hashCode);

  factory StockAdjustmentDetailResponse.fromJson(Map<String, dynamic> json) => _$StockAdjustmentDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StockAdjustmentDetailResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

