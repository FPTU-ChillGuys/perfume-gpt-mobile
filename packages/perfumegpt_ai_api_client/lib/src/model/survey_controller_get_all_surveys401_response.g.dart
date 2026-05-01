// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_get_all_surveys401_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerGetAllSurveys401ResponseCWProxy {
  SurveyControllerGetAllSurveys401Response success(bool? success);

  SurveyControllerGetAllSurveys401Response error(String? error);

  SurveyControllerGetAllSurveys401Response detail(Object? detail);

  SurveyControllerGetAllSurveys401Response statusCode(num? statusCode);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetAllSurveys401Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetAllSurveys401Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetAllSurveys401Response call({
    bool? success,
    String? error,
    Object? detail,
    num? statusCode,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerGetAllSurveys401Response.copyWith(...)` or call `instanceOfSurveyControllerGetAllSurveys401Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerGetAllSurveys401ResponseCWProxyImpl
    implements _$SurveyControllerGetAllSurveys401ResponseCWProxy {
  const _$SurveyControllerGetAllSurveys401ResponseCWProxyImpl(this._value);

  final SurveyControllerGetAllSurveys401Response _value;

  @override
  SurveyControllerGetAllSurveys401Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerGetAllSurveys401Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerGetAllSurveys401Response detail(Object? detail) =>
      call(detail: detail);

  @override
  SurveyControllerGetAllSurveys401Response statusCode(num? statusCode) =>
      call(statusCode: statusCode);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetAllSurveys401Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetAllSurveys401Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetAllSurveys401Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? detail = const $CopyWithPlaceholder(),
    Object? statusCode = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerGetAllSurveys401Response(
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

extension $SurveyControllerGetAllSurveys401ResponseCopyWith
    on SurveyControllerGetAllSurveys401Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerGetAllSurveys401Response.copyWith(...)` or `instanceOfSurveyControllerGetAllSurveys401Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerGetAllSurveys401ResponseCWProxy get copyWith =>
      _$SurveyControllerGetAllSurveys401ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerGetAllSurveys401Response
_$SurveyControllerGetAllSurveys401ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SurveyControllerGetAllSurveys401Response', json, (
      $checkedConvert,
    ) {
      final val = SurveyControllerGetAllSurveys401Response(
        success: $checkedConvert('success', (v) => v as bool?),
        error: $checkedConvert('error', (v) => v as String?),
        detail: $checkedConvert('detail', (v) => v),
        statusCode: $checkedConvert('statusCode', (v) => v as num?),
      );
      return val;
    });

Map<String, dynamic> _$SurveyControllerGetAllSurveys401ResponseToJson(
  SurveyControllerGetAllSurveys401Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'detail': ?instance.detail,
  'statusCode': ?instance.statusCode,
};
