//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/gender.dart';
import 'package:perfumegpt_api_client/src/model/scent_note_dto.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_product_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateProductRequest {
  /// Returns a new [CreateProductRequest] instance.
  CreateProductRequest({

    required  this.name,

     this.brandId,

     this.categoryId,

     this.gender,

    required  this.origin,

     this.releaseYear,

     this.description,

    required  this.olfactoryFamilyIds,

     this.temporaryMediaIds,

    required  this.scentNotes,

     this.attributes,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



          // minimum: 0
  @JsonKey(
    
    name: r'brandId',
    required: false,
    includeIfNull: false,
  )


  final int? brandId;



          // minimum: 0
  @JsonKey(
    
    name: r'categoryId',
    required: false,
    includeIfNull: false,
  )


  final int? categoryId;



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



          // minimum: 1900
          // maximum: 2027
  @JsonKey(
    
    name: r'releaseYear',
    required: false,
    includeIfNull: false,
  )


  final int? releaseYear;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



  @JsonKey(
    
    name: r'olfactoryFamilyIds',
    required: true,
    includeIfNull: false,
  )


  final List<int> olfactoryFamilyIds;



  @JsonKey(
    
    name: r'temporaryMediaIds',
    required: false,
    includeIfNull: false,
  )


  final List<String>? temporaryMediaIds;



  @JsonKey(
    
    name: r'scentNotes',
    required: true,
    includeIfNull: false,
  )


  final List<ScentNoteDto> scentNotes;



  @JsonKey(
    
    name: r'attributes',
    required: false,
    includeIfNull: false,
  )


  final List<ProductAttributeDto>? attributes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateProductRequest &&
      other.name == name &&
      other.brandId == brandId &&
      other.categoryId == categoryId &&
      other.gender == gender &&
      other.origin == origin &&
      other.releaseYear == releaseYear &&
      other.description == description &&
      other.olfactoryFamilyIds == olfactoryFamilyIds &&
      other.temporaryMediaIds == temporaryMediaIds &&
      other.scentNotes == scentNotes &&
      other.attributes == attributes;

    @override
    int get hashCode =>
        name.hashCode +
        brandId.hashCode +
        categoryId.hashCode +
        gender.hashCode +
        origin.hashCode +
        releaseYear.hashCode +
        (description == null ? 0 : description.hashCode) +
        olfactoryFamilyIds.hashCode +
        (temporaryMediaIds == null ? 0 : temporaryMediaIds.hashCode) +
        scentNotes.hashCode +
        (attributes == null ? 0 : attributes.hashCode);

  factory CreateProductRequest.fromJson(Map<String, dynamic> json) => _$CreateProductRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateProductRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

