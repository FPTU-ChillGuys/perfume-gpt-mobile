//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/banner_link_type.dart';
import 'package:perfumegpt_api_client/src/model/banner_position.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_banner_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateBannerRequest {
  /// Returns a new [CreateBannerRequest] instance.
  CreateBannerRequest({

    required  this.title,

    required  this.temporaryImageId,

     this.temporaryMobileImageId,

     this.altText,

    required  this.position,

     this.displayOrder,

     this.isActive,

     this.startDate,

     this.endDate,

    required  this.linkType,

    required  this.linkTarget,
  });

  @JsonKey(
    
    name: r'title',
    required: true,
    includeIfNull: false,
  )


  final String title;



  @JsonKey(
    
    name: r'temporaryImageId',
    required: true,
    includeIfNull: false,
  )


  final String temporaryImageId;



  @JsonKey(
    
    name: r'temporaryMobileImageId',
    required: false,
    includeIfNull: false,
  )


  final String? temporaryMobileImageId;



  @JsonKey(
    
    name: r'altText',
    required: false,
    includeIfNull: false,
  )


  final String? altText;



  @JsonKey(
    
    name: r'position',
    required: true,
    includeIfNull: false,
  )


  final BannerPosition position;



          // minimum: 0
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
    required: true,
    includeIfNull: false,
  )


  final BannerLinkType linkType;



  @JsonKey(
    
    name: r'linkTarget',
    required: true,
    includeIfNull: false,
  )


  final String linkTarget;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateBannerRequest &&
      other.title == title &&
      other.temporaryImageId == temporaryImageId &&
      other.temporaryMobileImageId == temporaryMobileImageId &&
      other.altText == altText &&
      other.position == position &&
      other.displayOrder == displayOrder &&
      other.isActive == isActive &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.linkType == linkType &&
      other.linkTarget == linkTarget;

    @override
    int get hashCode =>
        title.hashCode +
        temporaryImageId.hashCode +
        (temporaryMobileImageId == null ? 0 : temporaryMobileImageId.hashCode) +
        (altText == null ? 0 : altText.hashCode) +
        position.hashCode +
        displayOrder.hashCode +
        isActive.hashCode +
        (startDate == null ? 0 : startDate.hashCode) +
        (endDate == null ? 0 : endDate.hashCode) +
        linkType.hashCode +
        linkTarget.hashCode;

  factory CreateBannerRequest.fromJson(Map<String, dynamic> json) => _$CreateBannerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateBannerRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

