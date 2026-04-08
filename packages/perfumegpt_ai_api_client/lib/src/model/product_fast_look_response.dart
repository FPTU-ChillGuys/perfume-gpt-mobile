//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/gender.dart';
import 'package:perfumegpt_ai_api_client/src/model/variant_fast_look_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_fast_look_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductFastLookResponse {
  /// Returns a new [ProductFastLookResponse] instance.
  ProductFastLookResponse({

     this.id,

    required  this.name,

     this.description,

    required  this.brandName,

     this.gender,

    required  this.variants,

     this.rating,

     this.reviewCount,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



  @JsonKey(
    
    name: r'brandName',
    required: true,
    includeIfNull: false,
  )


  final String brandName;



  @JsonKey(
    
    name: r'gender',
    required: false,
    includeIfNull: false,
  )


  final Gender? gender;



  @JsonKey(
    
    name: r'variants',
    required: true,
    includeIfNull: false,
  )


  final List<VariantFastLookResponse> variants;



  @JsonKey(
    
    name: r'rating',
    required: false,
    includeIfNull: false,
  )


  final int? rating;



  @JsonKey(
    
    name: r'reviewCount',
    required: false,
    includeIfNull: false,
  )


  final int? reviewCount;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductFastLookResponse &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.brandName == brandName &&
      other.gender == gender &&
      other.variants == variants &&
      other.rating == rating &&
      other.reviewCount == reviewCount;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        brandName.hashCode +
        gender.hashCode +
        variants.hashCode +
        rating.hashCode +
        reviewCount.hashCode;

  factory ProductFastLookResponse.fromJson(Map<String, dynamic> json) => _$ProductFastLookResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductFastLookResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

