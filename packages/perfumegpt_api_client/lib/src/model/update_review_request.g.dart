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

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateReviewRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateReviewRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateReviewRequest call({
    int? rating,
    String? comment,
    List<String>? temporaryMediaIdsToAdd,
    List<String>? mediaIdsToDelete,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateReviewRequest.copyWith(...)` or call `instanceOfUpdateReviewRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateReviewRequestCWProxyImpl implements _$UpdateReviewRequestCWProxy {
  const _$UpdateReviewRequestCWProxyImpl(this._value);

  final UpdateReviewRequest _value;

  @override
  UpdateReviewRequest rating(int? rating) => call(rating: rating);

  @override
  UpdateReviewRequest comment(String? comment) => call(comment: comment);

  @override
  UpdateReviewRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  ) => call(temporaryMediaIdsToAdd: temporaryMediaIdsToAdd);

  @override
  UpdateReviewRequest mediaIdsToDelete(List<String>? mediaIdsToDelete) =>
      call(mediaIdsToDelete: mediaIdsToDelete);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateReviewRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateReviewRequest(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateReviewRequest.copyWith(...)` or `instanceOfUpdateReviewRequest.copyWith.fieldName(...)`.
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
