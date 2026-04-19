// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grouped_survey_question_answer_detail_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GroupedSurveyQuestionAnswerDetailResponseCWProxy {
  GroupedSurveyQuestionAnswerDetailResponse questionId(String questionId);

  GroupedSurveyQuestionAnswerDetailResponse question(String question);

  GroupedSurveyQuestionAnswerDetailResponse answers(
    List<SurveyGroupedAnswerItem> answers,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GroupedSurveyQuestionAnswerDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GroupedSurveyQuestionAnswerDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  GroupedSurveyQuestionAnswerDetailResponse call({
    String questionId,
    String question,
    List<SurveyGroupedAnswerItem> answers,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfGroupedSurveyQuestionAnswerDetailResponse.copyWith(...)` or call `instanceOfGroupedSurveyQuestionAnswerDetailResponse.copyWith.fieldName(value)` for a single field.
class _$GroupedSurveyQuestionAnswerDetailResponseCWProxyImpl
    implements _$GroupedSurveyQuestionAnswerDetailResponseCWProxy {
  const _$GroupedSurveyQuestionAnswerDetailResponseCWProxyImpl(this._value);

  final GroupedSurveyQuestionAnswerDetailResponse _value;

  @override
  GroupedSurveyQuestionAnswerDetailResponse questionId(String questionId) =>
      call(questionId: questionId);

  @override
  GroupedSurveyQuestionAnswerDetailResponse question(String question) =>
      call(question: question);

  @override
  GroupedSurveyQuestionAnswerDetailResponse answers(
    List<SurveyGroupedAnswerItem> answers,
  ) => call(answers: answers);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GroupedSurveyQuestionAnswerDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GroupedSurveyQuestionAnswerDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  GroupedSurveyQuestionAnswerDetailResponse call({
    Object? questionId = const $CopyWithPlaceholder(),
    Object? question = const $CopyWithPlaceholder(),
    Object? answers = const $CopyWithPlaceholder(),
  }) {
    return GroupedSurveyQuestionAnswerDetailResponse(
      questionId:
          questionId == const $CopyWithPlaceholder() || questionId == null
          ? _value.questionId
          // ignore: cast_nullable_to_non_nullable
          : questionId as String,
      question: question == const $CopyWithPlaceholder() || question == null
          ? _value.question
          // ignore: cast_nullable_to_non_nullable
          : question as String,
      answers: answers == const $CopyWithPlaceholder() || answers == null
          ? _value.answers
          // ignore: cast_nullable_to_non_nullable
          : answers as List<SurveyGroupedAnswerItem>,
    );
  }
}

extension $GroupedSurveyQuestionAnswerDetailResponseCopyWith
    on GroupedSurveyQuestionAnswerDetailResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfGroupedSurveyQuestionAnswerDetailResponse.copyWith(...)` or `instanceOfGroupedSurveyQuestionAnswerDetailResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GroupedSurveyQuestionAnswerDetailResponseCWProxy get copyWith =>
      _$GroupedSurveyQuestionAnswerDetailResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupedSurveyQuestionAnswerDetailResponse
_$GroupedSurveyQuestionAnswerDetailResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GroupedSurveyQuestionAnswerDetailResponse', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['questionId', 'question', 'answers']);
  final val = GroupedSurveyQuestionAnswerDetailResponse(
    questionId: $checkedConvert('questionId', (v) => v as String),
    question: $checkedConvert('question', (v) => v as String),
    answers: $checkedConvert(
      'answers',
      (v) => (v as List<dynamic>)
          .map(
            (e) => SurveyGroupedAnswerItem.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$GroupedSurveyQuestionAnswerDetailResponseToJson(
  GroupedSurveyQuestionAnswerDetailResponse instance,
) => <String, dynamic>{
  'questionId': instance.questionId,
  'question': instance.question,
  'answers': instance.answers.map((e) => e.toJson()).toList(),
};
