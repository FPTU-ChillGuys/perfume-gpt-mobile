// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_controller_get_event_logs_time_series200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogControllerGetEventLogsTimeSeries200ResponseCWProxy {
  LogControllerGetEventLogsTimeSeries200Response success(bool success);

  LogControllerGetEventLogsTimeSeries200Response error(Object? error);

  LogControllerGetEventLogsTimeSeries200Response details(Object? details);

  LogControllerGetEventLogsTimeSeries200Response data(
    EventLogTimeSeriesResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetEventLogsTimeSeries200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetEventLogsTimeSeries200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetEventLogsTimeSeries200Response call({
    bool success,
    Object? error,
    Object? details,
    EventLogTimeSeriesResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLogControllerGetEventLogsTimeSeries200Response.copyWith(...)` or call `instanceOfLogControllerGetEventLogsTimeSeries200Response.copyWith.fieldName(value)` for a single field.
class _$LogControllerGetEventLogsTimeSeries200ResponseCWProxyImpl
    implements _$LogControllerGetEventLogsTimeSeries200ResponseCWProxy {
  const _$LogControllerGetEventLogsTimeSeries200ResponseCWProxyImpl(
    this._value,
  );

  final LogControllerGetEventLogsTimeSeries200Response _value;

  @override
  LogControllerGetEventLogsTimeSeries200Response success(bool success) =>
      call(success: success);

  @override
  LogControllerGetEventLogsTimeSeries200Response error(Object? error) =>
      call(error: error);

  @override
  LogControllerGetEventLogsTimeSeries200Response details(Object? details) =>
      call(details: details);

  @override
  LogControllerGetEventLogsTimeSeries200Response data(
    EventLogTimeSeriesResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetEventLogsTimeSeries200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetEventLogsTimeSeries200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetEventLogsTimeSeries200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return LogControllerGetEventLogsTimeSeries200Response(
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
          : data as EventLogTimeSeriesResponse?,
    );
  }
}

extension $LogControllerGetEventLogsTimeSeries200ResponseCopyWith
    on LogControllerGetEventLogsTimeSeries200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLogControllerGetEventLogsTimeSeries200Response.copyWith(...)` or `instanceOfLogControllerGetEventLogsTimeSeries200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LogControllerGetEventLogsTimeSeries200ResponseCWProxy get copyWith =>
      _$LogControllerGetEventLogsTimeSeries200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogControllerGetEventLogsTimeSeries200Response
_$LogControllerGetEventLogsTimeSeries200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LogControllerGetEventLogsTimeSeries200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['success']);
  final val = LogControllerGetEventLogsTimeSeries200Response(
    success: $checkedConvert('success', (v) => v as bool),
    error: $checkedConvert('error', (v) => v),
    details: $checkedConvert('details', (v) => v),
    data: $checkedConvert(
      'data',
      (v) => v == null
          ? null
          : EventLogTimeSeriesResponse.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$LogControllerGetEventLogsTimeSeries200ResponseToJson(
  LogControllerGetEventLogsTimeSeries200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
