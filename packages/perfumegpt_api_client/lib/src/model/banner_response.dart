//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/banner_link_type.dart';
import 'package:perfumegpt_api_client/src/model/banner_position.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'banner_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BannerResponse {
  /// Returns a new [BannerResponse] instance.
  BannerResponse({

     this.id,

    required  this.title,

    required  this.imageUrl,

     this.imagePublicId,

     this.mobileImageUrl,

     this.mobileImagePublicId,

     this.altText,

     this.position,

     this.displayOrder,

     this.isActive,

     this.startDate,

     this.endDate,

     this.linkType,

     this.linkTarget,

     this.createdAt,

     this.updatedAt,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'title',
    required: true,
    includeIfNull: false,
  )


  final String title;



  @JsonKey(
    
    name: r'imageUrl',
    required: true,
    includeIfNull: false,
  )


  final String imageUrl;



  @JsonKey(
    
    name: r'imagePublicId',
    required: false,
    includeIfNull: false,
  )


  final String? imagePublicId;



  @JsonKey(
    
    name: r'mobileImageUrl',
    required: false,
    includeIfNull: false,
  )


  final String? mobileImageUrl;



  @JsonKey(
    
    name: r'mobileImagePublicId',
    required: false,
    includeIfNull: false,
  )


  final String? mobileImagePublicId;



  @JsonKey(
    
    name: r'altText',
    required: false,
    includeIfNull: false,
  )


  final String? altText;



  @JsonKey(
    
    name: r'position',
    required: false,
    includeIfNull: false,
  )


  final BannerPosition? position;



  @JsonKey(
    
    name: r'displayOrder',
    required: false,
    includeIfNull: false,
  )


  final int? displayOrder;



  @JsonKey(
    
    name: r'isActive',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



  @JsonKey(
    
    name: r'startDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? startDate;



  @JsonKey(
    
    name: r'endDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? endDate;



  @JsonKey(
    
    name: r'linkType',
    required: false,
    includeIfNull: false,
  )


  final BannerLinkType? linkType;



  @JsonKey(
    
    name: r'linkTarget',
    required: false,
    includeIfNull: false,
  )


  final String? linkTarget;



  @JsonKey(
    
    name: r'createdAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;



  @JsonKey(
    
    name: r'updatedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BannerResponse &&
      other.id == id &&
      other.title == title &&
      other.imageUrl == imageUrl &&
      other.imagePublicId == imagePublicId &&
      other.mobileImageUrl == mobileImageUrl &&
      other.mobileImagePublicId == mobileImagePublicId &&
      other.altText == altText &&
      other.position == position &&
      other.displayOrder == displayOrder &&
      other.isActive == isActive &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.linkType == linkType &&
      other.linkTarget == linkTarget &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        id.hashCode +
        title.hashCode +
        imageUrl.hashCode +
        (imagePublicId == null ? 0 : imagePublicId.hashCode) +
        (mobileImageUrl == null ? 0 : mobileImageUrl.hashCode) +
        (mobileImagePublicId == null ? 0 : mobileImagePublicId.hashCode) +
        (altText == null ? 0 : altText.hashCode) +
        position.hashCode +
        displayOrder.hashCode +
        isActive.hashCode +
        (startDate == null ? 0 : startDate.hashCode) +
        (endDate == null ? 0 : endDate.hashCode) +
        linkType.hashCode +
        (linkTarget == null ? 0 : linkTarget.hashCode) +
        createdAt.hashCode +
        (updatedAt == null ? 0 : updatedAt.hashCode);

  factory BannerResponse.fromJson(Map<String, dynamic> json) => _$BannerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BannerResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

