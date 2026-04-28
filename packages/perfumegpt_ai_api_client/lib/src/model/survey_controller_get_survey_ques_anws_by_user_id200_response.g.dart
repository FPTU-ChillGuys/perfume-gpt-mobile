// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_get_survey_ques_anws_by_user_id200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerGetSurveyQuesAnwsByUserId200ResponseCWProxy {
  SurveyControllerGetSurveyQuesAnwsByUserId200Response success(bool? success);

  SurveyControllerGetSurveyQuesAnwsByUserId200Response error(String? error);

  SurveyControllerGetSurveyQuesAnwsByUserId200Response details(String? details);

  SurveyControllerGetSurveyQuesAnwsByUserId200Response data(
    SurveyQuestionAnswerResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetSurveyQuesAnwsByUserId200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetSurveyQuesAnwsByUserId200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetSurveyQuesAnwsByUserId200Response call({
    bool? success,
    String? error,
    String? details,
    SurveyQuestionAnswerResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerGetSurveyQuesAnwsByUserId200Response.copyWith(...)` or call `instanceOfSurveyControllerGetSurveyQuesAnwsByUserId200Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerGetSurveyQuesAnwsByUserId200ResponseCWProxyImpl
    implements _$SurveyControllerGetSurveyQuesAnwsByUserId200ResponseCWProxy {
  const _$SurveyControllerGetSurveyQuesAnwsByUserId200ResponseCWProxyImpl(
    this._value,
  );

  final SurveyControllerGetSurveyQuesAnwsByUserId200Response _value;

  @override
  SurveyControllerGetSurveyQuesAnwsByUserId200Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerGetSurveyQuesAnwsByUserId200Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerGetSurveyQuesAnwsByUserId200Response details(
    String? details,
  ) => call(details: details);

  @override
  SurveyControllerGetSurveyQuesAnwsByUserId200Response data(
    SurveyQuestionAnswerResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetSurveyQuesAnwsByUserId200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetSurveyQuesAnwsByUserId200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetSurveyQuesAnwsByUserId200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerGetSurveyQuesAnwsByUserId200Response(
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as String?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as SurveyQuestionAnswerResponse?,
    );
  }
}

extension $SurveyControllerGetSurveyQuesAnwsByUserId200ResponseCopyWith
    on SurveyControllerGetSurveyQuesAnwsByUserId200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerGetSurveyQuesAnwsByUserId200Response.copyWith(...)` or `instanceOfSurveyControllerGetSurveyQuesAnwsByUserId200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerGetSurveyQuesAnwsByUserId200ResponseCWProxy get copyWith =>
      _$SurveyControllerGetSurveyQuesAnwsByUserId200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerGetSurveyQuesAnwsByUserId200Response
_$SurveyControllerGetSurveyQuesAnwsByUserId200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SurveyControllerGetSurveyQuesAnwsByUserId200Response',
  json,
  ($checkedConvert) {
    final val = SurveyControllerGetSurveyQuesAnwsByUserId200Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      details: $checkedConvert('details', (v) => v as String?),
      data: $checkedConvert(
        'data',
        (v) => v == null
            ? null
            : SurveyQuestionAnswerResponse.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$SurveyControllerGetSurveyQuesAnwsByUserId200ResponseToJson(
  SurveyControllerGetSurveyQuesAnwsByUserId200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
