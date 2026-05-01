// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_reorder_questions200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerReorderQuestions200ResponseCWProxy {
  SurveyControllerReorderQuestions200Response success(bool? success);

  SurveyControllerReorderQuestions200Response error(String? error);

  SurveyControllerReorderQuestions200Response details(String? details);

  SurveyControllerReorderQuestions200Response data(Object? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerReorderQuestions200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerReorderQuestions200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerReorderQuestions200Response call({
    bool? success,
    String? error,
    String? details,
    Object? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerReorderQuestions200Response.copyWith(...)` or call `instanceOfSurveyControllerReorderQuestions200Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerReorderQuestions200ResponseCWProxyImpl
    implements _$SurveyControllerReorderQuestions200ResponseCWProxy {
  const _$SurveyControllerReorderQuestions200ResponseCWProxyImpl(this._value);

  final SurveyControllerReorderQuestions200Response _value;

  @override
  SurveyControllerReorderQuestions200Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerReorderQuestions200Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerReorderQuestions200Response details(String? details) =>
      call(details: details);

  @override
  SurveyControllerReorderQuestions200Response data(Object? data) =>
      call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerReorderQuestions200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerReorderQuestions200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerReorderQuestions200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerReorderQuestions200Response(
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
          : data as Object?,
    );
  }
}

extension $SurveyControllerReorderQuestions200ResponseCopyWith
    on SurveyControllerReorderQuestions200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerReorderQuestions200Response.copyWith(...)` or `instanceOfSurveyControllerReorderQuestions200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerReorderQuestions200ResponseCWProxy get copyWith =>
      _$SurveyControllerReorderQuestions200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerReorderQuestions200Response
_$SurveyControllerReorderQuestions200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyControllerReorderQuestions200Response', json, (
  $checkedConvert,
) {
  final val = SurveyControllerReorderQuestions200Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    details: $checkedConvert('details', (v) => v as String?),
    data: $checkedConvert('data', (v) => v),
  );
  return val;
});

Map<String, dynamic> _$SurveyControllerReorderQuestions200ResponseToJson(
  SurveyControllerReorderQuestions200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data,
};
