//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventory_stock_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InventoryStockResponse {
  /// Returns a new [InventoryStockResponse] instance.
  InventoryStockResponse({

    required  this.concentrationName,

    required  this.id,

    required  this.isLowStock,

    required  this.lowStockThreshold,

    required  this.productName,

    required  this.totalQuantity,

    required  this.variantId,

    required  this.variantSku,

    required  this.volumeMl,
  });

      /// Concentration name
  @JsonKey(
    
    name: r'concentrationName',
    required: true,
    includeIfNull: false,
  )


  final String concentrationName;



      /// Inventory stock ID
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Whether the stock is low
  @JsonKey(
    
    name: r'isLowStock',
    required: true,
    includeIfNull: false,
  )


  final bool isLowStock;



      /// Low stock threshold
  @JsonKey(
    
    name: r'lowStockThreshold',
    required: true,
    includeIfNull: false,
  )


  final num lowStockThreshold;



      /// Product name
  @JsonKey(
    
    name: r'productName',
    required: true,
    includeIfNull: false,
  )


  final String productName;



      /// Total quantity in stock
  @JsonKey(
    
    name: r'totalQuantity',
    required: true,
    includeIfNull: false,
  )


  final num totalQuantity;



      /// Variant ID
  @JsonKey(
    
    name: r'variantId',
    required: true,
    includeIfNull: false,
  )


  final String variantId;



      /// Variant SKU
  @JsonKey(
    
    name: r'variantSku',
    required: true,
    includeIfNull: false,
  )


  final String variantSku;



      /// Volume in milliliters
  @JsonKey(
    
    name: r'volumeMl',
    required: true,
    includeIfNull: false,
  )


  final num volumeMl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is InventoryStockResponse &&
      other.concentrationName == concentrationName &&
      other.id == id &&
      other.isLowStock == isLowStock &&
      other.lowStockThreshold == lowStockThreshold &&
      other.productName == productName &&
      other.totalQuantity == totalQuantity &&
      other.variantId == variantId &&
      other.variantSku == variantSku &&
      other.volumeMl == volumeMl;

    @override
    int get hashCode =>
        concentrationName.hashCode +
        id.hashCode +
        isLowStock.hashCode +
        lowStockThreshold.hashCode +
        productName.hashCode +
        totalQuantity.hashCode +
        variantId.hashCode +
        variantSku.hashCode +
        volumeMl.hashCode;

  factory InventoryStockResponse.fromJson(Map<String, dynamic> json) => _$InventoryStockResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryStockResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

