// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_delete_survey_question200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerDeleteSurveyQuestion200ResponseCWProxy {
  SurveyControllerDeleteSurveyQuestion200Response success(bool success);

  SurveyControllerDeleteSurveyQuestion200Response error(Object? error);

  SurveyControllerDeleteSurveyQuestion200Response details(Object? details);

  SurveyControllerDeleteSurveyQuestion200Response data(bool? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerDeleteSurveyQuestion200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerDeleteSurveyQuestion200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerDeleteSurveyQuestion200Response call({
    bool success,
    Object? error,
    Object? details,
    bool? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerDeleteSurveyQuestion200Response.copyWith(...)` or call `instanceOfSurveyControllerDeleteSurveyQuestion200Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerDeleteSurveyQuestion200ResponseCWProxyImpl
    implements _$SurveyControllerDeleteSurveyQuestion200ResponseCWProxy {
  const _$SurveyControllerDeleteSurveyQuestion200ResponseCWProxyImpl(
    this._value,
  );

  final SurveyControllerDeleteSurveyQuestion200Response _value;

  @override
  SurveyControllerDeleteSurveyQuestion200Response success(bool success) =>
      call(success: success);

  @override
  SurveyControllerDeleteSurveyQuestion200Response error(Object? error) =>
      call(error: error);

  @override
  SurveyControllerDeleteSurveyQuestion200Response details(Object? details) =>
      call(details: details);

  @override
  SurveyControllerDeleteSurveyQuestion200Response data(bool? data) =>
      call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerDeleteSurveyQuestion200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerDeleteSurveyQuestion200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerDeleteSurveyQuestion200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerDeleteSurveyQuestion200Response(
      success: success == const $CopyWithPlaceholder() || success == null
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as Object?,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as Object?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as bool?,
    );
  }
}

extension $SurveyControllerDeleteSurveyQuestion200ResponseCopyWith
    on SurveyControllerDeleteSurveyQuestion200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerDeleteSurveyQuestion200Response.copyWith(...)` or `instanceOfSurveyControllerDeleteSurveyQuestion200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerDeleteSurveyQuestion200ResponseCWProxy get copyWith =>
      _$SurveyControllerDeleteSurveyQuestion200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerDeleteSurveyQuestion200Response
_$SurveyControllerDeleteSurveyQuestion200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyControllerDeleteSurveyQuestion200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['success']);
  final val = SurveyControllerDeleteSurveyQuestion200Response(
    success: $checkedConvert('success', (v) => v as bool),
    error: $checkedConvert('error', (v) => v),
    details: $checkedConvert('details', (v) => v),
    data: $checkedConvert('data', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$SurveyControllerDeleteSurveyQuestion200ResponseToJson(
  SurveyControllerDeleteSurveyQuestion200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data,
};
