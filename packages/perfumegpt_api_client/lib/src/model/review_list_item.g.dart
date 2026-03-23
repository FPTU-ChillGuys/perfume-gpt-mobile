// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewListItemCWProxy {
  ReviewListItem id(String? id);

  ReviewListItem userId(String? userId);

  ReviewListItem userFullName(String? userFullName);

  ReviewListItem userProfilePictureUrl(String? userProfilePictureUrl);

  ReviewListItem variantId(String? variantId);

  ReviewListItem variantName(String? variantName);

  ReviewListItem rating(int? rating);

  ReviewListItem commentPreview(String? commentPreview);

  ReviewListItem imageCount(int? imageCount);

  ReviewListItem createdAt(DateTime? createdAt);

  ReviewListItem moderatedAt(DateTime? moderatedAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewListItem call({
    String? id,
    String? userId,
    String? userFullName,
    String? userProfilePictureUrl,
    String? variantId,
    String? variantName,
    int? rating,
    String? commentPreview,
    int? imageCount,
    DateTime? createdAt,
    DateTime? moderatedAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReviewListItem.copyWith(...)` or call `instanceOfReviewListItem.copyWith.fieldName(value)` for a single field.
class _$ReviewListItemCWProxyImpl implements _$ReviewListItemCWProxy {
  const _$ReviewListItemCWProxyImpl(this._value);

  final ReviewListItem _value;

  @override
  ReviewListItem id(String? id) => call(id: id);

  @override
  ReviewListItem userId(String? userId) => call(userId: userId);

  @override
  ReviewListItem userFullName(String? userFullName) =>
      call(userFullName: userFullName);

  @override
  ReviewListItem userProfilePictureUrl(String? userProfilePictureUrl) =>
      call(userProfilePictureUrl: userProfilePictureUrl);

  @override
  ReviewListItem variantId(String? variantId) => call(variantId: variantId);

  @override
  ReviewListItem variantName(String? variantName) =>
      call(variantName: variantName);

  @override
  ReviewListItem rating(int? rating) => call(rating: rating);

  @override
  ReviewListItem commentPreview(String? commentPreview) =>
      call(commentPreview: commentPreview);

  @override
  ReviewListItem imageCount(int? imageCount) => call(imageCount: imageCount);

  @override
  ReviewListItem createdAt(DateTime? createdAt) => call(createdAt: createdAt);

  @override
  ReviewListItem moderatedAt(DateTime? moderatedAt) =>
      call(moderatedAt: moderatedAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewListItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? userFullName = const $CopyWithPlaceholder(),
    Object? userProfilePictureUrl = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variantName = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? commentPreview = const $CopyWithPlaceholder(),
    Object? imageCount = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? moderatedAt = const $CopyWithPlaceholder(),
  }) {
    return ReviewListItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      userFullName: userFullName == const $CopyWithPlaceholder()
          ? _value.userFullName
          // ignore: cast_nullable_to_non_nullable
          : userFullName as String?,
      userProfilePictureUrl:
          userProfilePictureUrl == const $CopyWithPlaceholder()
          ? _value.userProfilePictureUrl
          // ignore: cast_nullable_to_non_nullable
          : userProfilePictureUrl as String?,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      variantName: variantName == const $CopyWithPlaceholder()
          ? _value.variantName
          // ignore: cast_nullable_to_non_nullable
          : variantName as String?,
      rating: rating == const $CopyWithPlaceholder()
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as int?,
      commentPreview: commentPreview == const $CopyWithPlaceholder()
          ? _value.commentPreview
          // ignore: cast_nullable_to_non_nullable
          : commentPreview as String?,
      imageCount: imageCount == const $CopyWithPlaceholder()
          ? _value.imageCount
          // ignore: cast_nullable_to_non_nullable
          : imageCount as int?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      moderatedAt: moderatedAt == const $CopyWithPlaceholder()
          ? _value.moderatedAt
          // ignore: cast_nullable_to_non_nullable
          : moderatedAt as DateTime?,
    );
  }
}

extension $ReviewListItemCopyWith on ReviewListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReviewListItem.copyWith(...)` or `instanceOfReviewListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReviewListItemCWProxy get copyWith => _$ReviewListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewListItem _$ReviewListItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ReviewListItem', json, ($checkedConvert) {
      final val = ReviewListItem(
        id: $checkedConvert('id', (v) => v as String?),
        userId: $checkedConvert('userId', (v) => v as String?),
        userFullName: $checkedConvert('userFullName', (v) => v as String?),
        userProfilePictureUrl: $checkedConvert(
          'userProfilePictureUrl',
          (v) => v as String?,
        ),
        variantId: $checkedConvert('variantId', (v) => v as String?),
        variantName: $checkedConvert('variantName', (v) => v as String?),
        rating: $checkedConvert('rating', (v) => (v as num?)?.toInt()),
        commentPreview: $checkedConvert('commentPreview', (v) => v as String?),
        imageCount: $checkedConvert('imageCount', (v) => (v as num?)?.toInt()),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        moderatedAt: $checkedConvert(
          'moderatedAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ReviewListItemToJson(ReviewListItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'userId': ?instance.userId,
      'userFullName': ?instance.userFullName,
      'userProfilePictureUrl': ?instance.userProfilePictureUrl,
      'variantId': ?instance.variantId,
      'variantName': ?instance.variantName,
      'rating': ?instance.rating,
      'commentPreview': ?instance.commentPreview,
      'imageCount': ?instance.imageCount,
      'createdAt': ?instance.createdAt?.toIso8601String(),
      'moderatedAt': ?instance.moderatedAt?.toIso8601String(),
    };
