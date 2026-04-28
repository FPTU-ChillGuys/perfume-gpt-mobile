// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_get_all_surveys200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerGetAllSurveys200ResponseCWProxy {
  SurveyControllerGetAllSurveys200Response success(bool? success);

  SurveyControllerGetAllSurveys200Response error(String? error);

  SurveyControllerGetAllSurveys200Response details(String? details);

  SurveyControllerGetAllSurveys200Response data(
    List<SurveyQuestionResponse>? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetAllSurveys200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetAllSurveys200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetAllSurveys200Response call({
    bool? success,
    String? error,
    String? details,
    List<SurveyQuestionResponse>? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerGetAllSurveys200Response.copyWith(...)` or call `instanceOfSurveyControllerGetAllSurveys200Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerGetAllSurveys200ResponseCWProxyImpl
    implements _$SurveyControllerGetAllSurveys200ResponseCWProxy {
  const _$SurveyControllerGetAllSurveys200ResponseCWProxyImpl(this._value);

  final SurveyControllerGetAllSurveys200Response _value;

  @override
  SurveyControllerGetAllSurveys200Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerGetAllSurveys200Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerGetAllSurveys200Response details(String? details) =>
      call(details: details);

  @override
  SurveyControllerGetAllSurveys200Response data(
    List<SurveyQuestionResponse>? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetAllSurveys200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetAllSurveys200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetAllSurveys200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerGetAllSurveys200Response(
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
          : data as List<SurveyQuestionResponse>?,
    );
  }
}

extension $SurveyControllerGetAllSurveys200ResponseCopyWith
    on SurveyControllerGetAllSurveys200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerGetAllSurveys200Response.copyWith(...)` or `instanceOfSurveyControllerGetAllSurveys200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerGetAllSurveys200ResponseCWProxy get copyWith =>
      _$SurveyControllerGetAllSurveys200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerGetAllSurveys200Response
_$SurveyControllerGetAllSurveys200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SurveyControllerGetAllSurveys200Response', json, (
      $checkedConvert,
    ) {
      final val = SurveyControllerGetAllSurveys200Response(
        success: $checkedConvert('success', (v) => v as bool?),
        error: $checkedConvert('error', (v) => v as String?),
        details: $checkedConvert('details', (v) => v as String?),
        data: $checkedConvert(
          'data',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) =>
                    SurveyQuestionResponse.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SurveyControllerGetAllSurveys200ResponseToJson(
  SurveyControllerGetAllSurveys200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.map((e) => e.toJson()).toList(),
};
