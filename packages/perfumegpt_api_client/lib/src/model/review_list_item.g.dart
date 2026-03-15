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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReviewListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReviewListItem(...).copyWith(id: 12, name: "My name")
  /// ````
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

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReviewListItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReviewListItem.copyWith.fieldName(...)`
class _$ReviewListItemCWProxyImpl implements _$ReviewListItemCWProxy {
  const _$ReviewListItemCWProxyImpl(this._value);

  final ReviewListItem _value;

  @override
  ReviewListItem id(String? id) => this(id: id);

  @override
  ReviewListItem userId(String? userId) => this(userId: userId);

  @override
  ReviewListItem userFullName(String? userFullName) =>
      this(userFullName: userFullName);

  @override
  ReviewListItem userProfilePictureUrl(String? userProfilePictureUrl) =>
      this(userProfilePictureUrl: userProfilePictureUrl);

  @override
  ReviewListItem variantId(String? variantId) => this(variantId: variantId);

  @override
  ReviewListItem variantName(String? variantName) =>
      this(variantName: variantName);

  @override
  ReviewListItem rating(int? rating) => this(rating: rating);

  @override
  ReviewListItem commentPreview(String? commentPreview) =>
      this(commentPreview: commentPreview);

  @override
  ReviewListItem imageCount(int? imageCount) => this(imageCount: imageCount);

  @override
  ReviewListItem createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  ReviewListItem moderatedAt(DateTime? moderatedAt) =>
      this(moderatedAt: moderatedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReviewListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReviewListItem(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfReviewListItem.copyWith(...)` or like so:`instanceOfReviewListItem.copyWith.fieldName(...)`.
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
