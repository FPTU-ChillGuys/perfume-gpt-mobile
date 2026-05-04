// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_survey_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MobileSurveyRequestCWProxy {
  MobileSurveyRequest userId(String userId);

  MobileSurveyRequest answers(List<MobileSurveyAnswer> answers);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyRequest call({String userId, List<MobileSurveyAnswer> answers});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMobileSurveyRequest.copyWith(...)` or call `instanceOfMobileSurveyRequest.copyWith.fieldName(value)` for a single field.
class _$MobileSurveyRequestCWProxyImpl implements _$MobileSurveyRequestCWProxy {
  const _$MobileSurveyRequestCWProxyImpl(this._value);

  final MobileSurveyRequest _value;

  @override
  MobileSurveyRequest userId(String userId) => call(userId: userId);

  @override
  MobileSurveyRequest answers(List<MobileSurveyAnswer> answers) =>
      call(answers: answers);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyRequest call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? answers = const $CopyWithPlaceholder(),
  }) {
    return MobileSurveyRequest(
      userId: userId == const $CopyWithPlaceholder() || userId == null
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String,
      answers: answers == const $CopyWithPlaceholder() || answers == null
          ? _value.answers
          // ignore: cast_nullable_to_non_nullable
          : answers as List<MobileSurveyAnswer>,
    );
  }
}

extension $MobileSurveyRequestCopyWith on MobileSurveyRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMobileSurveyRequest.copyWith(...)` or `instanceOfMobileSurveyRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MobileSurveyRequestCWProxy get copyWith =>
      _$MobileSurveyRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileSurveyRequest _$MobileSurveyRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MobileSurveyRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['userId', 'answers']);
      final val = MobileSurveyRequest(
        userId: $checkedConvert('userId', (v) => v as String),
        answers: $checkedConvert(
          'answers',
          (v) => (v as List<dynamic>)
              .map(
                (e) => MobileSurveyAnswer.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$MobileSurveyRequestToJson(
  MobileSurveyRequest instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'answers': instance.answers.map((e) => e.toJson()).toList(),
};
