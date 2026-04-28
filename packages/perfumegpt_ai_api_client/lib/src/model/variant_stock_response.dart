//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variant_stock_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VariantStockResponse {
  /// Returns a new [VariantStockResponse] instance.
  VariantStockResponse({

    required  this.id,

    required  this.totalQuantity,

    required  this.reservedQuantity,

    required  this.lowStockThreshold,
  });

      /// ID tồn kho
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Tổng số lượng
  @JsonKey(
    
    name: r'totalQuantity',
    required: true,
    includeIfNull: false,
  )


  final num totalQuantity;



      /// Số lượng đã đặt giữ
  @JsonKey(
    
    name: r'reservedQuantity',
    required: true,
    includeIfNull: false,
  )


  final num reservedQuantity;



      /// Ngưỡng cảnh báo tồn kho thấp
  @JsonKey(
    
    name: r'lowStockThreshold',
    required: true,
    includeIfNull: false,
  )


  final num lowStockThreshold;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VariantStockResponse &&
      other.id == id &&
      other.totalQuantity == totalQuantity &&
      other.reservedQuantity == reservedQuantity &&
      other.lowStockThreshold == lowStockThreshold;

    @override
    int get hashCode =>
        id.hashCode +
        totalQuantity.hashCode +
        reservedQuantity.hashCode +
        lowStockThreshold.hashCode;

  factory VariantStockResponse.fromJson(Map<String, dynamic> json) => _$VariantStockResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VariantStockResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

