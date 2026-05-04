// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_get_mobile_survey_questions403_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerGetMobileSurveyQuestions403ResponseCWProxy {
  SurveyControllerGetMobileSurveyQuestions403Response success(bool? success);

  SurveyControllerGetMobileSurveyQuestions403Response error(String? error);

  SurveyControllerGetMobileSurveyQuestions403Response detail(Object? detail);

  SurveyControllerGetMobileSurveyQuestions403Response statusCode(
    num? statusCode,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetMobileSurveyQuestions403Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetMobileSurveyQuestions403Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetMobileSurveyQuestions403Response call({
    bool? success,
    String? error,
    Object? detail,
    num? statusCode,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerGetMobileSurveyQuestions403Response.copyWith(...)` or call `instanceOfSurveyControllerGetMobileSurveyQuestions403Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerGetMobileSurveyQuestions403ResponseCWProxyImpl
    implements _$SurveyControllerGetMobileSurveyQuestions403ResponseCWProxy {
  const _$SurveyControllerGetMobileSurveyQuestions403ResponseCWProxyImpl(
    this._value,
  );

  final SurveyControllerGetMobileSurveyQuestions403Response _value;

  @override
  SurveyControllerGetMobileSurveyQuestions403Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerGetMobileSurveyQuestions403Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerGetMobileSurveyQuestions403Response detail(Object? detail) =>
      call(detail: detail);

  @override
  SurveyControllerGetMobileSurveyQuestions403Response statusCode(
    num? statusCode,
  ) => call(statusCode: statusCode);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetMobileSurveyQuestions403Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetMobileSurveyQuestions403Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetMobileSurveyQuestions403Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? detail = const $CopyWithPlaceholder(),
    Object? statusCode = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerGetMobileSurveyQuestions403Response(
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      detail: detail == const $CopyWithPlaceholder()
          ? _value.detail
          // ignore: cast_nullable_to_non_nullable
          : detail as Object?,
      statusCode: statusCode == const $CopyWithPlaceholder()
          ? _value.statusCode
          // ignore: cast_nullable_to_non_nullable
          : statusCode as num?,
    );
  }
}

extension $SurveyControllerGetMobileSurveyQuestions403ResponseCopyWith
    on SurveyControllerGetMobileSurveyQuestions403Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerGetMobileSurveyQuestions403Response.copyWith(...)` or `instanceOfSurveyControllerGetMobileSurveyQuestions403Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerGetMobileSurveyQuestions403ResponseCWProxy get copyWith =>
      _$SurveyControllerGetMobileSurveyQuestions403ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerGetMobileSurveyQuestions403Response
_$SurveyControllerGetMobileSurveyQuestions403ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SurveyControllerGetMobileSurveyQuestions403Response',
  json,
  ($checkedConvert) {
    final val = SurveyControllerGetMobileSurveyQuestions403Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      detail: $checkedConvert('detail', (v) => v),
      statusCode: $checkedConvert('statusCode', (v) => v as num?),
    );
    return val;
  },
);

Map<String, dynamic>
_$SurveyControllerGetMobileSurveyQuestions403ResponseToJson(
  SurveyControllerGetMobileSurveyQuestions403Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'detail': ?instance.detail,
  'statusCode': ?instance.statusCode,
};
