// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_question_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyQuestionRequestCWProxy {
  SurveyQuestionRequest question(String question);

  SurveyQuestionRequest questionType(
    SurveyQuestionRequestQuestionTypeEnum? questionType,
  );

  SurveyQuestionRequest answers(List<SurveyAnswerRequest> answers);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyQuestionRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyQuestionRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyQuestionRequest call({
    String question,
    SurveyQuestionRequestQuestionTypeEnum? questionType,
    List<SurveyAnswerRequest> answers,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyQuestionRequest.copyWith(...)` or call `instanceOfSurveyQuestionRequest.copyWith.fieldName(value)` for a single field.
class _$SurveyQuestionRequestCWProxyImpl
    implements _$SurveyQuestionRequestCWProxy {
  const _$SurveyQuestionRequestCWProxyImpl(this._value);

  final SurveyQuestionRequest _value;

  @override
  SurveyQuestionRequest question(String question) => call(question: question);

  @override
  SurveyQuestionRequest questionType(
    SurveyQuestionRequestQuestionTypeEnum? questionType,
  ) => call(questionType: questionType);

  @override
  SurveyQuestionRequest answers(List<SurveyAnswerRequest> answers) =>
      call(answers: answers);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyQuestionRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyQuestionRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyQuestionRequest call({
    Object? question = const $CopyWithPlaceholder(),
    Object? questionType = const $CopyWithPlaceholder(),
    Object? answers = const $CopyWithPlaceholder(),
  }) {
    return SurveyQuestionRequest(
      question: question == const $CopyWithPlaceholder() || question == null
          ? _value.question
          // ignore: cast_nullable_to_non_nullable
          : question as String,
      questionType: questionType == const $CopyWithPlaceholder()
          ? _value.questionType
          // ignore: cast_nullable_to_non_nullable
          : questionType as SurveyQuestionRequestQuestionTypeEnum?,
      answers: answers == const $CopyWithPlaceholder() || answers == null
          ? _value.answers
          // ignore: cast_nullable_to_non_nullable
          : answers as List<SurveyAnswerRequest>,
    );
  }
}

extension $SurveyQuestionRequestCopyWith on SurveyQuestionRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyQuestionRequest.copyWith(...)` or `instanceOfSurveyQuestionRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyQuestionRequestCWProxy get copyWith =>
      _$SurveyQuestionRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyQuestionRequest _$SurveyQuestionRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyQuestionRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['question', 'answers']);
  final val = SurveyQuestionRequest(
    question: $checkedConvert('question', (v) => v as String),
    questionType: $checkedConvert(
      'questionType',
      (v) =>
          $enumDecodeNullable(
            _$SurveyQuestionRequestQuestionTypeEnumEnumMap,
            v,
          ) ??
          'single',
    ),
    answers: $checkedConvert(
      'answers',
      (v) => (v as List<dynamic>)
          .map((e) => SurveyAnswerRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$SurveyQuestionRequestToJson(
  SurveyQuestionRequest instance,
) => <String, dynamic>{
  'question': instance.question,
  'questionType':
      ?_$SurveyQuestionRequestQuestionTypeEnumEnumMap[instance.questionType],
  'answers': instance.answers.map((e) => e.toJson()).toList(),
};

const _$SurveyQuestionRequestQuestionTypeEnumEnumMap = {
  SurveyQuestionRequestQuestionTypeEnum.single: 'single',
  SurveyQuestionRequestQuestionTypeEnum.multiple: 'multiple',
};
