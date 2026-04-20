// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_list_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewListItemResponseCWProxy {
  ReviewListItemResponse commentPreview(String commentPreview);

  ReviewListItemResponse createdAt(DateTime createdAt);

  ReviewListItemResponse id(String id);

  ReviewListItemResponse imageCount(num imageCount);

  ReviewListItemResponse rating(num rating);

  ReviewListItemResponse status(ReviewListItemResponseStatusEnum status);

  ReviewListItemResponse userFullName(String userFullName);

  ReviewListItemResponse userId(String userId);

  ReviewListItemResponse userProfilePictureUrl(Object? userProfilePictureUrl);

  ReviewListItemResponse variantId(String variantId);

  ReviewListItemResponse variantName(String variantName);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewListItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewListItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewListItemResponse call({
    String commentPreview,
    DateTime createdAt,
    String id,
    num imageCount,
    num rating,
    ReviewListItemResponseStatusEnum status,
    String userFullName,
    String userId,
    Object? userProfilePictureUrl,
    String variantId,
    String variantName,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReviewListItemResponse.copyWith(...)` or call `instanceOfReviewListItemResponse.copyWith.fieldName(value)` for a single field.
class _$ReviewListItemResponseCWProxyImpl
    implements _$ReviewListItemResponseCWProxy {
  const _$ReviewListItemResponseCWProxyImpl(this._value);

  final ReviewListItemResponse _value;

  @override
  ReviewListItemResponse commentPreview(String commentPreview) =>
      call(commentPreview: commentPreview);

  @override
  ReviewListItemResponse createdAt(DateTime createdAt) =>
      call(createdAt: createdAt);

  @override
  ReviewListItemResponse id(String id) => call(id: id);

  @override
  ReviewListItemResponse imageCount(num imageCount) =>
      call(imageCount: imageCount);

  @override
  ReviewListItemResponse rating(num rating) => call(rating: rating);

  @override
  ReviewListItemResponse status(ReviewListItemResponseStatusEnum status) =>
      call(status: status);

  @override
  ReviewListItemResponse userFullName(String userFullName) =>
      call(userFullName: userFullName);

  @override
  ReviewListItemResponse userId(String userId) => call(userId: userId);

  @override
  ReviewListItemResponse userProfilePictureUrl(Object? userProfilePictureUrl) =>
      call(userProfilePictureUrl: userProfilePictureUrl);

  @override
  ReviewListItemResponse variantId(String variantId) =>
      call(variantId: variantId);

  @override
  ReviewListItemResponse variantName(String variantName) =>
      call(variantName: variantName);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewListItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewListItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewListItemResponse call({
    Object? commentPreview = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? imageCount = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? userFullName = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? userProfilePictureUrl = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variantName = const $CopyWithPlaceholder(),
  }) {
    return ReviewListItemResponse(
      commentPreview:
          commentPreview == const $CopyWithPlaceholder() ||
              commentPreview == null
          ? _value.commentPreview
          // ignore: cast_nullable_to_non_nullable
          : commentPreview as String,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      imageCount:
          imageCount == const $CopyWithPlaceholder() || imageCount == null
          ? _value.imageCount
          // ignore: cast_nullable_to_non_nullable
          : imageCount as num,
      rating: rating == const $CopyWithPlaceholder() || rating == null
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as num,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ReviewListItemResponseStatusEnum,
      userFullName:
          userFullName == const $CopyWithPlaceholder() || userFullName == null
          ? _value.userFullName
          // ignore: cast_nullable_to_non_nullable
          : userFullName as String,
      userId: userId == const $CopyWithPlaceholder() || userId == null
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String,
      userProfilePictureUrl:
          userProfilePictureUrl == const $CopyWithPlaceholder()
          ? _value.userProfilePictureUrl
          // ignore: cast_nullable_to_non_nullable
          : userProfilePictureUrl as Object?,
      variantId: variantId == const $CopyWithPlaceholder() || variantId == null
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String,
      variantName:
          variantName == const $CopyWithPlaceholder() || variantName == null
          ? _value.variantName
          // ignore: cast_nullable_to_non_nullable
          : variantName as String,
    );
  }
}

extension $ReviewListItemResponseCopyWith on ReviewListItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReviewListItemResponse.copyWith(...)` or `instanceOfReviewListItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReviewListItemResponseCWProxy get copyWith =>
      _$ReviewListItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewListItemResponse _$ReviewListItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ReviewListItemResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'commentPreview',
      'createdAt',
      'id',
      'imageCount',
      'rating',
      'status',
      'userFullName',
      'userId',
      'userProfilePictureUrl',
      'variantId',
      'variantName',
    ],
  );
  final val = ReviewListItemResponse(
    commentPreview: $checkedConvert('commentPreview', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    id: $checkedConvert('id', (v) => v as String),
    imageCount: $checkedConvert('imageCount', (v) => v as num),
    rating: $checkedConvert('rating', (v) => v as num),
    status: $checkedConvert(
      'status',
      (v) => $enumDecode(_$ReviewListItemResponseStatusEnumEnumMap, v),
    ),
    userFullName: $checkedConvert('userFullName', (v) => v as String),
    userId: $checkedConvert('userId', (v) => v as String),
    userProfilePictureUrl: $checkedConvert('userProfilePictureUrl', (v) => v),
    variantId: $checkedConvert('variantId', (v) => v as String),
    variantName: $checkedConvert('variantName', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ReviewListItemResponseToJson(
  ReviewListItemResponse instance,
) => <String, dynamic>{
  'commentPreview': instance.commentPreview,
  'createdAt': instance.createdAt.toIso8601String(),
  'id': instance.id,
  'imageCount': instance.imageCount,
  'rating': instance.rating,
  'status': _$ReviewListItemResponseStatusEnumEnumMap[instance.status]!,
  'userFullName': instance.userFullName,
  'userId': instance.userId,
  'userProfilePictureUrl': instance.userProfilePictureUrl,
  'variantId': instance.variantId,
  'variantName': instance.variantName,
};

const _$ReviewListItemResponseStatusEnumEnumMap = {
  ReviewListItemResponseStatusEnum.pending: 'Pending',
  ReviewListItemResponseStatusEnum.approved: 'Approved',
  ReviewListItemResponseStatusEnum.rejected: 'Rejected',
};
