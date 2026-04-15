// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_question_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyQuestionResponseCWProxy {
  SurveyQuestionResponse id(String id);

  SurveyQuestionResponse createdAt(DateTime createdAt);

  SurveyQuestionResponse updatedAt(DateTime updatedAt);

  SurveyQuestionResponse isActive(bool isActive);

  SurveyQuestionResponse questionType(
    SurveyQuestionResponseQuestionTypeEnum? questionType,
  );

  SurveyQuestionResponse question(String? question);

  SurveyQuestionResponse answers(List<SurveyAnswerResponse>? answers);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyQuestionResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyQuestionResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyQuestionResponse call({
    String id,
    DateTime createdAt,
    DateTime updatedAt,
    bool isActive,
    SurveyQuestionResponseQuestionTypeEnum? questionType,
    String? question,
    List<SurveyAnswerResponse>? answers,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyQuestionResponse.copyWith(...)` or call `instanceOfSurveyQuestionResponse.copyWith.fieldName(value)` for a single field.
class _$SurveyQuestionResponseCWProxyImpl
    implements _$SurveyQuestionResponseCWProxy {
  const _$SurveyQuestionResponseCWProxyImpl(this._value);

  final SurveyQuestionResponse _value;

  @override
  SurveyQuestionResponse id(String id) => call(id: id);

  @override
  SurveyQuestionResponse createdAt(DateTime createdAt) =>
      call(createdAt: createdAt);

  @override
  SurveyQuestionResponse updatedAt(DateTime updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  SurveyQuestionResponse isActive(bool isActive) => call(isActive: isActive);

  @override
  SurveyQuestionResponse questionType(
    SurveyQuestionResponseQuestionTypeEnum? questionType,
  ) => call(questionType: questionType);

  @override
  SurveyQuestionResponse question(String? question) => call(question: question);

  @override
  SurveyQuestionResponse answers(List<SurveyAnswerResponse>? answers) =>
      call(answers: answers);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyQuestionResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyQuestionResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyQuestionResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? questionType = const $CopyWithPlaceholder(),
    Object? question = const $CopyWithPlaceholder(),
    Object? answers = const $CopyWithPlaceholder(),
  }) {
    return SurveyQuestionResponse(
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
      questionType: questionType == const $CopyWithPlaceholder()
          ? _value.questionType
          // ignore: cast_nullable_to_non_nullable
          : questionType as SurveyQuestionResponseQuestionTypeEnum?,
      question: question == const $CopyWithPlaceholder()
          ? _value.question
          // ignore: cast_nullable_to_non_nullable
          : question as String?,
      answers: answers == const $CopyWithPlaceholder()
          ? _value.answers
          // ignore: cast_nullable_to_non_nullable
          : answers as List<SurveyAnswerResponse>?,
    );
  }
}

extension $SurveyQuestionResponseCopyWith on SurveyQuestionResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyQuestionResponse.copyWith(...)` or `instanceOfSurveyQuestionResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyQuestionResponseCWProxy get copyWith =>
      _$SurveyQuestionResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyQuestionResponse _$SurveyQuestionResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyQuestionResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'createdAt', 'updatedAt', 'isActive'],
  );
  final val = SurveyQuestionResponse(
    id: $checkedConvert('id', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    questionType: $checkedConvert(
      'questionType',
      (v) => $enumDecodeNullable(
        _$SurveyQuestionResponseQuestionTypeEnumEnumMap,
        v,
      ),
    ),
    question: $checkedConvert('question', (v) => v as String?),
    answers: $checkedConvert(
      'answers',
      (v) => (v as List<dynamic>?)
          ?.map((e) => SurveyAnswerResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$SurveyQuestionResponseToJson(
  SurveyQuestionResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'isActive': instance.isActive,
  'questionType':
      ?_$SurveyQuestionResponseQuestionTypeEnumEnumMap[instance.questionType],
  'question': ?instance.question,
  'answers': ?instance.answers?.map((e) => e.toJson()).toList(),
};

const _$SurveyQuestionResponseQuestionTypeEnumEnumMap = {
  SurveyQuestionResponseQuestionTypeEnum.single: 'single',
  SurveyQuestionResponseQuestionTypeEnum.multiple: 'multiple',
};
