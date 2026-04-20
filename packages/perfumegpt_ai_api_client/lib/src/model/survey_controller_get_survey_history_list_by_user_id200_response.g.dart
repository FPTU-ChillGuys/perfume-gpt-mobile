// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_controller_get_survey_history_list_by_user_id200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyControllerGetSurveyHistoryListByUserId200ResponseCWProxy {
  SurveyControllerGetSurveyHistoryListByUserId200Response success(bool success);

  SurveyControllerGetSurveyHistoryListByUserId200Response error(Object? error);

  SurveyControllerGetSurveyHistoryListByUserId200Response details(
    Object? details,
  );

  SurveyControllerGetSurveyHistoryListByUserId200Response data(
    List<SurveyQuestionAnswerResponse>? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetSurveyHistoryListByUserId200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetSurveyHistoryListByUserId200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetSurveyHistoryListByUserId200Response call({
    bool success,
    Object? error,
    Object? details,
    List<SurveyQuestionAnswerResponse>? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyControllerGetSurveyHistoryListByUserId200Response.copyWith(...)` or call `instanceOfSurveyControllerGetSurveyHistoryListByUserId200Response.copyWith.fieldName(value)` for a single field.
class _$SurveyControllerGetSurveyHistoryListByUserId200ResponseCWProxyImpl
    implements
        _$SurveyControllerGetSurveyHistoryListByUserId200ResponseCWProxy {
  const _$SurveyControllerGetSurveyHistoryListByUserId200ResponseCWProxyImpl(
    this._value,
  );

  final SurveyControllerGetSurveyHistoryListByUserId200Response _value;

  @override
  SurveyControllerGetSurveyHistoryListByUserId200Response success(
    bool success,
  ) => call(success: success);

  @override
  SurveyControllerGetSurveyHistoryListByUserId200Response error(
    Object? error,
  ) => call(error: error);

  @override
  SurveyControllerGetSurveyHistoryListByUserId200Response details(
    Object? details,
  ) => call(details: details);

  @override
  SurveyControllerGetSurveyHistoryListByUserId200Response data(
    List<SurveyQuestionAnswerResponse>? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyControllerGetSurveyHistoryListByUserId200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyControllerGetSurveyHistoryListByUserId200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyControllerGetSurveyHistoryListByUserId200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return SurveyControllerGetSurveyHistoryListByUserId200Response(
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
          : data as List<SurveyQuestionAnswerResponse>?,
    );
  }
}

extension $SurveyControllerGetSurveyHistoryListByUserId200ResponseCopyWith
    on SurveyControllerGetSurveyHistoryListByUserId200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyControllerGetSurveyHistoryListByUserId200Response.copyWith(...)` or `instanceOfSurveyControllerGetSurveyHistoryListByUserId200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyControllerGetSurveyHistoryListByUserId200ResponseCWProxy
  get copyWith =>
      _$SurveyControllerGetSurveyHistoryListByUserId200ResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyControllerGetSurveyHistoryListByUserId200Response
_$SurveyControllerGetSurveyHistoryListByUserId200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'SurveyControllerGetSurveyHistoryListByUserId200Response',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['success']);
    final val = SurveyControllerGetSurveyHistoryListByUserId200Response(
      success: $checkedConvert('success', (v) => v as bool),
      error: $checkedConvert('error', (v) => v),
      details: $checkedConvert('details', (v) => v),
      data: $checkedConvert(
        'data',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => SurveyQuestionAnswerResponse.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$SurveyControllerGetSurveyHistoryListByUserId200ResponseToJson(
  SurveyControllerGetSurveyHistoryListByUserId200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.map((e) => e.toJson()).toList(),
};
