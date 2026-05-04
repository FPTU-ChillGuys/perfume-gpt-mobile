// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_survey_answer.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MobileSurveyAnswerCWProxy {
  MobileSurveyAnswer questionId(String questionId);

  MobileSurveyAnswer answerId(String answerId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyAnswer(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyAnswer(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyAnswer call({String questionId, String answerId});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMobileSurveyAnswer.copyWith(...)` or call `instanceOfMobileSurveyAnswer.copyWith.fieldName(value)` for a single field.
class _$MobileSurveyAnswerCWProxyImpl implements _$MobileSurveyAnswerCWProxy {
  const _$MobileSurveyAnswerCWProxyImpl(this._value);

  final MobileSurveyAnswer _value;

  @override
  MobileSurveyAnswer questionId(String questionId) =>
      call(questionId: questionId);

  @override
  MobileSurveyAnswer answerId(String answerId) => call(answerId: answerId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyAnswer(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyAnswer(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyAnswer call({
    Object? questionId = const $CopyWithPlaceholder(),
    Object? answerId = const $CopyWithPlaceholder(),
  }) {
    return MobileSurveyAnswer(
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

extension $MobileSurveyAnswerCopyWith on MobileSurveyAnswer {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMobileSurveyAnswer.copyWith(...)` or `instanceOfMobileSurveyAnswer.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MobileSurveyAnswerCWProxy get copyWith =>
      _$MobileSurveyAnswerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileSurveyAnswer _$MobileSurveyAnswerFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MobileSurveyAnswer', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['questionId', 'answerId']);
      final val = MobileSurveyAnswer(
        questionId: $checkedConvert('questionId', (v) => v as String),
        answerId: $checkedConvert('answerId', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$MobileSurveyAnswerToJson(MobileSurveyAnswer instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'answerId': instance.answerId,
    };
