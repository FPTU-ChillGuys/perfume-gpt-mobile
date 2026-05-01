// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_create_survey_ques200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerCreateSurveyQues200ResponseCWProxy {
  SurveyControllerCreateSurveyQues200Response success(bool? success);

  SurveyControllerCreateSurveyQues200Response error(String? error);

  SurveyControllerCreateSurveyQues200Response details(String? details);

  SurveyControllerCreateSurveyQues200Response data(String? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerCreateSurveyQues200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerCreateSurveyQues200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerCreateSurveyQues200Response call({
    bool? success,
    String? error,
    String? details,
    String? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerCreateSurveyQues200Response.copyWith(...)` or call `instanceOfSurveyControllerCreateSurveyQues200Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerCreateSurveyQues200ResponseCWProxyImpl
    implements _$SurveyControllerCreateSurveyQues200ResponseCWProxy {
  const _$SurveyControllerCreateSurveyQues200ResponseCWProxyImpl(this._value);

  final SurveyControllerCreateSurveyQues200Response _value;

  @override
  SurveyControllerCreateSurveyQues200Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerCreateSurveyQues200Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerCreateSurveyQues200Response details(String? details) =>
      call(details: details);

  @override
  SurveyControllerCreateSurveyQues200Response data(String? data) =>
      call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerCreateSurveyQues200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerCreateSurveyQues200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerCreateSurveyQues200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerCreateSurveyQues200Response(
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
          : data as String?,
    );
  }
}

extension $SurveyControllerCreateSurveyQues200ResponseCopyWith
    on SurveyControllerCreateSurveyQues200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerCreateSurveyQues200Response.copyWith(...)` or `instanceOfSurveyControllerCreateSurveyQues200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerCreateSurveyQues200ResponseCWProxy get copyWith =>
      _$SurveyControllerCreateSurveyQues200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerCreateSurveyQues200Response
_$SurveyControllerCreateSurveyQues200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyControllerCreateSurveyQues200Response', json, (
  $checkedConvert,
) {
  final val = SurveyControllerCreateSurveyQues200Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    details: $checkedConvert('details', (v) => v as String?),
    data: $checkedConvert('data', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$SurveyControllerCreateSurveyQues200ResponseToJson(
  SurveyControllerCreateSurveyQues200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data,
};
