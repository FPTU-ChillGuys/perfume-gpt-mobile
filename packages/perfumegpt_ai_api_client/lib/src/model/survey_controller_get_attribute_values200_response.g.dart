// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_get_attribute_values200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerGetAttributeValues200ResponseCWProxy {
  SurveyControllerGetAttributeValues200Response success(bool? success);

  SurveyControllerGetAttributeValues200Response error(String? error);

  SurveyControllerGetAttributeValues200Response details(String? details);

  SurveyControllerGetAttributeValues200Response data(
    List<SurveyAttributeValuesResponse>? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetAttributeValues200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetAttributeValues200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetAttributeValues200Response call({
    bool? success,
    String? error,
    String? details,
    List<SurveyAttributeValuesResponse>? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerGetAttributeValues200Response.copyWith(...)` or call `instanceOfSurveyControllerGetAttributeValues200Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerGetAttributeValues200ResponseCWProxyImpl
    implements _$SurveyControllerGetAttributeValues200ResponseCWProxy {
  const _$SurveyControllerGetAttributeValues200ResponseCWProxyImpl(this._value);

  final SurveyControllerGetAttributeValues200Response _value;

  @override
  SurveyControllerGetAttributeValues200Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerGetAttributeValues200Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerGetAttributeValues200Response details(String? details) =>
      call(details: details);

  @override
  SurveyControllerGetAttributeValues200Response data(
    List<SurveyAttributeValuesResponse>? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetAttributeValues200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetAttributeValues200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetAttributeValues200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerGetAttributeValues200Response(
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
          : data as List<SurveyAttributeValuesResponse>?,
    );
  }
}

extension $SurveyControllerGetAttributeValues200ResponseCopyWith
    on SurveyControllerGetAttributeValues200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerGetAttributeValues200Response.copyWith(...)` or `instanceOfSurveyControllerGetAttributeValues200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerGetAttributeValues200ResponseCWProxy get copyWith =>
      _$SurveyControllerGetAttributeValues200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerGetAttributeValues200Response
_$SurveyControllerGetAttributeValues200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyControllerGetAttributeValues200Response', json, (
  $checkedConvert,
) {
  final val = SurveyControllerGetAttributeValues200Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    details: $checkedConvert('details', (v) => v as String?),
    data: $checkedConvert(
      'data',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => SurveyAttributeValuesResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$SurveyControllerGetAttributeValues200ResponseToJson(
  SurveyControllerGetAttributeValues200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.map((e) => e.toJson()).toList(),
};
