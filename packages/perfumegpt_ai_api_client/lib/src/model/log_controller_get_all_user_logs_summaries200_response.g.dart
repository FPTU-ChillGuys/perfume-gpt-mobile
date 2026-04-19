// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_controller_get_all_user_logs_summaries200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogControllerGetAllUserLogsSummaries200ResponseCWProxy {
  LogControllerGetAllUserLogsSummaries200Response success(bool success);

  LogControllerGetAllUserLogsSummaries200Response error(Object? error);

  LogControllerGetAllUserLogsSummaries200Response details(Object? details);

  LogControllerGetAllUserLogsSummaries200Response data(
    List<UserLogSummaryResponse>? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetAllUserLogsSummaries200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetAllUserLogsSummaries200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetAllUserLogsSummaries200Response call({
    bool success,
    Object? error,
    Object? details,
    List<UserLogSummaryResponse>? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLogControllerGetAllUserLogsSummaries200Response.copyWith(...)` or call `instanceOfLogControllerGetAllUserLogsSummaries200Response.copyWith.fieldName(value)` for a single field.
class _$LogControllerGetAllUserLogsSummaries200ResponseCWProxyImpl
    implements _$LogControllerGetAllUserLogsSummaries200ResponseCWProxy {
  const _$LogControllerGetAllUserLogsSummaries200ResponseCWProxyImpl(
    this._value,
  );

  final LogControllerGetAllUserLogsSummaries200Response _value;

  @override
  LogControllerGetAllUserLogsSummaries200Response success(bool success) =>
      call(success: success);

  @override
  LogControllerGetAllUserLogsSummaries200Response error(Object? error) =>
      call(error: error);

  @override
  LogControllerGetAllUserLogsSummaries200Response details(Object? details) =>
      call(details: details);

  @override
  LogControllerGetAllUserLogsSummaries200Response data(
    List<UserLogSummaryResponse>? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetAllUserLogsSummaries200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetAllUserLogsSummaries200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetAllUserLogsSummaries200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return LogControllerGetAllUserLogsSummaries200Response(
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
          : data as List<UserLogSummaryResponse>?,
    );
  }
}

extension $LogControllerGetAllUserLogsSummaries200ResponseCopyWith
    on LogControllerGetAllUserLogsSummaries200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLogControllerGetAllUserLogsSummaries200Response.copyWith(...)` or `instanceOfLogControllerGetAllUserLogsSummaries200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LogControllerGetAllUserLogsSummaries200ResponseCWProxy get copyWith =>
      _$LogControllerGetAllUserLogsSummaries200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogControllerGetAllUserLogsSummaries200Response
_$LogControllerGetAllUserLogsSummaries200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LogControllerGetAllUserLogsSummaries200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['success']);
  final val = LogControllerGetAllUserLogsSummaries200Response(
    success: $checkedConvert('success', (v) => v as bool),
    error: $checkedConvert('error', (v) => v),
    details: $checkedConvert('details', (v) => v),
    data: $checkedConvert(
      'data',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => UserLogSummaryResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$LogControllerGetAllUserLogsSummaries200ResponseToJson(
  LogControllerGetAllUserLogsSummaries200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.map((e) => e.toJson()).toList(),
};
