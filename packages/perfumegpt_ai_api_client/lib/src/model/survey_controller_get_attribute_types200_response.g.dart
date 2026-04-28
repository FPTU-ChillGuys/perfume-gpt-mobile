// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_get_attribute_types200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerGetAttributeTypes200ResponseCWProxy {
  SurveyControllerGetAttributeTypes200Response success(bool? success);

  SurveyControllerGetAttributeTypes200Response error(String? error);

  SurveyControllerGetAttributeTypes200Response details(String? details);

  SurveyControllerGetAttributeTypes200Response data(
    List<SurveyAttributeTypeInfo>? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetAttributeTypes200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetAttributeTypes200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetAttributeTypes200Response call({
    bool? success,
    String? error,
    String? details,
    List<SurveyAttributeTypeInfo>? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerGetAttributeTypes200Response.copyWith(...)` or call `instanceOfSurveyControllerGetAttributeTypes200Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerGetAttributeTypes200ResponseCWProxyImpl
    implements _$SurveyControllerGetAttributeTypes200ResponseCWProxy {
  const _$SurveyControllerGetAttributeTypes200ResponseCWProxyImpl(this._value);

  final SurveyControllerGetAttributeTypes200Response _value;

  @override
  SurveyControllerGetAttributeTypes200Response success(bool? success) =>
      call(success: success);

  @override
  SurveyControllerGetAttributeTypes200Response error(String? error) =>
      call(error: error);

  @override
  SurveyControllerGetAttributeTypes200Response details(String? details) =>
      call(details: details);

  @override
  SurveyControllerGetAttributeTypes200Response data(
    List<SurveyAttributeTypeInfo>? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetAttributeTypes200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetAttributeTypes200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetAttributeTypes200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerGetAttributeTypes200Response(
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
          : data as List<SurveyAttributeTypeInfo>?,
    );
  }
}

extension $SurveyControllerGetAttributeTypes200ResponseCopyWith
    on SurveyControllerGetAttributeTypes200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerGetAttributeTypes200Response.copyWith(...)` or `instanceOfSurveyControllerGetAttributeTypes200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerGetAttributeTypes200ResponseCWProxy get copyWith =>
      _$SurveyControllerGetAttributeTypes200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerGetAttributeTypes200Response
_$SurveyControllerGetAttributeTypes200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyControllerGetAttributeTypes200Response', json, (
  $checkedConvert,
) {
  final val = SurveyControllerGetAttributeTypes200Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    details: $checkedConvert('details', (v) => v as String?),
    data: $checkedConvert(
      'data',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => SurveyAttributeTypeInfo.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$SurveyControllerGetAttributeTypes200ResponseToJson(
  SurveyControllerGetAttributeTypes200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.map((e) => e.toJson()).toList(),
};
