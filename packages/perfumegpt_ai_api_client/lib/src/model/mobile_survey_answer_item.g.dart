// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_survey_answer_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MobileSurveyAnswerItemCWProxy {
  MobileSurveyAnswerItem id(String id);

  MobileSurveyAnswerItem answer(String answer);

  MobileSurveyAnswerItem displayText(String displayText);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyAnswerItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyAnswerItem(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyAnswerItem call({String id, String answer, String displayText});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMobileSurveyAnswerItem.copyWith(...)` or call `instanceOfMobileSurveyAnswerItem.copyWith.fieldName(value)` for a single field.
class _$MobileSurveyAnswerItemCWProxyImpl
    implements _$MobileSurveyAnswerItemCWProxy {
  const _$MobileSurveyAnswerItemCWProxyImpl(this._value);

  final MobileSurveyAnswerItem _value;

  @override
  MobileSurveyAnswerItem id(String id) => call(id: id);

  @override
  MobileSurveyAnswerItem answer(String answer) => call(answer: answer);

  @override
  MobileSurveyAnswerItem displayText(String displayText) =>
      call(displayText: displayText);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyAnswerItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyAnswerItem(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyAnswerItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? answer = const $CopyWithPlaceholder(),
    Object? displayText = const $CopyWithPlaceholder(),
  }) {
    return MobileSurveyAnswerItem(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      answer: answer == const $CopyWithPlaceholder() || answer == null
          ? _value.answer
          // ignore: cast_nullable_to_non_nullable
          : answer as String,
      displayText:
          displayText == const $CopyWithPlaceholder() || displayText == null
          ? _value.displayText
          // ignore: cast_nullable_to_non_nullable
          : displayText as String,
    );
  }
}

extension $MobileSurveyAnswerItemCopyWith on MobileSurveyAnswerItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMobileSurveyAnswerItem.copyWith(...)` or `instanceOfMobileSurveyAnswerItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MobileSurveyAnswerItemCWProxy get copyWith =>
      _$MobileSurveyAnswerItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileSurveyAnswerItem _$MobileSurveyAnswerItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MobileSurveyAnswerItem', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['id', 'answer', 'displayText']);
  final val = MobileSurveyAnswerItem(
    id: $checkedConvert('id', (v) => v as String),
    answer: $checkedConvert('answer', (v) => v as String),
    displayText: $checkedConvert('displayText', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$MobileSurveyAnswerItemToJson(
  MobileSurveyAnswerItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'answer': instance.answer,
  'displayText': instance.displayText,
};
