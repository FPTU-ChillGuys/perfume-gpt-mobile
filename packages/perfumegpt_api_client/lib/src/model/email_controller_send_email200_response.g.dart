// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_controller_send_email200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EmailControllerSendEmail200ResponseCWProxy {
  EmailControllerSendEmail200Response success(bool success);

  EmailControllerSendEmail200Response error(Object? error);

  EmailControllerSendEmail200Response details(Object? details);

  EmailControllerSendEmail200Response data(String? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EmailControllerSendEmail200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EmailControllerSendEmail200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  EmailControllerSendEmail200Response call({
    bool success,
    Object? error,
    Object? details,
    String? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfEmailControllerSendEmail200Response.copyWith(...)` or call `instanceOfEmailControllerSendEmail200Response.copyWith.fieldName(value)` for a single field.
class _$EmailControllerSendEmail200ResponseCWProxyImpl
    implements _$EmailControllerSendEmail200ResponseCWProxy {
  const _$EmailControllerSendEmail200ResponseCWProxyImpl(this._value);

  final EmailControllerSendEmail200Response _value;

  @override
  EmailControllerSendEmail200Response success(bool success) =>
      call(success: success);

  @override
  EmailControllerSendEmail200Response error(Object? error) =>
      call(error: error);

  @override
  EmailControllerSendEmail200Response details(Object? details) =>
      call(details: details);

  @override
  EmailControllerSendEmail200Response data(String? data) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EmailControllerSendEmail200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EmailControllerSendEmail200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  EmailControllerSendEmail200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return EmailControllerSendEmail200Response(
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
          : data as String?,
    );
  }
}

extension $EmailControllerSendEmail200ResponseCopyWith
    on EmailControllerSendEmail200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfEmailControllerSendEmail200Response.copyWith(...)` or `instanceOfEmailControllerSendEmail200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EmailControllerSendEmail200ResponseCWProxy get copyWith =>
      _$EmailControllerSendEmail200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailControllerSendEmail200Response
_$EmailControllerSendEmail200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('EmailControllerSendEmail200Response', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['success']);
      final val = EmailControllerSendEmail200Response(
        success: $checkedConvert('success', (v) => v as bool),
        error: $checkedConvert('error', (v) => v),
        details: $checkedConvert('details', (v) => v),
        data: $checkedConvert('data', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$EmailControllerSendEmail200ResponseToJson(
  EmailControllerSendEmail200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data,
};
