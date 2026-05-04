// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_get_mobile_survey_questions200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerGetMobileSurveyQuestions200ResponseCWProxy {
  SurveyControllerGetMobileSurveyQuestions200Response success(bool? success);

  SurveyControllerGetMobileSurveyQuestions200Response error(String? error);

  SurveyControllerGetMobileSurveyQuestions200Response details(String? details);

  SurveyControllerGetMobileSurveyQuestions200Response data(
    List<MobileSurveyQuestionItem>? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetMobileSurveyQuestions200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetMobileSurveyQuestions200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetMobileSurveyQuestions200Response call({
    bool? success,
    String? error,
    String? details,
    List<MobileSurveyQuestionItem>? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerGetMobileSurveyQuestions200Response.copyWith(...)` or call `instanceOfSurveyControllerGetMobileSurveyQuestions200Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerGetMobileSurveyQuestions200ResponseCWProxyImpl
    implements _$SurveyControllerGetMobileSurveyQuestions200ResponseCWProxy {
  const _$SurveyControllerGetMobileSurveyQuestions200ResponseCWProxyImpl(
    this._value,
  );

  final SurveyControllerGetMobileSurveyQuestions200Response _value;

  @override
  SurveyControllerGetMobileSurveyQuestions200Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerGetMobileSurveyQuestions200Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerGetMobileSurveyQuestions200Response details(
    String? details,
  ) => call(details: details);

  @override
  SurveyControllerGetMobileSurveyQuestions200Response data(
    List<MobileSurveyQuestionItem>? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetMobileSurveyQuestions200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetMobileSurveyQuestions200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetMobileSurveyQuestions200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerGetMobileSurveyQuestions200Response(
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
          : data as List<MobileSurveyQuestionItem>?,
    );
  }
}

extension $SurveyControllerGetMobileSurveyQuestions200ResponseCopyWith
    on SurveyControllerGetMobileSurveyQuestions200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerGetMobileSurveyQuestions200Response.copyWith(...)` or `instanceOfSurveyControllerGetMobileSurveyQuestions200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerGetMobileSurveyQuestions200ResponseCWProxy get copyWith =>
      _$SurveyControllerGetMobileSurveyQuestions200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerGetMobileSurveyQuestions200Response
_$SurveyControllerGetMobileSurveyQuestions200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SurveyControllerGetMobileSurveyQuestions200Response',
  json,
  ($checkedConvert) {
    final val = SurveyControllerGetMobileSurveyQuestions200Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      details: $checkedConvert('details', (v) => v as String?),
      data: $checkedConvert(
        'data',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) =>
                  MobileSurveyQuestionItem.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$SurveyControllerGetMobileSurveyQuestions200ResponseToJson(
  SurveyControllerGetMobileSurveyQuestions200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.map((e) => e.toJson()).toList(),
};
