// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_answer_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyAnswerResponseCWProxy {
  SurveyAnswerResponse id(String id);

  SurveyAnswerResponse createdAt(DateTime createdAt);

  SurveyAnswerResponse updatedAt(DateTime updatedAt);

  SurveyAnswerResponse isActive(bool isActive);

  SurveyAnswerResponse questionId(String? questionId);

  SurveyAnswerResponse answer(String? answer);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyAnswerResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyAnswerResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyAnswerResponse call({
    String id,
    DateTime createdAt,
    DateTime updatedAt,
    bool isActive,
    String? questionId,
    String? answer,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyAnswerResponse.copyWith(...)` or call `instanceOfSurveyAnswerResponse.copyWith.fieldName(value)` for a single field.
class _$SurveyAnswerResponseCWProxyImpl
    implements _$SurveyAnswerResponseCWProxy {
  const _$SurveyAnswerResponseCWProxyImpl(this._value);

  final SurveyAnswerResponse _value;

  @override
  SurveyAnswerResponse id(String id) => call(id: id);

  @override
  SurveyAnswerResponse createdAt(DateTime createdAt) =>
      call(createdAt: createdAt);

  @override
  SurveyAnswerResponse updatedAt(DateTime updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  SurveyAnswerResponse isActive(bool isActive) => call(isActive: isActive);

  @override
  SurveyAnswerResponse questionId(String? questionId) =>
      call(questionId: questionId);

  @override
  SurveyAnswerResponse answer(String? answer) => call(answer: answer);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyAnswerResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyAnswerResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyAnswerResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? questionId = const $CopyWithPlaceholder(),
    Object? answer = const $CopyWithPlaceholder(),
  }) {
    return SurveyAnswerResponse(
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
      questionId: questionId == const $CopyWithPlaceholder()
          ? _value.questionId
          // ignore: cast_nullable_to_non_nullable
          : questionId as String?,
      answer: answer == const $CopyWithPlaceholder()
          ? _value.answer
          // ignore: cast_nullable_to_non_nullable
          : answer as String?,
    );
  }
}

extension $SurveyAnswerResponseCopyWith on SurveyAnswerResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyAnswerResponse.copyWith(...)` or `instanceOfSurveyAnswerResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyAnswerResponseCWProxy get copyWith =>
      _$SurveyAnswerResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyAnswerResponse _$SurveyAnswerResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyAnswerResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'createdAt', 'updatedAt', 'isActive'],
  );
  final val = SurveyAnswerResponse(
    id: $checkedConvert('id', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    questionId: $checkedConvert('questionId', (v) => v as String?),
    answer: $checkedConvert('answer', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$SurveyAnswerResponseToJson(
  SurveyAnswerResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'isActive': instance.isActive,
  'questionId': ?instance.questionId,
  'answer': ?instance.answer,
};
