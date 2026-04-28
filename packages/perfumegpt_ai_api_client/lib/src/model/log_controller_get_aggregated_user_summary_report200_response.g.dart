// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_controller_get_aggregated_user_summary_report200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogControllerGetAggregatedUserSummaryReport200ResponseCWProxy {
  LogControllerGetAggregatedUserSummaryReport200Response success(bool? success);

  LogControllerGetAggregatedUserSummaryReport200Response error(String? error);

  LogControllerGetAggregatedUserSummaryReport200Response details(
    String? details,
  );

  LogControllerGetAggregatedUserSummaryReport200Response data(
    UserLogSummaryResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetAggregatedUserSummaryReport200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetAggregatedUserSummaryReport200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetAggregatedUserSummaryReport200Response call({
    bool? success,
    String? error,
    String? details,
    UserLogSummaryResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLogControllerGetAggregatedUserSummaryReport200Response.copyWith(...)` or call `instanceOfLogControllerGetAggregatedUserSummaryReport200Response.copyWith.fieldName(value)` for a single field.
class _$LogControllerGetAggregatedUserSummaryReport200ResponseCWProxyImpl
    implements _$LogControllerGetAggregatedUserSummaryReport200ResponseCWProxy {
  const _$LogControllerGetAggregatedUserSummaryReport200ResponseCWProxyImpl(
    this._value,
  );

  final LogControllerGetAggregatedUserSummaryReport200Response _value;

  @override
  LogControllerGetAggregatedUserSummaryReport200Response success(
    bool? success,
  ) => call(success: success);

  @override
  LogControllerGetAggregatedUserSummaryReport200Response error(String? error) =>
      call(error: error);

  @override
  LogControllerGetAggregatedUserSummaryReport200Response details(
    String? details,
  ) => call(details: details);

  @override
  LogControllerGetAggregatedUserSummaryReport200Response data(
    UserLogSummaryResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetAggregatedUserSummaryReport200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetAggregatedUserSummaryReport200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetAggregatedUserSummaryReport200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return LogControllerGetAggregatedUserSummaryReport200Response(
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
          : data as UserLogSummaryResponse?,
    );
  }
}

extension $LogControllerGetAggregatedUserSummaryReport200ResponseCopyWith
    on LogControllerGetAggregatedUserSummaryReport200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLogControllerGetAggregatedUserSummaryReport200Response.copyWith(...)` or `instanceOfLogControllerGetAggregatedUserSummaryReport200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LogControllerGetAggregatedUserSummaryReport200ResponseCWProxy
  get copyWith =>
      _$LogControllerGetAggregatedUserSummaryReport200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogControllerGetAggregatedUserSummaryReport200Response
_$LogControllerGetAggregatedUserSummaryReport200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'LogControllerGetAggregatedUserSummaryReport200Response',
  json,
  ($checkedConvert) {
    final val = LogControllerGetAggregatedUserSummaryReport200Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      details: $checkedConvert('details', (v) => v as String?),
      data: $checkedConvert(
        'data',
        (v) => v == null
            ? null
            : UserLogSummaryResponse.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$LogControllerGetAggregatedUserSummaryReport200ResponseToJson(
  LogControllerGetAggregatedUserSummaryReport200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
