// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_question_answer_detail_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyQuestionAnswerDetailResponseCWProxy {
  SurveyQuestionAnswerDetailResponse id(String id);

  SurveyQuestionAnswerDetailResponse createdAt(DateTime createdAt);

  SurveyQuestionAnswerDetailResponse updatedAt(DateTime updatedAt);

  SurveyQuestionAnswerDetailResponse isActive(bool isActive);

  SurveyQuestionAnswerDetailResponse questionId(String questionId);

  SurveyQuestionAnswerDetailResponse question(String question);

  SurveyQuestionAnswerDetailResponse answerId(String answerId);

  SurveyQuestionAnswerDetailResponse answer(String answer);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyQuestionAnswerDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyQuestionAnswerDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyQuestionAnswerDetailResponse call({
    String id,
    DateTime createdAt,
    DateTime updatedAt,
    bool isActive,
    String questionId,
    String question,
    String answerId,
    String answer,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyQuestionAnswerDetailResponse.copyWith(...)` or call `instanceOfSurveyQuestionAnswerDetailResponse.copyWith.fieldName(value)` for a single field.
class _$SurveyQuestionAnswerDetailResponseCWProxyImpl
    implements _$SurveyQuestionAnswerDetailResponseCWProxy {
  const _$SurveyQuestionAnswerDetailResponseCWProxyImpl(this._value);

  final SurveyQuestionAnswerDetailResponse _value;

  @override
  SurveyQuestionAnswerDetailResponse id(String id) => call(id: id);

  @override
  SurveyQuestionAnswerDetailResponse createdAt(DateTime createdAt) =>
      call(createdAt: createdAt);

  @override
  SurveyQuestionAnswerDetailResponse updatedAt(DateTime updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  SurveyQuestionAnswerDetailResponse isActive(bool isActive) =>
      call(isActive: isActive);

  @override
  SurveyQuestionAnswerDetailResponse questionId(String questionId) =>
      call(questionId: questionId);

  @override
  SurveyQuestionAnswerDetailResponse question(String question) =>
      call(question: question);

  @override
  SurveyQuestionAnswerDetailResponse answerId(String answerId) =>
      call(answerId: answerId);

  @override
  SurveyQuestionAnswerDetailResponse answer(String answer) =>
      call(answer: answer);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyQuestionAnswerDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyQuestionAnswerDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyQuestionAnswerDetailResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? questionId = const $CopyWithPlaceholder(),
    Object? question = const $CopyWithPlaceholder(),
    Object? answerId = const $CopyWithPlaceholder(),
    Object? answer = const $CopyWithPlaceholder(),
  }) {
    return SurveyQuestionAnswerDetailResponse(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool,
      questionId:
          questionId == const $CopyWithPlaceholder() || questionId == null
          ? _value.questionId
          // ignore: cast_nullable_to_non_nullable
          : questionId as String,
      question: question == const $CopyWithPlaceholder() || question == null
          ? _value.question
          // ignore: cast_nullable_to_non_nullable
          : question as String,
      answerId: answerId == const $CopyWithPlaceholder() || answerId == null
          ? _value.answerId
          // ignore: cast_nullable_to_non_nullable
          : answerId as String,
      answer: answer == const $CopyWithPlaceholder() || answer == null
          ? _value.answer
          // ignore: cast_nullable_to_non_nullable
          : answer as String,
    );
  }
}

extension $SurveyQuestionAnswerDetailResponseCopyWith
    on SurveyQuestionAnswerDetailResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyQuestionAnswerDetailResponse.copyWith(...)` or `instanceOfSurveyQuestionAnswerDetailResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyQuestionAnswerDetailResponseCWProxy get copyWith =>
      _$SurveyQuestionAnswerDetailResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyQuestionAnswerDetailResponse _$SurveyQuestionAnswerDetailResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyQuestionAnswerDetailResponse', json, (
  $checkedConvert,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'createdAt',
      'updatedAt',
      'isActive',
      'questionId',
      'question',
      'answerId',
      'answer',
    ],
  );
  final val = SurveyQuestionAnswerDetailResponse(
    id: $checkedConvert('id', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    questionId: $checkedConvert('questionId', (v) => v as String),
    question: $checkedConvert('question', (v) => v as String),
    answerId: $checkedConvert('answerId', (v) => v as String),
    answer: $checkedConvert('answer', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$SurveyQuestionAnswerDetailResponseToJson(
  SurveyQuestionAnswerDetailResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'isActive': instance.isActive,
  'questionId': instance.questionId,
  'question': instance.question,
  'answerId': instance.answerId,
  'answer': instance.answer,
};
