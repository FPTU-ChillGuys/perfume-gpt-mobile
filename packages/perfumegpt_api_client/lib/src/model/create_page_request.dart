//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_page_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreatePageRequest {
  /// Returns a new [CreatePageRequest] instance.
  CreatePageRequest({

    required  this.title,

    required  this.slug,

    required  this.htmlContent,

     this.isPublished,

     this.metaDescription,

     this.temporaryMediaIds,
  });

  @JsonKey(
    
    name: r'title',
    required: true,
    includeIfNull: false,
  )


  final String title;



  @JsonKey(
    
    name: r'slug',
    required: true,
    includeIfNull: false,
  )


  final String slug;



  @JsonKey(
    
    name: r'htmlContent',
    required: true,
    includeIfNull: false,
  )


  final String htmlContent;



  @JsonKey(
    
    name: r'isPublished',
    required: false,
    includeIfNull: false,
  )


  final bool? isPublished;



  @JsonKey(
    
    name: r'metaDescription',
    required: false,
    includeIfNull: false,
  )


  final String? metaDescription;



  @JsonKey(
    
    name: r'temporaryMediaIds',
    required: false,
    includeIfNull: false,
  )


  final List<String>? temporaryMediaIds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreatePageRequest &&
      other.title == title &&
      other.slug == slug &&
      other.htmlContent == htmlContent &&
      other.isPublished == isPublished &&
      other.metaDescription == metaDescription &&
      other.temporaryMediaIds == temporaryMediaIds;

    @override
    int get hashCode =>
        title.hashCode +
        slug.hashCode +
        htmlContent.hashCode +
        isPublished.hashCode +
        (metaDescription == null ? 0 : metaDescription.hashCode) +
        (temporaryMediaIds == null ? 0 : temporaryMediaIds.hashCode);

  factory CreatePageRequest.fromJson(Map<String, dynamic> json) => _$CreatePageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePageRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

