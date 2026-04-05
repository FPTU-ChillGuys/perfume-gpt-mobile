//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review_list_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReviewListItem {
  /// Returns a new [ReviewListItem] instance.
  ReviewListItem({
    this.id,

    this.userId,

    required this.userFullName,

    this.userProfilePictureUrl,

    this.variantId,

    required this.variantName,

    this.rating,

    required this.commentPreview,

    this.imageCount,

    this.createdAt,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'userId', required: false, includeIfNull: false)
  final String? userId;

  @JsonKey(name: r'userFullName', required: true, includeIfNull: false)
  final String userFullName;

  @JsonKey(
    name: r'userProfilePictureUrl',
    required: false,
    includeIfNull: false,
  )
  final String? userProfilePictureUrl;

  @JsonKey(name: r'variantId', required: false, includeIfNull: false)
  final String? variantId;

  @JsonKey(name: r'variantName', required: true, includeIfNull: false)
  final String variantName;

  @JsonKey(name: r'rating', required: false, includeIfNull: false)
  final int? rating;

  @JsonKey(name: r'commentPreview', required: true, includeIfNull: false)
  final String commentPreview;

  @JsonKey(name: r'imageCount', required: false, includeIfNull: false)
  final int? imageCount;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReviewListItem &&
          other.id == id &&
          other.userId == userId &&
          other.userFullName == userFullName &&
          other.userProfilePictureUrl == userProfilePictureUrl &&
          other.variantId == variantId &&
          other.variantName == variantName &&
          other.rating == rating &&
          other.commentPreview == commentPreview &&
          other.imageCount == imageCount &&
          other.createdAt == createdAt;

  @override
  int get hashCode =>
      id.hashCode +
      userId.hashCode +
      userFullName.hashCode +
      (userProfilePictureUrl == null ? 0 : userProfilePictureUrl.hashCode) +
      variantId.hashCode +
      variantName.hashCode +
      rating.hashCode +
      commentPreview.hashCode +
      imageCount.hashCode +
      createdAt.hashCode;

  factory ReviewListItem.fromJson(Map<String, dynamic> json) =>
      _$ReviewListItemFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewListItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
