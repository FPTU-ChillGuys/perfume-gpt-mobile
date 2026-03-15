//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/product_variant_response.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductResponse {
  /// Returns a new [ProductResponse] instance.
  ProductResponse({

     this.id,

     this.name,

     this.brandId,

     this.brandName,

     this.categoryId,

     this.categoryName,

     this.description,

     this.numberOfVariants,

     this.media,

     this.variants,

     this.attributes,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'brandId',
    required: false,
    includeIfNull: false,
  )


  final int? brandId;



  @JsonKey(
    
    name: r'brandName',
    required: false,
    includeIfNull: false,
  )


  final String? brandName;



  @JsonKey(
    
    name: r'categoryId',
    required: false,
    includeIfNull: false,
  )


  final int? categoryId;



  @JsonKey(
    
    name: r'categoryName',
    required: false,
    includeIfNull: false,
  )


  final String? categoryName;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



  @JsonKey(
    
    name: r'numberOfVariants',
    required: false,
    includeIfNull: false,
  )


  final int? numberOfVariants;



  @JsonKey(
    
    name: r'media',
    required: false,
    includeIfNull: false,
  )


  final List<MediaResponse>? media;



  @JsonKey(
    
    name: r'variants',
    required: false,
    includeIfNull: false,
  )


  final List<ProductVariantResponse>? variants;



  @JsonKey(
    
    name: r'attributes',
    required: false,
    includeIfNull: false,
  )


  final List<ProductAttributeResponse>? attributes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductResponse &&
      other.id == id &&
      other.name == name &&
      other.brandId == brandId &&
      other.brandName == brandName &&
      other.categoryId == categoryId &&
      other.categoryName == categoryName &&
      other.description == description &&
      other.numberOfVariants == numberOfVariants &&
      other.media == media &&
      other.variants == variants &&
      other.attributes == attributes;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        brandId.hashCode +
        brandName.hashCode +
        categoryId.hashCode +
        categoryName.hashCode +
        (description == null ? 0 : description.hashCode) +
        numberOfVariants.hashCode +
        media.hashCode +
        variants.hashCode +
        attributes.hashCode;

  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

