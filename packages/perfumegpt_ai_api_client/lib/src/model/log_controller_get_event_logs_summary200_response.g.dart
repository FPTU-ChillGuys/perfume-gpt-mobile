// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_controller_get_event_logs_summary200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogControllerGetEventLogsSummary200ResponseCWProxy {
  LogControllerGetEventLogsSummary200Response success(bool? success);

  LogControllerGetEventLogsSummary200Response error(String? error);

  LogControllerGetEventLogsSummary200Response details(String? details);

  LogControllerGetEventLogsSummary200Response data(
    EventLogSummaryResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetEventLogsSummary200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetEventLogsSummary200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetEventLogsSummary200Response call({
    bool? success,
    String? error,
    String? details,
    EventLogSummaryResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLogControllerGetEventLogsSummary200Response.copyWith(...)` or call `instanceOfLogControllerGetEventLogsSummary200Response.copyWith.fieldName(value)` for a single field.
class _$LogControllerGetEventLogsSummary200ResponseCWProxyImpl
    implements _$LogControllerGetEventLogsSummary200ResponseCWProxy {
  const _$LogControllerGetEventLogsSummary200ResponseCWProxyImpl(this._value);

  final LogControllerGetEventLogsSummary200Response _value;

  @override
  LogControllerGetEventLogsSummary200Response success(bool? success) =>
      call(success: success);

  @override
  LogControllerGetEventLogsSummary200Response error(String? error) =>
      call(error: error);

  @override
  LogControllerGetEventLogsSummary200Response details(String? details) =>
      call(details: details);

  @override
  LogControllerGetEventLogsSummary200Response data(
    EventLogSummaryResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetEventLogsSummary200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetEventLogsSummary200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetEventLogsSummary200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return LogControllerGetEventLogsSummary200Response(
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
          : data as EventLogSummaryResponse?,
    );
  }
}

extension $LogControllerGetEventLogsSummary200ResponseCopyWith
    on LogControllerGetEventLogsSummary200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLogControllerGetEventLogsSummary200Response.copyWith(...)` or `instanceOfLogControllerGetEventLogsSummary200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LogControllerGetEventLogsSummary200ResponseCWProxy get copyWith =>
      _$LogControllerGetEventLogsSummary200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogControllerGetEventLogsSummary200Response
_$LogControllerGetEventLogsSummary200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LogControllerGetEventLogsSummary200Response', json, (
  $checkedConvert,
) {
  final val = LogControllerGetEventLogsSummary200Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    details: $checkedConvert('details', (v) => v as String?),
    data: $checkedConvert(
      'data',
      (v) => v == null
          ? null
          : EventLogSummaryResponse.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$LogControllerGetEventLogsSummary200ResponseToJson(
  LogControllerGetEventLogsSummary200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
