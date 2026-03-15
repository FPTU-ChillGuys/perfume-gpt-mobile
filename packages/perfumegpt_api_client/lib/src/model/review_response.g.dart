// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewResponseCWProxy {
  ReviewResponse id(String? id);

  ReviewResponse userId(String? userId);

  ReviewResponse userFullName(String? userFullName);

  ReviewResponse userProfilePictureUrl(String? userProfilePictureUrl);

  ReviewResponse orderDetailId(String? orderDetailId);

  ReviewResponse variantId(String? variantId);

  ReviewResponse variantName(String? variantName);

  ReviewResponse rating(int? rating);

  ReviewResponse comment(String? comment);

  ReviewResponse images(List<MediaResponse>? images);

  ReviewResponse createdAt(DateTime? createdAt);

  ReviewResponse updatedAt(DateTime? updatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReviewResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReviewResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ReviewResponse call({
    String? id,
    String? userId,
    String? userFullName,
    String? userProfilePictureUrl,
    String? orderDetailId,
    String? variantId,
    String? variantName,
    int? rating,
    String? comment,
    List<MediaResponse>? images,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfReviewResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfReviewResponse.copyWith.fieldName(...)`
class _$ReviewResponseCWProxyImpl implements _$ReviewResponseCWProxy {
  const _$ReviewResponseCWProxyImpl(this._value);

  final ReviewResponse _value;

  @override
  ReviewResponse id(String? id) => this(id: id);

  @override
  ReviewResponse userId(String? userId) => this(userId: userId);

  @override
  ReviewResponse userFullName(String? userFullName) =>
      this(userFullName: userFullName);

  @override
  ReviewResponse userProfilePictureUrl(String? userProfilePictureUrl) =>
      this(userProfilePictureUrl: userProfilePictureUrl);

  @override
  ReviewResponse orderDetailId(String? orderDetailId) =>
      this(orderDetailId: orderDetailId);

  @override
  ReviewResponse variantId(String? variantId) => this(variantId: variantId);

  @override
  ReviewResponse variantName(String? variantName) =>
      this(variantName: variantName);

  @override
  ReviewResponse rating(int? rating) => this(rating: rating);

  @override
  ReviewResponse comment(String? comment) => this(comment: comment);

  @override
  ReviewResponse images(List<MediaResponse>? images) => this(images: images);

  @override
  ReviewResponse createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  ReviewResponse updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ReviewResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ReviewResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ReviewResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? userFullName = const $CopyWithPlaceholder(),
    Object? userProfilePictureUrl = const $CopyWithPlaceholder(),
    Object? orderDetailId = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variantName = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? comment = const $CopyWithPlaceholder(),
    Object? images = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return ReviewResponse(
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
      orderDetailId: orderDetailId == const $CopyWithPlaceholder()
          ? _value.orderDetailId
          // ignore: cast_nullable_to_non_nullable
          : orderDetailId as String?,
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
      comment: comment == const $CopyWithPlaceholder()
          ? _value.comment
          // ignore: cast_nullable_to_non_nullable
          : comment as String?,
      images: images == const $CopyWithPlaceholder()
          ? _value.images
          // ignore: cast_nullable_to_non_nullable
          : images as List<MediaResponse>?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
    );
  }
}

extension $ReviewResponseCopyWith on ReviewResponse {
  /// Returns a callable class that can be used as follows: `instanceOfReviewResponse.copyWith(...)` or like so:`instanceOfReviewResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReviewResponseCWProxy get copyWith => _$ReviewResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewResponse _$ReviewResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ReviewResponse', json, ($checkedConvert) {
      final val = ReviewResponse(
        id: $checkedConvert('id', (v) => v as String?),
        userId: $checkedConvert('userId', (v) => v as String?),
        userFullName: $checkedConvert('userFullName', (v) => v as String?),
        userProfilePictureUrl: $checkedConvert(
          'userProfilePictureUrl',
          (v) => v as String?,
        ),
        orderDetailId: $checkedConvert('orderDetailId', (v) => v as String?),
        variantId: $checkedConvert('variantId', (v) => v as String?),
        variantName: $checkedConvert('variantName', (v) => v as String?),
        rating: $checkedConvert('rating', (v) => (v as num?)?.toInt()),
        comment: $checkedConvert('comment', (v) => v as String?),
        images: $checkedConvert(
          'images',
          (v) => (v as List<dynamic>?)
              ?.map((e) => MediaResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ReviewResponseToJson(ReviewResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'userId': ?instance.userId,
      'userFullName': ?instance.userFullName,
      'userProfilePictureUrl': ?instance.userProfilePictureUrl,
      'orderDetailId': ?instance.orderDetailId,
      'variantId': ?instance.variantId,
      'variantName': ?instance.variantName,
      'rating': ?instance.rating,
      'comment': ?instance.comment,
      'images': ?instance.images?.map((e) => e.toJson()).toList(),
      'createdAt': ?instance.createdAt?.toIso8601String(),
      'updatedAt': ?instance.updatedAt?.toIso8601String(),
    };
