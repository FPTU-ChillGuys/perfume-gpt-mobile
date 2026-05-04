// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_submit_mobile_survey200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerSubmitMobileSurvey200ResponseCWProxy {
  SurveyControllerSubmitMobileSurvey200Response success(bool? success);

  SurveyControllerSubmitMobileSurvey200Response error(String? error);

  SurveyControllerSubmitMobileSurvey200Response details(String? details);

  SurveyControllerSubmitMobileSurvey200Response data(
    MobileSurveyResponseData? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerSubmitMobileSurvey200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerSubmitMobileSurvey200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerSubmitMobileSurvey200Response call({
    bool? success,
    String? error,
    String? details,
    MobileSurveyResponseData? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerSubmitMobileSurvey200Response.copyWith(...)` or call `instanceOfSurveyControllerSubmitMobileSurvey200Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerSubmitMobileSurvey200ResponseCWProxyImpl
    implements _$SurveyControllerSubmitMobileSurvey200ResponseCWProxy {
  const _$SurveyControllerSubmitMobileSurvey200ResponseCWProxyImpl(this._value);

  final SurveyControllerSubmitMobileSurvey200Response _value;

  @override
  SurveyControllerSubmitMobileSurvey200Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerSubmitMobileSurvey200Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerSubmitMobileSurvey200Response details(String? details) =>
      call(details: details);

  @override
  SurveyControllerSubmitMobileSurvey200Response data(
    MobileSurveyResponseData? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerSubmitMobileSurvey200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerSubmitMobileSurvey200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerSubmitMobileSurvey200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerSubmitMobileSurvey200Response(
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
          : data as MobileSurveyResponseData?,
    );
  }
}

extension $SurveyControllerSubmitMobileSurvey200ResponseCopyWith
    on SurveyControllerSubmitMobileSurvey200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerSubmitMobileSurvey200Response.copyWith(...)` or `instanceOfSurveyControllerSubmitMobileSurvey200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerSubmitMobileSurvey200ResponseCWProxy get copyWith =>
      _$SurveyControllerSubmitMobileSurvey200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerSubmitMobileSurvey200Response
_$SurveyControllerSubmitMobileSurvey200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyControllerSubmitMobileSurvey200Response', json, (
  $checkedConvert,
) {
  final val = SurveyControllerSubmitMobileSurvey200Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    details: $checkedConvert('details', (v) => v as String?),
    data: $checkedConvert(
      'data',
      (v) => v == null
          ? null
          : MobileSurveyResponseData.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$SurveyControllerSubmitMobileSurvey200ResponseToJson(
  SurveyControllerSubmitMobileSurvey200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
