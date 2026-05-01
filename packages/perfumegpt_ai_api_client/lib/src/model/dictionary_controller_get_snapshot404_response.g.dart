// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_controller_get_snapshot404_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DictionaryControllerGetSnapshot404ResponseCWProxy {
  DictionaryControllerGetSnapshot404Response success(bool? success);

  DictionaryControllerGetSnapshot404Response error(String? error);

  DictionaryControllerGetSnapshot404Response detail(Object? detail);

  DictionaryControllerGetSnapshot404Response statusCode(num? statusCode);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DictionaryControllerGetSnapshot404Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DictionaryControllerGetSnapshot404Response(...).copyWith(id: 12, name: "My name")
  /// ```
  DictionaryControllerGetSnapshot404Response call({
    bool? success,
    String? error,
    Object? detail,
    num? statusCode,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfDictionaryControllerGetSnapshot404Response.copyWith(...)` or call `instanceOfDictionaryControllerGetSnapshot404Response.copyWith.fieldName(value)` for a single field.
class _$DictionaryControllerGetSnapshot404ResponseCWProxyImpl
    implements _$DictionaryControllerGetSnapshot404ResponseCWProxy {
  const _$DictionaryControllerGetSnapshot404ResponseCWProxyImpl(this._value);

  final DictionaryControllerGetSnapshot404Response _value;

  @override
  DictionaryControllerGetSnapshot404Response success(bool? success) =>
      call(success: success);

  @override
  DictionaryControllerGetSnapshot404Response error(String? error) =>
      call(error: error);

  @override
  DictionaryControllerGetSnapshot404Response detail(Object? detail) =>
      call(detail: detail);

  @override
  DictionaryControllerGetSnapshot404Response statusCode(num? statusCode) =>
      call(statusCode: statusCode);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DictionaryControllerGetSnapshot404Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DictionaryControllerGetSnapshot404Response(...).copyWith(id: 12, name: "My name")
  /// ```
  DictionaryControllerGetSnapshot404Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? detail = const $CopyWithPlaceholder(),
    Object? statusCode = const $CopyWithPlaceholder(),
  }) {
    return DictionaryControllerGetSnapshot404Response(
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

extension $DictionaryControllerGetSnapshot404ResponseCopyWith
    on DictionaryControllerGetSnapshot404Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfDictionaryControllerGetSnapshot404Response.copyWith(...)` or `instanceOfDictionaryControllerGetSnapshot404Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DictionaryControllerGetSnapshot404ResponseCWProxy get copyWith =>
      _$DictionaryControllerGetSnapshot404ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryControllerGetSnapshot404Response
_$DictionaryControllerGetSnapshot404ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DictionaryControllerGetSnapshot404Response', json, (
  $checkedConvert,
) {
  final val = DictionaryControllerGetSnapshot404Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    detail: $checkedConvert('detail', (v) => v),
    statusCode: $checkedConvert('statusCode', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$DictionaryControllerGetSnapshot404ResponseToJson(
  DictionaryControllerGetSnapshot404Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'detail': ?instance.detail,
  'statusCode': ?instance.statusCode,
};
