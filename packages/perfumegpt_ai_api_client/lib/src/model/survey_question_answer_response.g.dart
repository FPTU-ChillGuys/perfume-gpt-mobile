// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_question_answer_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyQuestionAnswerResponseCWProxy {
  SurveyQuestionAnswerResponse id(String id);

  SurveyQuestionAnswerResponse createdAt(DateTime createdAt);

  SurveyQuestionAnswerResponse updatedAt(DateTime updatedAt);

  SurveyQuestionAnswerResponse isActive(bool isActive);

  SurveyQuestionAnswerResponse userId(String userId);

  SurveyQuestionAnswerResponse details(
    List<GroupedSurveyQuestionAnswerDetailResponse> details,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyQuestionAnswerResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyQuestionAnswerResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyQuestionAnswerResponse call({
    String id,
    DateTime createdAt,
    DateTime updatedAt,
    bool isActive,
    String userId,
    List<GroupedSurveyQuestionAnswerDetailResponse> details,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyQuestionAnswerResponse.copyWith(...)` or call `instanceOfSurveyQuestionAnswerResponse.copyWith.fieldName(value)` for a single field.
class _$SurveyQuestionAnswerResponseCWProxyImpl
    implements _$SurveyQuestionAnswerResponseCWProxy {
  const _$SurveyQuestionAnswerResponseCWProxyImpl(this._value);

  final SurveyQuestionAnswerResponse _value;

  @override
  SurveyQuestionAnswerResponse id(String id) => call(id: id);

  @override
  SurveyQuestionAnswerResponse createdAt(DateTime createdAt) =>
      call(createdAt: createdAt);

  @override
  SurveyQuestionAnswerResponse updatedAt(DateTime updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  SurveyQuestionAnswerResponse isActive(bool isActive) =>
      call(isActive: isActive);

  @override
  SurveyQuestionAnswerResponse userId(String userId) => call(userId: userId);

  @override
  SurveyQuestionAnswerResponse details(
    List<GroupedSurveyQuestionAnswerDetailResponse> details,
  ) => call(details: details);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyQuestionAnswerResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyQuestionAnswerResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyQuestionAnswerResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
  }) {
    return SurveyQuestionAnswerResponse(
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
      userId: userId == const $CopyWithPlaceholder() || userId == null
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String,
      details: details == const $CopyWithPlaceholder() || details == null
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as List<GroupedSurveyQuestionAnswerDetailResponse>,
    );
  }
}

extension $SurveyQuestionAnswerResponseCopyWith
    on SurveyQuestionAnswerResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyQuestionAnswerResponse.copyWith(...)` or `instanceOfSurveyQuestionAnswerResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyQuestionAnswerResponseCWProxy get copyWith =>
      _$SurveyQuestionAnswerResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyQuestionAnswerResponse _$SurveyQuestionAnswerResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyQuestionAnswerResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'createdAt',
      'updatedAt',
      'isActive',
      'userId',
      'details',
    ],
  );
  final val = SurveyQuestionAnswerResponse(
    id: $checkedConvert('id', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    userId: $checkedConvert('userId', (v) => v as String),
    details: $checkedConvert(
      'details',
      (v) => (v as List<dynamic>)
          .map(
            (e) => GroupedSurveyQuestionAnswerDetailResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$SurveyQuestionAnswerResponseToJson(
  SurveyQuestionAnswerResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'isActive': instance.isActive,
  'userId': instance.userId,
  'details': instance.details.map((e) => e.toJson()).toList(),
};
