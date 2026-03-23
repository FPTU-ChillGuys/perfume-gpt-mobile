// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_review_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateReviewRequestCWProxy {
  CreateReviewRequest orderDetailId(String? orderDetailId);

  CreateReviewRequest rating(int? rating);

  CreateReviewRequest comment(String? comment);

  CreateReviewRequest temporaryMediaIds(List<String>? temporaryMediaIds);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateReviewRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateReviewRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateReviewRequest call({
    String? orderDetailId,
    int? rating,
    String? comment,
    List<String>? temporaryMediaIds,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateReviewRequest.copyWith(...)` or call `instanceOfCreateReviewRequest.copyWith.fieldName(value)` for a single field.
class _$CreateReviewRequestCWProxyImpl implements _$CreateReviewRequestCWProxy {
  const _$CreateReviewRequestCWProxyImpl(this._value);

  final CreateReviewRequest _value;

  @override
  CreateReviewRequest orderDetailId(String? orderDetailId) =>
      call(orderDetailId: orderDetailId);

  @override
  CreateReviewRequest rating(int? rating) => call(rating: rating);

  @override
  CreateReviewRequest comment(String? comment) => call(comment: comment);

  @override
  CreateReviewRequest temporaryMediaIds(List<String>? temporaryMediaIds) =>
      call(temporaryMediaIds: temporaryMediaIds);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateReviewRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateReviewRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateReviewRequest call({
    Object? orderDetailId = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? comment = const $CopyWithPlaceholder(),
    Object? temporaryMediaIds = const $CopyWithPlaceholder(),
  }) {
    return CreateReviewRequest(
      orderDetailId: orderDetailId == const $CopyWithPlaceholder()
          ? _value.orderDetailId
          // ignore: cast_nullable_to_non_nullable
          : orderDetailId as String?,
      rating: rating == const $CopyWithPlaceholder()
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as int?,
      comment: comment == const $CopyWithPlaceholder()
          ? _value.comment
          // ignore: cast_nullable_to_non_nullable
          : comment as String?,
      temporaryMediaIds: temporaryMediaIds == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIds
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIds as List<String>?,
    );
  }
}

extension $CreateReviewRequestCopyWith on CreateReviewRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateReviewRequest.copyWith(...)` or `instanceOfCreateReviewRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateReviewRequestCWProxy get copyWith =>
      _$CreateReviewRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateReviewRequest _$CreateReviewRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreateReviewRequest', json, ($checkedConvert) {
      final val = CreateReviewRequest(
        orderDetailId: $checkedConvert('orderDetailId', (v) => v as String?),
        rating: $checkedConvert('rating', (v) => (v as num?)?.toInt()),
        comment: $checkedConvert('comment', (v) => v as String?),
        temporaryMediaIds: $checkedConvert(
          'temporaryMediaIds',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CreateReviewRequestToJson(
  CreateReviewRequest instance,
) => <String, dynamic>{
  'orderDetailId': ?instance.orderDetailId,
  'rating': ?instance.rating,
  'comment': ?instance.comment,
  'temporaryMediaIds': ?instance.temporaryMediaIds,
};
