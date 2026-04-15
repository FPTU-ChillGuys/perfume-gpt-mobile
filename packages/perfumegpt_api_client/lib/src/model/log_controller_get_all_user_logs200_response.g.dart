// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_controller_get_all_user_logs200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogControllerGetAllUserLogs200ResponseCWProxy {
  LogControllerGetAllUserLogs200Response success(bool success);

  LogControllerGetAllUserLogs200Response error(Object? error);

  LogControllerGetAllUserLogs200Response details(Object? details);

  LogControllerGetAllUserLogs200Response data(Object? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetAllUserLogs200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetAllUserLogs200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetAllUserLogs200Response call({
    bool success,
    Object? error,
    Object? details,
    Object? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLogControllerGetAllUserLogs200Response.copyWith(...)` or call `instanceOfLogControllerGetAllUserLogs200Response.copyWith.fieldName(value)` for a single field.
class _$LogControllerGetAllUserLogs200ResponseCWProxyImpl
    implements _$LogControllerGetAllUserLogs200ResponseCWProxy {
  const _$LogControllerGetAllUserLogs200ResponseCWProxyImpl(this._value);

  final LogControllerGetAllUserLogs200Response _value;

  @override
  LogControllerGetAllUserLogs200Response success(bool success) =>
      call(success: success);

  @override
  LogControllerGetAllUserLogs200Response error(Object? error) =>
      call(error: error);

  @override
  LogControllerGetAllUserLogs200Response details(Object? details) =>
      call(details: details);

  @override
  LogControllerGetAllUserLogs200Response data(Object? data) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetAllUserLogs200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetAllUserLogs200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetAllUserLogs200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return LogControllerGetAllUserLogs200Response(
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
          : data as Object?,
    );
  }
}

extension $LogControllerGetAllUserLogs200ResponseCopyWith
    on LogControllerGetAllUserLogs200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLogControllerGetAllUserLogs200Response.copyWith(...)` or `instanceOfLogControllerGetAllUserLogs200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LogControllerGetAllUserLogs200ResponseCWProxy get copyWith =>
      _$LogControllerGetAllUserLogs200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogControllerGetAllUserLogs200Response
_$LogControllerGetAllUserLogs200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LogControllerGetAllUserLogs200Response', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['success']);
      final val = LogControllerGetAllUserLogs200Response(
        success: $checkedConvert('success', (v) => v as bool),
        error: $checkedConvert('error', (v) => v),
        details: $checkedConvert('details', (v) => v),
        data: $checkedConvert('data', (v) => v),
      );
      return val;
    });

Map<String, dynamic> _$LogControllerGetAllUserLogs200ResponseToJson(
  LogControllerGetAllUserLogs200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data,
};
