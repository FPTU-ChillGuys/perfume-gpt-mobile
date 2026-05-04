// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_survey_question_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MobileSurveyQuestionItemCWProxy {
  MobileSurveyQuestionItem id(String id);

  MobileSurveyQuestionItem question(String question);

  MobileSurveyQuestionItem questionType(String questionType);

  MobileSurveyQuestionItem order(num order);

  MobileSurveyQuestionItem isActive(bool isActive);

  MobileSurveyQuestionItem answers(List<MobileSurveyAnswerItem> answers);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyQuestionItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyQuestionItem(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyQuestionItem call({
    String id,
    String question,
    String questionType,
    num order,
    bool isActive,
    List<MobileSurveyAnswerItem> answers,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMobileSurveyQuestionItem.copyWith(...)` or call `instanceOfMobileSurveyQuestionItem.copyWith.fieldName(value)` for a single field.
class _$MobileSurveyQuestionItemCWProxyImpl
    implements _$MobileSurveyQuestionItemCWProxy {
  const _$MobileSurveyQuestionItemCWProxyImpl(this._value);

  final MobileSurveyQuestionItem _value;

  @override
  MobileSurveyQuestionItem id(String id) => call(id: id);

  @override
  MobileSurveyQuestionItem question(String question) =>
      call(question: question);

  @override
  MobileSurveyQuestionItem questionType(String questionType) =>
      call(questionType: questionType);

  @override
  MobileSurveyQuestionItem order(num order) => call(order: order);

  @override
  MobileSurveyQuestionItem isActive(bool isActive) => call(isActive: isActive);

  @override
  MobileSurveyQuestionItem answers(List<MobileSurveyAnswerItem> answers) =>
      call(answers: answers);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyQuestionItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyQuestionItem(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyQuestionItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? question = const $CopyWithPlaceholder(),
    Object? questionType = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? answers = const $CopyWithPlaceholder(),
  }) {
    return MobileSurveyQuestionItem(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      question: question == const $CopyWithPlaceholder() || question == null
          ? _value.question
          // ignore: cast_nullable_to_non_nullable
          : question as String,
      questionType:
          questionType == const $CopyWithPlaceholder() || questionType == null
          ? _value.questionType
          // ignore: cast_nullable_to_non_nullable
          : questionType as String,
      order: order == const $CopyWithPlaceholder() || order == null
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as num,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool,
      answers: answers == const $CopyWithPlaceholder() || answers == null
          ? _value.answers
          // ignore: cast_nullable_to_non_nullable
          : answers as List<MobileSurveyAnswerItem>,
    );
  }
}

extension $MobileSurveyQuestionItemCopyWith on MobileSurveyQuestionItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMobileSurveyQuestionItem.copyWith(...)` or `instanceOfMobileSurveyQuestionItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MobileSurveyQuestionItemCWProxy get copyWith =>
      _$MobileSurveyQuestionItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileSurveyQuestionItem _$MobileSurveyQuestionItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MobileSurveyQuestionItem', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'question',
      'questionType',
      'order',
      'isActive',
      'answers',
    ],
  );
  final val = MobileSurveyQuestionItem(
    id: $checkedConvert('id', (v) => v as String),
    question: $checkedConvert('question', (v) => v as String),
    questionType: $checkedConvert('questionType', (v) => v as String),
    order: $checkedConvert('order', (v) => v as num),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    answers: $checkedConvert(
      'answers',
      (v) => (v as List<dynamic>)
          .map(
            (e) => MobileSurveyAnswerItem.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$MobileSurveyQuestionItemToJson(
  MobileSurveyQuestionItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'question': instance.question,
  'questionType': instance.questionType,
  'order': instance.order,
  'isActive': instance.isActive,
  'answers': instance.answers.map((e) => e.toJson()).toList(),
};
