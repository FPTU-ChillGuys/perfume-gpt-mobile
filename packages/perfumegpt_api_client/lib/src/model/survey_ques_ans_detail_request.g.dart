// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_ques_ans_detail_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyQuesAnsDetailRequestCWProxy {
  SurveyQuesAnsDetailRequest questionId(String questionId);

  SurveyQuesAnsDetailRequest answerId(String answerId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyQuesAnsDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyQuesAnsDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyQuesAnsDetailRequest call({String questionId, String answerId});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyQuesAnsDetailRequest.copyWith(...)` or call `instanceOfSurveyQuesAnsDetailRequest.copyWith.fieldName(value)` for a single field.
class _$SurveyQuesAnsDetailRequestCWProxyImpl
    implements _$SurveyQuesAnsDetailRequestCWProxy {
  const _$SurveyQuesAnsDetailRequestCWProxyImpl(this._value);

  final SurveyQuesAnsDetailRequest _value;

  @override
  SurveyQuesAnsDetailRequest questionId(String questionId) =>
      call(questionId: questionId);

  @override
  SurveyQuesAnsDetailRequest answerId(String answerId) =>
      call(answerId: answerId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyQuesAnsDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyQuesAnsDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyQuesAnsDetailRequest call({
    Object? questionId = const $CopyWithPlaceholder(),
    Object? answerId = const $CopyWithPlaceholder(),
  }) {
    return SurveyQuesAnsDetailRequest(
      questionId:
          questionId == const $CopyWithPlaceholder() || questionId == null
          ? _value.questionId
          // ignore: cast_nullable_to_non_nullable
          : questionId as String,
      answerId: answerId == const $CopyWithPlaceholder() || answerId == null
          ? _value.answerId
          // ignore: cast_nullable_to_non_nullable
          : answerId as String,
    );
  }
}

extension $SurveyQuesAnsDetailRequestCopyWith on SurveyQuesAnsDetailRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyQuesAnsDetailRequest.copyWith(...)` or `instanceOfSurveyQuesAnsDetailRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyQuesAnsDetailRequestCWProxy get copyWith =>
      _$SurveyQuesAnsDetailRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyQuesAnsDetailRequest _$SurveyQuesAnsDetailRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyQuesAnsDetailRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['questionId', 'answerId']);
  final val = SurveyQuesAnsDetailRequest(
    questionId: $checkedConvert('questionId', (v) => v as String),
    answerId: $checkedConvert('answerId', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$SurveyQuesAnsDetailRequestToJson(
  SurveyQuesAnsDetailRequest instance,
) => <String, dynamic>{
  'questionId': instance.questionId,
  'answerId': instance.answerId,
};
