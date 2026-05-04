// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_get_mobile_survey_questions401_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerGetMobileSurveyQuestions401ResponseCWProxy {
  SurveyControllerGetMobileSurveyQuestions401Response success(bool? success);

  SurveyControllerGetMobileSurveyQuestions401Response error(String? error);

  SurveyControllerGetMobileSurveyQuestions401Response detail(Object? detail);

  SurveyControllerGetMobileSurveyQuestions401Response statusCode(
    num? statusCode,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetMobileSurveyQuestions401Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetMobileSurveyQuestions401Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetMobileSurveyQuestions401Response call({
    bool? success,
    String? error,
    Object? detail,
    num? statusCode,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerGetMobileSurveyQuestions401Response.copyWith(...)` or call `instanceOfSurveyControllerGetMobileSurveyQuestions401Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerGetMobileSurveyQuestions401ResponseCWProxyImpl
    implements _$SurveyControllerGetMobileSurveyQuestions401ResponseCWProxy {
  const _$SurveyControllerGetMobileSurveyQuestions401ResponseCWProxyImpl(
    this._value,
  );

  final SurveyControllerGetMobileSurveyQuestions401Response _value;

  @override
  SurveyControllerGetMobileSurveyQuestions401Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerGetMobileSurveyQuestions401Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerGetMobileSurveyQuestions401Response detail(Object? detail) =>
      call(detail: detail);

  @override
  SurveyControllerGetMobileSurveyQuestions401Response statusCode(
    num? statusCode,
  ) => call(statusCode: statusCode);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetMobileSurveyQuestions401Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetMobileSurveyQuestions401Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetMobileSurveyQuestions401Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? detail = const $CopyWithPlaceholder(),
    Object? statusCode = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerGetMobileSurveyQuestions401Response(
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

extension $SurveyControllerGetMobileSurveyQuestions401ResponseCopyWith
    on SurveyControllerGetMobileSurveyQuestions401Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerGetMobileSurveyQuestions401Response.copyWith(...)` or `instanceOfSurveyControllerGetMobileSurveyQuestions401Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerGetMobileSurveyQuestions401ResponseCWProxy get copyWith =>
      _$SurveyControllerGetMobileSurveyQuestions401ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerGetMobileSurveyQuestions401Response
_$SurveyControllerGetMobileSurveyQuestions401ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SurveyControllerGetMobileSurveyQuestions401Response',
  json,
  ($checkedConvert) {
    final val = SurveyControllerGetMobileSurveyQuestions401Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      detail: $checkedConvert('detail', (v) => v),
      statusCode: $checkedConvert('statusCode', (v) => v as num?),
    );
    return val;
  },
);

Map<String, dynamic>
_$SurveyControllerGetMobileSurveyQuestions401ResponseToJson(
  SurveyControllerGetMobileSurveyQuestions401Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'detail': ?instance.detail,
  'statusCode': ?instance.statusCode,
};
