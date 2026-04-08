//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_variant_for_pos_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductVariantForPosResponse {
  /// Returns a new [ProductVariantForPosResponse] instance.
  ProductVariantForPosResponse({

     this.id,

    required  this.barcode,

    required  this.sku,

    required  this.name,

     this.volumeMl,

    required  this.concentrationName,

    required  this.displayName,

     this.basePrice,

     this.primaryImageUrl,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'barcode',
    required: true,
    includeIfNull: false,
  )


  final String barcode;



  @JsonKey(
    
    name: r'sku',
    required: true,
    includeIfNull: false,
  )


  final String sku;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'volumeMl',
    required: false,
    includeIfNull: false,
  )


  final int? volumeMl;



  @JsonKey(
    
    name: r'concentrationName',
    required: true,
    includeIfNull: false,
  )


  final String concentrationName;



  @JsonKey(
    
    name: r'displayName',
    required: true,
    includeIfNull: false,
  )


  final String displayName;



  @JsonKey(
    
    name: r'basePrice',
    required: false,
    includeIfNull: false,
  )


  final num? basePrice;



  @JsonKey(
    
    name: r'primaryImageUrl',
    required: false,
    includeIfNull: false,
  )


  final String? primaryImageUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductVariantForPosResponse &&
      other.id == id &&
      other.barcode == barcode &&
      other.sku == sku &&
      other.name == name &&
      other.volumeMl == volumeMl &&
      other.concentrationName == concentrationName &&
      other.displayName == displayName &&
      other.basePrice == basePrice &&
      other.primaryImageUrl == primaryImageUrl;

    @override
    int get hashCode =>
        id.hashCode +
        barcode.hashCode +
        sku.hashCode +
        name.hashCode +
        volumeMl.hashCode +
        concentrationName.hashCode +
        displayName.hashCode +
        basePrice.hashCode +
        (primaryImageUrl == null ? 0 : primaryImageUrl.hashCode);

  factory ProductVariantForPosResponse.fromJson(Map<String, dynamic> json) => _$ProductVariantForPosResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductVariantForPosResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

