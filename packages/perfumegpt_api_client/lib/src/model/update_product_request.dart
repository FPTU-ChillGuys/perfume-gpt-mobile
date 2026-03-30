//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/gender.dart';
import 'package:perfumegpt_api_client/src/model/scent_note_dto.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_product_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateProductRequest {
  /// Returns a new [UpdateProductRequest] instance.
  UpdateProductRequest({

     this.name,

     this.brandId,

     this.categoryId,

     this.description,

     this.gender,

    required  this.origin,

     this.releaseYear,

     this.olfactoryFamilyIds,

     this.scentNotes,

     this.attributes,

     this.temporaryMediaIdsToAdd,

     this.mediaIdsToDelete,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



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
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



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
    
    name: r'olfactoryFamilyIds',
    required: false,
    includeIfNull: false,
  )


  final List<int>? olfactoryFamilyIds;



  @JsonKey(
    
    name: r'scentNotes',
    required: false,
    includeIfNull: false,
  )


  final List<ScentNoteDto>? scentNotes;



  @JsonKey(
    
    name: r'attributes',
    required: false,
    includeIfNull: false,
  )


  final List<ProductAttributeDto>? attributes;



  @JsonKey(
    
    name: r'temporaryMediaIdsToAdd',
    required: false,
    includeIfNull: false,
  )


  final List<String>? temporaryMediaIdsToAdd;



  @JsonKey(
    
    name: r'mediaIdsToDelete',
    required: false,
    includeIfNull: false,
  )


  final List<String>? mediaIdsToDelete;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateProductRequest &&
      other.name == name &&
      other.brandId == brandId &&
      other.categoryId == categoryId &&
      other.description == description &&
      other.gender == gender &&
      other.origin == origin &&
      other.releaseYear == releaseYear &&
      other.olfactoryFamilyIds == olfactoryFamilyIds &&
      other.scentNotes == scentNotes &&
      other.attributes == attributes &&
      other.temporaryMediaIdsToAdd == temporaryMediaIdsToAdd &&
      other.mediaIdsToDelete == mediaIdsToDelete;

    @override
    int get hashCode =>
        name.hashCode +
        brandId.hashCode +
        categoryId.hashCode +
        (description == null ? 0 : description.hashCode) +
        gender.hashCode +
        origin.hashCode +
        releaseYear.hashCode +
        olfactoryFamilyIds.hashCode +
        scentNotes.hashCode +
        (attributes == null ? 0 : attributes.hashCode) +
        (temporaryMediaIdsToAdd == null ? 0 : temporaryMediaIdsToAdd.hashCode) +
        (mediaIdsToDelete == null ? 0 : mediaIdsToDelete.hashCode);

  factory UpdateProductRequest.fromJson(Map<String, dynamic> json) => _$UpdateProductRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProductRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

