//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/media_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/variant_summary_item.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_list_item_with_variants.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductListItemWithVariants {
  /// Returns a new [ProductListItemWithVariants] instance.
  ProductListItemWithVariants({

    required  this.variants,

     this.id,

     this.name,

     this.brandId,

    required  this.brandName,

     this.categoryId,

    required  this.categoryName,

     this.description,

     this.numberOfVariants,

    required  this.variantPrices,

     this.tags,

     this.primaryImage,
  });

  @JsonKey(
    
    name: r'variants',
    required: true,
    includeIfNull: false,
  )


  final List<VariantSummaryItem> variants;



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
    
    name: r'variantPrices',
    required: true,
    includeIfNull: false,
  )


  final List<num> variantPrices;



  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final List<String>? tags;



  @JsonKey(
    
    name: r'primaryImage',
    required: false,
    includeIfNull: false,
  )


  final MediaResponse? primaryImage;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductListItemWithVariants &&
      other.variants == variants &&
      other.id == id &&
      other.name == name &&
      other.brandId == brandId &&
      other.brandName == brandName &&
      other.categoryId == categoryId &&
      other.categoryName == categoryName &&
      other.description == description &&
      other.numberOfVariants == numberOfVariants &&
      other.variantPrices == variantPrices &&
      other.tags == tags &&
      other.primaryImage == primaryImage;

    @override
    int get hashCode =>
        variants.hashCode +
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        brandId.hashCode +
        brandName.hashCode +
        categoryId.hashCode +
        categoryName.hashCode +
        (description == null ? 0 : description.hashCode) +
        numberOfVariants.hashCode +
        variantPrices.hashCode +
        (tags == null ? 0 : tags.hashCode) +
        (primaryImage == null ? 0 : primaryImage.hashCode);

  factory ProductListItemWithVariants.fromJson(Map<String, dynamic> json) => _$ProductListItemWithVariantsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductListItemWithVariantsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

