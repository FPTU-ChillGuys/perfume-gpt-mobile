// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_get_survey_ques_by_id200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerGetSurveyQuesById200ResponseCWProxy {
  SurveyControllerGetSurveyQuesById200Response success(bool? success);

  SurveyControllerGetSurveyQuesById200Response error(String? error);

  SurveyControllerGetSurveyQuesById200Response details(String? details);

  SurveyControllerGetSurveyQuesById200Response data(
    SurveyQuestionResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetSurveyQuesById200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetSurveyQuesById200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetSurveyQuesById200Response call({
    bool? success,
    String? error,
    String? details,
    SurveyQuestionResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerGetSurveyQuesById200Response.copyWith(...)` or call `instanceOfSurveyControllerGetSurveyQuesById200Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerGetSurveyQuesById200ResponseCWProxyImpl
    implements _$SurveyControllerGetSurveyQuesById200ResponseCWProxy {
  const _$SurveyControllerGetSurveyQuesById200ResponseCWProxyImpl(this._value);

  final SurveyControllerGetSurveyQuesById200Response _value;

  @override
  SurveyControllerGetSurveyQuesById200Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerGetSurveyQuesById200Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerGetSurveyQuesById200Response details(String? details) =>
      call(details: details);

  @override
  SurveyControllerGetSurveyQuesById200Response data(
    SurveyQuestionResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetSurveyQuesById200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetSurveyQuesById200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetSurveyQuesById200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerGetSurveyQuesById200Response(
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
          : data as SurveyQuestionResponse?,
    );
  }
}

extension $SurveyControllerGetSurveyQuesById200ResponseCopyWith
    on SurveyControllerGetSurveyQuesById200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerGetSurveyQuesById200Response.copyWith(...)` or `instanceOfSurveyControllerGetSurveyQuesById200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerGetSurveyQuesById200ResponseCWProxy get copyWith =>
      _$SurveyControllerGetSurveyQuesById200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerGetSurveyQuesById200Response
_$SurveyControllerGetSurveyQuesById200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyControllerGetSurveyQuesById200Response', json, (
  $checkedConvert,
) {
  final val = SurveyControllerGetSurveyQuesById200Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    details: $checkedConvert('details', (v) => v as String?),
    data: $checkedConvert(
      'data',
      (v) => v == null
          ? null
          : SurveyQuestionResponse.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$SurveyControllerGetSurveyQuesById200ResponseToJson(
  SurveyControllerGetSurveyQuesById200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
