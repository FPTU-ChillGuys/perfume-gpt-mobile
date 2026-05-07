//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'page_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PageResponse {
  /// Returns a new [PageResponse] instance.
  PageResponse({
    required this.slug,

    required this.title,

    required this.htmlContent,

    this.isPublished,

    this.metaDescription,

    required this.images,

    this.updatedAt,
  });

  @JsonKey(name: r'slug', required: true, includeIfNull: false)
  final String slug;

  @JsonKey(name: r'title', required: true, includeIfNull: false)
  final String title;

  @JsonKey(name: r'htmlContent', required: true, includeIfNull: false)
  final String htmlContent;

  @JsonKey(name: r'isPublished', required: false, includeIfNull: false)
  final bool? isPublished;

  @JsonKey(name: r'metaDescription', required: false, includeIfNull: false)
  final String? metaDescription;

  @JsonKey(name: r'images', required: true, includeIfNull: false)
  final List<MediaResponse> images;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PageResponse &&
          other.slug == slug &&
          other.title == title &&
          other.htmlContent == htmlContent &&
          other.isPublished == isPublished &&
          other.metaDescription == metaDescription &&
          other.images == images &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      slug.hashCode +
      title.hashCode +
      htmlContent.hashCode +
      isPublished.hashCode +
      (metaDescription == null ? 0 : metaDescription.hashCode) +
      images.hashCode +
      updatedAt.hashCode;

  factory PageResponse.fromJson(Map<String, dynamic> json) =>
      _$PageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PageResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
