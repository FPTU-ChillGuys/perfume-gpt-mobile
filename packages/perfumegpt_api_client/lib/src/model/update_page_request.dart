//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_page_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdatePageRequest {
  /// Returns a new [UpdatePageRequest] instance.
  UpdatePageRequest({
    required this.title,

    required this.slug,

    required this.htmlContent,

    this.metaDescription,

    this.temporaryMediaIdsToAdd,

    this.mediaIdsToDelete,
  });

  @JsonKey(name: r'title', required: true, includeIfNull: false)
  final String title;

  @JsonKey(name: r'slug', required: true, includeIfNull: false)
  final String slug;

  @JsonKey(name: r'htmlContent', required: true, includeIfNull: false)
  final String htmlContent;

  @JsonKey(name: r'metaDescription', required: false, includeIfNull: false)
  final String? metaDescription;

  @JsonKey(
    name: r'temporaryMediaIdsToAdd',
    required: false,
    includeIfNull: false,
  )
  final List<String>? temporaryMediaIdsToAdd;

  @JsonKey(name: r'mediaIdsToDelete', required: false, includeIfNull: false)
  final List<String>? mediaIdsToDelete;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdatePageRequest &&
          other.title == title &&
          other.slug == slug &&
          other.htmlContent == htmlContent &&
          other.metaDescription == metaDescription &&
          other.temporaryMediaIdsToAdd == temporaryMediaIdsToAdd &&
          other.mediaIdsToDelete == mediaIdsToDelete;

  @override
  int get hashCode =>
      title.hashCode +
      slug.hashCode +
      htmlContent.hashCode +
      (metaDescription == null ? 0 : metaDescription.hashCode) +
      (temporaryMediaIdsToAdd == null ? 0 : temporaryMediaIdsToAdd.hashCode) +
      (mediaIdsToDelete == null ? 0 : mediaIdsToDelete.hashCode);

  factory UpdatePageRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatePageRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
