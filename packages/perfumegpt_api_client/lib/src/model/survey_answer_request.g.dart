// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_answer_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyAnswerRequestCWProxy {
  SurveyAnswerRequest answer(String answer);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyAnswerRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyAnswerRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyAnswerRequest call({String answer});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyAnswerRequest.copyWith(...)` or call `instanceOfSurveyAnswerRequest.copyWith.fieldName(value)` for a single field.
class _$SurveyAnswerRequestCWProxyImpl implements _$SurveyAnswerRequestCWProxy {
  const _$SurveyAnswerRequestCWProxyImpl(this._value);

  final SurveyAnswerRequest _value;

  @override
  SurveyAnswerRequest answer(String answer) => call(answer: answer);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyAnswerRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyAnswerRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyAnswerRequest call({Object? answer = const $CopyWithPlaceholder()}) {
    return SurveyAnswerRequest(
      answer: answer == const $CopyWithPlaceholder() || answer == null
          ? _value.answer
          // ignore: cast_nullable_to_non_nullable
          : answer as String,
    );
  }
}

extension $SurveyAnswerRequestCopyWith on SurveyAnswerRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyAnswerRequest.copyWith(...)` or `instanceOfSurveyAnswerRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyAnswerRequestCWProxy get copyWith =>
      _$SurveyAnswerRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyAnswerRequest _$SurveyAnswerRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SurveyAnswerRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['answer']);
      final val = SurveyAnswerRequest(
        answer: $checkedConvert('answer', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$SurveyAnswerRequestToJson(
  SurveyAnswerRequest instance,
) => <String, dynamic>{'answer': instance.answer};
