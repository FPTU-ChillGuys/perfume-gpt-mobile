// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_controller_get_paged_event_logs200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogControllerGetPagedEventLogs200ResponseCWProxy {
  LogControllerGetPagedEventLogs200Response success(bool success);

  LogControllerGetPagedEventLogs200Response error(Object? error);

  LogControllerGetPagedEventLogs200Response payload(
    LogControllerGetPagedEventLogs200ResponseAllOfPayload? payload,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetPagedEventLogs200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetPagedEventLogs200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetPagedEventLogs200Response call({
    bool success,
    Object? error,
    LogControllerGetPagedEventLogs200ResponseAllOfPayload? payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLogControllerGetPagedEventLogs200Response.copyWith(...)` or call `instanceOfLogControllerGetPagedEventLogs200Response.copyWith.fieldName(value)` for a single field.
class _$LogControllerGetPagedEventLogs200ResponseCWProxyImpl
    implements _$LogControllerGetPagedEventLogs200ResponseCWProxy {
  const _$LogControllerGetPagedEventLogs200ResponseCWProxyImpl(this._value);

  final LogControllerGetPagedEventLogs200Response _value;

  @override
  LogControllerGetPagedEventLogs200Response success(bool success) =>
      call(success: success);

  @override
  LogControllerGetPagedEventLogs200Response error(Object? error) =>
      call(error: error);

  @override
  LogControllerGetPagedEventLogs200Response payload(
    LogControllerGetPagedEventLogs200ResponseAllOfPayload? payload,
  ) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetPagedEventLogs200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetPagedEventLogs200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetPagedEventLogs200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return LogControllerGetPagedEventLogs200Response(
      success: success == const $CopyWithPlaceholder() || success == null
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as Object?,
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as LogControllerGetPagedEventLogs200ResponseAllOfPayload?,
    );
  }
}

extension $LogControllerGetPagedEventLogs200ResponseCopyWith
    on LogControllerGetPagedEventLogs200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLogControllerGetPagedEventLogs200Response.copyWith(...)` or `instanceOfLogControllerGetPagedEventLogs200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LogControllerGetPagedEventLogs200ResponseCWProxy get copyWith =>
      _$LogControllerGetPagedEventLogs200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogControllerGetPagedEventLogs200Response
_$LogControllerGetPagedEventLogs200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LogControllerGetPagedEventLogs200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['success']);
  final val = LogControllerGetPagedEventLogs200Response(
    success: $checkedConvert('success', (v) => v as bool),
    error: $checkedConvert('error', (v) => v),
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : LogControllerGetPagedEventLogs200ResponseAllOfPayload.fromJson(
              v as Map<String, dynamic>,
            ),
    ),
  );
  return val;
});

Map<String, dynamic> _$LogControllerGetPagedEventLogs200ResponseToJson(
  LogControllerGetPagedEventLogs200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload?.toJson(),
};
