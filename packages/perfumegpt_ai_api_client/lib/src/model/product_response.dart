//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/gender.dart';
import 'package:perfumegpt_ai_api_client/src/model/media_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_scent_note_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_variant_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_attribute_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_olfactory_family_response.dart';
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

     this.gender,

    required  this.origin,

     this.releaseYear,

     this.brandId,

    required  this.brandName,

     this.categoryId,

    required  this.categoryName,

     this.description,

     this.numberOfVariants,

    required  this.media,

    required  this.variants,

    required  this.attributes,

    required  this.olfactoryFamilies,

    required  this.scentNotes,
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
    
    name: r'gender',
    required: false,
    includeIfNull: false,
  )


  final Gender? gender;



  @JsonKey(
    
    name: r'origin',
    required: true,
    includeIfNull: false,
  )


  final String origin;



  @JsonKey(
    
    name: r'releaseYear',
    required: false,
    includeIfNull: false,
  )


  final int? releaseYear;



  @JsonKey(
    
    name: r'brandId',
    required: false,
    includeIfNull: false,
  )


  final int? brandId;



  @JsonKey(
    
    name: r'brandName',
    required: true,
    includeIfNull: false,
  )


  final String brandName;



  @JsonKey(
    
    name: r'categoryId',
    required: false,
    includeIfNull: false,
  )


  final int? categoryId;



  @JsonKey(
    
    name: r'categoryName',
    required: true,
    includeIfNull: false,
  )


  final String categoryName;



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
    required: true,
    includeIfNull: false,
  )


  final List<MediaResponse> media;



  @JsonKey(
    
    name: r'variants',
    required: true,
    includeIfNull: false,
  )


  final List<ProductVariantResponse> variants;



  @JsonKey(
    
    name: r'attributes',
    required: true,
    includeIfNull: false,
  )


  final List<ProductAttributeResponse> attributes;



  @JsonKey(
    
    name: r'olfactoryFamilies',
    required: true,
    includeIfNull: false,
  )


  final List<ProductOlfactoryFamilyResponse> olfactoryFamilies;



  @JsonKey(
    
    name: r'scentNotes',
    required: true,
    includeIfNull: false,
  )


  final List<ProductScentNoteResponse> scentNotes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductResponse &&
      other.id == id &&
      other.name == name &&
      other.gender == gender &&
      other.origin == origin &&
      other.releaseYear == releaseYear &&
      other.brandId == brandId &&
      other.brandName == brandName &&
      other.categoryId == categoryId &&
      other.categoryName == categoryName &&
      other.description == description &&
      other.numberOfVariants == numberOfVariants &&
      other.media == media &&
      other.variants == variants &&
      other.attributes == attributes &&
      other.olfactoryFamilies == olfactoryFamilies &&
      other.scentNotes == scentNotes;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        gender.hashCode +
        origin.hashCode +
        releaseYear.hashCode +
        brandId.hashCode +
        brandName.hashCode +
        categoryId.hashCode +
        categoryName.hashCode +
        (description == null ? 0 : description.hashCode) +
        numberOfVariants.hashCode +
        media.hashCode +
        variants.hashCode +
        attributes.hashCode +
        olfactoryFamilies.hashCode +
        scentNotes.hashCode;

  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

