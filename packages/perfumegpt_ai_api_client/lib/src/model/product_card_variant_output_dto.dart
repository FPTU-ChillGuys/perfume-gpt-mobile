//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_card_variant_output_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductCardVariantOutputDto {
  /// Returns a new [ProductCardVariantOutputDto] instance.
  ProductCardVariantOutputDto({

    required  this.id,

    required  this.sku,

    required  this.volumeMl,

    required  this.basePrice,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



  @JsonKey(
    
    name: r'sku',
    required: true,
    includeIfNull: false,
  )


  final String sku;



  @JsonKey(
    
    name: r'volumeMl',
    required: true,
    includeIfNull: false,
  )


  final num volumeMl;



  @JsonKey(
    
    name: r'basePrice',
    required: true,
    includeIfNull: false,
  )


  final num basePrice;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductCardVariantOutputDto &&
      other.id == id &&
      other.sku == sku &&
      other.volumeMl == volumeMl &&
      other.basePrice == basePrice;

    @override
    int get hashCode =>
        id.hashCode +
        sku.hashCode +
        volumeMl.hashCode +
        basePrice.hashCode;

  factory ProductCardVariantOutputDto.fromJson(Map<String, dynamic> json) => _$ProductCardVariantOutputDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCardVariantOutputDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

