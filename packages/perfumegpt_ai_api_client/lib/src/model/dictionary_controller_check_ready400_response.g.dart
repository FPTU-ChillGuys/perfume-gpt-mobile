// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_controller_check_ready400_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DictionaryControllerCheckReady400ResponseCWProxy {
  DictionaryControllerCheckReady400Response success(bool? success);

  DictionaryControllerCheckReady400Response error(String? error);

  DictionaryControllerCheckReady400Response detail(Object? detail);

  DictionaryControllerCheckReady400Response statusCode(num? statusCode);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DictionaryControllerCheckReady400Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DictionaryControllerCheckReady400Response(...).copyWith(id: 12, name: "My name")
  /// ```
  DictionaryControllerCheckReady400Response call({
    bool? success,
    String? error,
    Object? detail,
    num? statusCode,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfDictionaryControllerCheckReady400Response.copyWith(...)` or call `instanceOfDictionaryControllerCheckReady400Response.copyWith.fieldName(value)` for a single field.
class _$DictionaryControllerCheckReady400ResponseCWProxyImpl
    implements _$DictionaryControllerCheckReady400ResponseCWProxy {
  const _$DictionaryControllerCheckReady400ResponseCWProxyImpl(this._value);

  final DictionaryControllerCheckReady400Response _value;

  @override
  DictionaryControllerCheckReady400Response success(bool? success) =>
      call(success: success);

  @override
  DictionaryControllerCheckReady400Response error(String? error) =>
      call(error: error);

  @override
  DictionaryControllerCheckReady400Response detail(Object? detail) =>
      call(detail: detail);

  @override
  DictionaryControllerCheckReady400Response statusCode(num? statusCode) =>
      call(statusCode: statusCode);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DictionaryControllerCheckReady400Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DictionaryControllerCheckReady400Response(...).copyWith(id: 12, name: "My name")
  /// ```
  DictionaryControllerCheckReady400Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? detail = const $CopyWithPlaceholder(),
    Object? statusCode = const $CopyWithPlaceholder(),
  }) {
    return DictionaryControllerCheckReady400Response(
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      detail: detail == const $CopyWithPlaceholder()
          ? _value.detail
          // ignore: cast_nullable_to_non_nullable
          : detail as Object?,
      statusCode: statusCode == const $CopyWithPlaceholder()
          ? _value.statusCode
          // ignore: cast_nullable_to_non_nullable
          : statusCode as num?,
    );
  }
}

extension $DictionaryControllerCheckReady400ResponseCopyWith
    on DictionaryControllerCheckReady400Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfDictionaryControllerCheckReady400Response.copyWith(...)` or `instanceOfDictionaryControllerCheckReady400Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DictionaryControllerCheckReady400ResponseCWProxy get copyWith =>
      _$DictionaryControllerCheckReady400ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryControllerCheckReady400Response
_$DictionaryControllerCheckReady400ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DictionaryControllerCheckReady400Response', json, (
  $checkedConvert,
) {
  final val = DictionaryControllerCheckReady400Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    detail: $checkedConvert('detail', (v) => v),
    statusCode: $checkedConvert('statusCode', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$DictionaryControllerCheckReady400ResponseToJson(
  DictionaryControllerCheckReady400Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'detail': ?instance.detail,
  'statusCode': ?instance.statusCode,
};
