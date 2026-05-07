//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review_list_item_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReviewListItemResponse {
  /// Returns a new [ReviewListItemResponse] instance.
  ReviewListItemResponse({
    required this.commentPreview,

    required this.createdAt,

    required this.id,

    required this.imageCount,

    required this.rating,

    required this.status,

    required this.userFullName,

    required this.userId,

    required this.userProfilePictureUrl,

    required this.variantId,

    required this.variantName,
  });

  /// Xem trước nội dung đánh giá
  @JsonKey(name: r'commentPreview', required: true, includeIfNull: false)
  final String commentPreview;

  /// Ngày tạo đánh giá
  @JsonKey(name: r'createdAt', required: true, includeIfNull: false)
  final DateTime createdAt;

  /// ID đánh giá
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Số lượng hình ảnh
  @JsonKey(name: r'imageCount', required: true, includeIfNull: false)
  final num imageCount;

  /// Số sao đánh giá
  // minimum: 1
  // maximum: 5
  @JsonKey(name: r'rating', required: true, includeIfNull: false)
  final num rating;

  /// Trạng thái đánh giá
  @JsonKey(name: r'status', required: true, includeIfNull: false)
  final ReviewListItemResponseStatusEnum status;

  /// Tên người đánh giá
  @JsonKey(name: r'userFullName', required: true, includeIfNull: false)
  final String userFullName;

  /// ID người đánh giá
  @JsonKey(name: r'userId', required: true, includeIfNull: false)
  final String userId;

  /// URL ảnh đại diện
  @JsonKey(name: r'userProfilePictureUrl', required: true, includeIfNull: true)
  final Object? userProfilePictureUrl;

  /// ID variant sản phẩm
  @JsonKey(name: r'variantId', required: true, includeIfNull: false)
  final String variantId;

  /// Tên variant sản phẩm
  @JsonKey(name: r'variantName', required: true, includeIfNull: false)
  final String variantName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReviewListItemResponse &&
          other.commentPreview == commentPreview &&
          other.createdAt == createdAt &&
          other.id == id &&
          other.imageCount == imageCount &&
          other.rating == rating &&
          other.status == status &&
          other.userFullName == userFullName &&
          other.userId == userId &&
          other.userProfilePictureUrl == userProfilePictureUrl &&
          other.variantId == variantId &&
          other.variantName == variantName;

  @override
  int get hashCode =>
      commentPreview.hashCode +
      createdAt.hashCode +
      id.hashCode +
      imageCount.hashCode +
      rating.hashCode +
      status.hashCode +
      userFullName.hashCode +
      userId.hashCode +
      (userProfilePictureUrl == null ? 0 : userProfilePictureUrl.hashCode) +
      variantId.hashCode +
      variantName.hashCode;

  factory ReviewListItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ReviewListItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewListItemResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Trạng thái đánh giá
enum ReviewListItemResponseStatusEnum {
  /// Trạng thái đánh giá
  @JsonValue(r'Pending')
  pending(r'Pending'),

  /// Trạng thái đánh giá
  @JsonValue(r'Approved')
  approved(r'Approved'),

  /// Trạng thái đánh giá
  @JsonValue(r'Rejected')
  rejected(r'Rejected');

  const ReviewListItemResponseStatusEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
