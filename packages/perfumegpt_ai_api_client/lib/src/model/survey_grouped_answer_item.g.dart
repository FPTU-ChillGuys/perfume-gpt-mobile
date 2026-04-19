// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_grouped_answer_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyGroupedAnswerItemCWProxy {
  SurveyGroupedAnswerItem detailId(String detailId);

  SurveyGroupedAnswerItem answerId(String answerId);

  SurveyGroupedAnswerItem answer(String answer);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyGroupedAnswerItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyGroupedAnswerItem(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyGroupedAnswerItem call({
    String detailId,
    String answerId,
    String answer,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyGroupedAnswerItem.copyWith(...)` or call `instanceOfSurveyGroupedAnswerItem.copyWith.fieldName(value)` for a single field.
class _$SurveyGroupedAnswerItemCWProxyImpl
    implements _$SurveyGroupedAnswerItemCWProxy {
  const _$SurveyGroupedAnswerItemCWProxyImpl(this._value);

  final SurveyGroupedAnswerItem _value;

  @override
  SurveyGroupedAnswerItem detailId(String detailId) => call(detailId: detailId);

  @override
  SurveyGroupedAnswerItem answerId(String answerId) => call(answerId: answerId);

  @override
  SurveyGroupedAnswerItem answer(String answer) => call(answer: answer);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyGroupedAnswerItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyGroupedAnswerItem(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyGroupedAnswerItem call({
    Object? detailId = const $CopyWithPlaceholder(),
    Object? answerId = const $CopyWithPlaceholder(),
    Object? answer = const $CopyWithPlaceholder(),
  }) {
    return SurveyGroupedAnswerItem(
      detailId: detailId == const $CopyWithPlaceholder() || detailId == null
          ? _value.detailId
          // ignore: cast_nullable_to_non_nullable
          : detailId as String,
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

extension $SurveyGroupedAnswerItemCopyWith on SurveyGroupedAnswerItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyGroupedAnswerItem.copyWith(...)` or `instanceOfSurveyGroupedAnswerItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyGroupedAnswerItemCWProxy get copyWith =>
      _$SurveyGroupedAnswerItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyGroupedAnswerItem _$SurveyGroupedAnswerItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyGroupedAnswerItem', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['detailId', 'answerId', 'answer']);
  final val = SurveyGroupedAnswerItem(
    detailId: $checkedConvert('detailId', (v) => v as String),
    answerId: $checkedConvert('answerId', (v) => v as String),
    answer: $checkedConvert('answer', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$SurveyGroupedAnswerItemToJson(
  SurveyGroupedAnswerItem instance,
) => <String, dynamic>{
  'detailId': instance.detailId,
  'answerId': instance.answerId,
  'answer': instance.answer,
};
