// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_review_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateReviewRequestCWProxy {
  UpdateReviewRequest rating(int? rating);

  UpdateReviewRequest comment(String? comment);

  UpdateReviewRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  );

  UpdateReviewRequest mediaIdsToDelete(List<String>? mediaIdsToDelete);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateReviewRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateReviewRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateReviewRequest call({
    int? rating,
    String? comment,
    List<String>? temporaryMediaIdsToAdd,
    List<String>? mediaIdsToDelete,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateReviewRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateReviewRequest.copyWith.fieldName(...)`
class _$UpdateReviewRequestCWProxyImpl implements _$UpdateReviewRequestCWProxy {
  const _$UpdateReviewRequestCWProxyImpl(this._value);

  final UpdateReviewRequest _value;

  @override
  UpdateReviewRequest rating(int? rating) => this(rating: rating);

  @override
  UpdateReviewRequest comment(String? comment) => this(comment: comment);

  @override
  UpdateReviewRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  ) => this(temporaryMediaIdsToAdd: temporaryMediaIdsToAdd);

  @override
  UpdateReviewRequest mediaIdsToDelete(List<String>? mediaIdsToDelete) =>
      this(mediaIdsToDelete: mediaIdsToDelete);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateReviewRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateReviewRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateReviewRequest call({
    Object? rating = const $CopyWithPlaceholder(),
    Object? comment = const $CopyWithPlaceholder(),
    Object? temporaryMediaIdsToAdd = const $CopyWithPlaceholder(),
    Object? mediaIdsToDelete = const $CopyWithPlaceholder(),
  }) {
    return UpdateReviewRequest(
      rating: rating == const $CopyWithPlaceholder()
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as int?,
      comment: comment == const $CopyWithPlaceholder()
          ? _value.comment
          // ignore: cast_nullable_to_non_nullable
          : comment as String?,
      temporaryMediaIdsToAdd:
          temporaryMediaIdsToAdd == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIdsToAdd
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIdsToAdd as List<String>?,
      mediaIdsToDelete: mediaIdsToDelete == const $CopyWithPlaceholder()
          ? _value.mediaIdsToDelete
          // ignore: cast_nullable_to_non_nullable
          : mediaIdsToDelete as List<String>?,
    );
  }
}

extension $UpdateReviewRequestCopyWith on UpdateReviewRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateReviewRequest.copyWith(...)` or like so:`instanceOfUpdateReviewRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateReviewRequestCWProxy get copyWith =>
      _$UpdateReviewRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateReviewRequest _$UpdateReviewRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateReviewRequest', json, ($checkedConvert) {
      final val = UpdateReviewRequest(
        rating: $checkedConvert('rating', (v) => (v as num?)?.toInt()),
        comment: $checkedConvert('comment', (v) => v as String?),
        temporaryMediaIdsToAdd: $checkedConvert(
          'temporaryMediaIdsToAdd',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        mediaIdsToDelete: $checkedConvert(
          'mediaIdsToDelete',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UpdateReviewRequestToJson(
  UpdateReviewRequest instance,
) => <String, dynamic>{
  'rating': ?instance.rating,
  'comment': ?instance.comment,
  'temporaryMediaIdsToAdd': ?instance.temporaryMediaIdsToAdd,
  'mediaIdsToDelete': ?instance.mediaIdsToDelete,
};
