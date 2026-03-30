//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'receipt_item_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReceiptItemDto {
  /// Returns a new [ReceiptItemDto] instance.
  ReceiptItemDto({

     this.productName,

     this.variantInfo,

     this.quantity,

     this.unitPrice,

     this.subtotal,
  });

  @JsonKey(
    
    name: r'productName',
    required: false,
    includeIfNull: false,
  )


  final String? productName;



  @JsonKey(
    
    name: r'variantInfo',
    required: false,
    includeIfNull: false,
  )


  final String? variantInfo;



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
    
    name: r'subtotal',
    required: false,
    includeIfNull: false,
  )


  final num? subtotal;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ReceiptItemDto &&
      other.productName == productName &&
      other.variantInfo == variantInfo &&
      other.quantity == quantity &&
      other.unitPrice == unitPrice &&
      other.subtotal == subtotal;

    @override
    int get hashCode =>
        productName.hashCode +
        variantInfo.hashCode +
        quantity.hashCode +
        unitPrice.hashCode +
        subtotal.hashCode;

  factory ReceiptItemDto.fromJson(Map<String, dynamic> json) => _$ReceiptItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReceiptItemDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

