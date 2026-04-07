//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pos_order_detail_list_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PosOrderDetailListItem {
  /// Returns a new [PosOrderDetailListItem] instance.
  PosOrderDetailListItem({

     this.variantId,

     this.batchId,

     this.variantName,

     this.batchCode,

     this.imageUrl,

     this.quantity,

     this.unitPrice,

     this.subTotal,

     this.discount,

     this.finalTotal,
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
    
    name: r'variantName',
    required: false,
    includeIfNull: false,
  )


  final String? variantName;



  @JsonKey(
    
    name: r'batchCode',
    required: false,
    includeIfNull: false,
  )


  final String? batchCode;



  @JsonKey(
    
    name: r'imageUrl',
    required: false,
    includeIfNull: false,
  )


  final String? imageUrl;



  @JsonKey(
    
    name: r'quantity',
    required: false,
    includeIfNull: false,
  )


  final int? quantity;



  @JsonKey(
    
    name: r'unitPrice',
    required: false,
    includeIfNull: false,
  )


  final num? unitPrice;



  @JsonKey(
    
    name: r'subTotal',
    required: false,
    includeIfNull: false,
  )


  final num? subTotal;



  @JsonKey(
    
    name: r'discount',
    required: false,
    includeIfNull: false,
  )


  final num? discount;



  @JsonKey(
    
    name: r'finalTotal',
    required: false,
    includeIfNull: false,
  )


  final num? finalTotal;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PosOrderDetailListItem &&
      other.variantId == variantId &&
      other.batchId == batchId &&
      other.variantName == variantName &&
      other.batchCode == batchCode &&
      other.imageUrl == imageUrl &&
      other.quantity == quantity &&
      other.unitPrice == unitPrice &&
      other.subTotal == subTotal &&
      other.discount == discount &&
      other.finalTotal == finalTotal;

    @override
    int get hashCode =>
        variantId.hashCode +
        batchId.hashCode +
        variantName.hashCode +
        batchCode.hashCode +
        imageUrl.hashCode +
        quantity.hashCode +
        unitPrice.hashCode +
        subTotal.hashCode +
        discount.hashCode +
        finalTotal.hashCode;

  factory PosOrderDetailListItem.fromJson(Map<String, dynamic> json) => _$PosOrderDetailListItemFromJson(json);

  Map<String, dynamic> toJson() => _$PosOrderDetailListItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

