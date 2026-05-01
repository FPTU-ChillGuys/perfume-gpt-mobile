// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_get_all_surveys403_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerGetAllSurveys403ResponseCWProxy {
  SurveyControllerGetAllSurveys403Response success(bool? success);

  SurveyControllerGetAllSurveys403Response error(String? error);

  SurveyControllerGetAllSurveys403Response detail(Object? detail);

  SurveyControllerGetAllSurveys403Response statusCode(num? statusCode);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetAllSurveys403Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetAllSurveys403Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetAllSurveys403Response call({
    bool? success,
    String? error,
    Object? detail,
    num? statusCode,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerGetAllSurveys403Response.copyWith(...)` or call `instanceOfSurveyControllerGetAllSurveys403Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerGetAllSurveys403ResponseCWProxyImpl
    implements _$SurveyControllerGetAllSurveys403ResponseCWProxy {
  const _$SurveyControllerGetAllSurveys403ResponseCWProxyImpl(this._value);

  final SurveyControllerGetAllSurveys403Response _value;

  @override
  SurveyControllerGetAllSurveys403Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerGetAllSurveys403Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerGetAllSurveys403Response detail(Object? detail) =>
      call(detail: detail);

  @override
  SurveyControllerGetAllSurveys403Response statusCode(num? statusCode) =>
      call(statusCode: statusCode);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetAllSurveys403Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetAllSurveys403Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetAllSurveys403Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? detail = const $CopyWithPlaceholder(),
    Object? statusCode = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerGetAllSurveys403Response(
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

extension $SurveyControllerGetAllSurveys403ResponseCopyWith
    on SurveyControllerGetAllSurveys403Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerGetAllSurveys403Response.copyWith(...)` or `instanceOfSurveyControllerGetAllSurveys403Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerGetAllSurveys403ResponseCWProxy get copyWith =>
      _$SurveyControllerGetAllSurveys403ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerGetAllSurveys403Response
_$SurveyControllerGetAllSurveys403ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SurveyControllerGetAllSurveys403Response', json, (
      $checkedConvert,
    ) {
      final val = SurveyControllerGetAllSurveys403Response(
        success: $checkedConvert('success', (v) => v as bool?),
        error: $checkedConvert('error', (v) => v as String?),
        detail: $checkedConvert('detail', (v) => v),
        statusCode: $checkedConvert('statusCode', (v) => v as num?),
      );
      return val;
    });

Map<String, dynamic> _$SurveyControllerGetAllSurveys403ResponseToJson(
  SurveyControllerGetAllSurveys403Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'detail': ?instance.detail,
  'statusCode': ?instance.statusCode,
};
