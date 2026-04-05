// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_review_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AnswerReviewRequestCWProxy {
  AnswerReviewRequest staffFeedbackComment(String staffFeedbackComment);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AnswerReviewRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AnswerReviewRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  AnswerReviewRequest call({String staffFeedbackComment});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAnswerReviewRequest.copyWith(...)` or call `instanceOfAnswerReviewRequest.copyWith.fieldName(value)` for a single field.
class _$AnswerReviewRequestCWProxyImpl implements _$AnswerReviewRequestCWProxy {
  const _$AnswerReviewRequestCWProxyImpl(this._value);

  final AnswerReviewRequest _value;

  @override
  AnswerReviewRequest staffFeedbackComment(String staffFeedbackComment) =>
      call(staffFeedbackComment: staffFeedbackComment);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AnswerReviewRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AnswerReviewRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  AnswerReviewRequest call({
    Object? staffFeedbackComment = const $CopyWithPlaceholder(),
  }) {
    return AnswerReviewRequest(
      staffFeedbackComment:
          staffFeedbackComment == const $CopyWithPlaceholder() ||
              staffFeedbackComment == null
          ? _value.staffFeedbackComment
          // ignore: cast_nullable_to_non_nullable
          : staffFeedbackComment as String,
    );
  }
}

extension $AnswerReviewRequestCopyWith on AnswerReviewRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAnswerReviewRequest.copyWith(...)` or `instanceOfAnswerReviewRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AnswerReviewRequestCWProxy get copyWith =>
      _$AnswerReviewRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnswerReviewRequest _$AnswerReviewRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AnswerReviewRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['staffFeedbackComment']);
      final val = AnswerReviewRequest(
        staffFeedbackComment: $checkedConvert(
          'staffFeedbackComment',
          (v) => v as String,
        ),
      );
      return val;
    });

Map<String, dynamic> _$AnswerReviewRequestToJson(
  AnswerReviewRequest instance,
) => <String, dynamic>{'staffFeedbackComment': instance.staffFeedbackComment};
