// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_controller_get_snapshot500_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DictionaryControllerGetSnapshot500ResponseCWProxy {
  DictionaryControllerGetSnapshot500Response success(bool? success);

  DictionaryControllerGetSnapshot500Response error(String? error);

  DictionaryControllerGetSnapshot500Response detail(Object? detail);

  DictionaryControllerGetSnapshot500Response statusCode(num? statusCode);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DictionaryControllerGetSnapshot500Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DictionaryControllerGetSnapshot500Response(...).copyWith(id: 12, name: "My name")
  /// ```
  DictionaryControllerGetSnapshot500Response call({
    bool? success,
    String? error,
    Object? detail,
    num? statusCode,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfDictionaryControllerGetSnapshot500Response.copyWith(...)` or call `instanceOfDictionaryControllerGetSnapshot500Response.copyWith.fieldName(value)` for a single field.
class _$DictionaryControllerGetSnapshot500ResponseCWProxyImpl
    implements _$DictionaryControllerGetSnapshot500ResponseCWProxy {
  const _$DictionaryControllerGetSnapshot500ResponseCWProxyImpl(this._value);

  final DictionaryControllerGetSnapshot500Response _value;

  @override
  DictionaryControllerGetSnapshot500Response success(bool? success) =>
      call(success: success);

  @override
  DictionaryControllerGetSnapshot500Response error(String? error) =>
      call(error: error);

  @override
  DictionaryControllerGetSnapshot500Response detail(Object? detail) =>
      call(detail: detail);

  @override
  DictionaryControllerGetSnapshot500Response statusCode(num? statusCode) =>
      call(statusCode: statusCode);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DictionaryControllerGetSnapshot500Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DictionaryControllerGetSnapshot500Response(...).copyWith(id: 12, name: "My name")
  /// ```
  DictionaryControllerGetSnapshot500Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? detail = const $CopyWithPlaceholder(),
    Object? statusCode = const $CopyWithPlaceholder(),
  }) {
    return DictionaryControllerGetSnapshot500Response(
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

extension $DictionaryControllerGetSnapshot500ResponseCopyWith
    on DictionaryControllerGetSnapshot500Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfDictionaryControllerGetSnapshot500Response.copyWith(...)` or `instanceOfDictionaryControllerGetSnapshot500Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DictionaryControllerGetSnapshot500ResponseCWProxy get copyWith =>
      _$DictionaryControllerGetSnapshot500ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryControllerGetSnapshot500Response
_$DictionaryControllerGetSnapshot500ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DictionaryControllerGetSnapshot500Response', json, (
  $checkedConvert,
) {
  final val = DictionaryControllerGetSnapshot500Response(
    success: $checkedConvert('success', (v) => v as bool?),
    error: $checkedConvert('error', (v) => v as String?),
    detail: $checkedConvert('detail', (v) => v),
    statusCode: $checkedConvert('statusCode', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$DictionaryControllerGetSnapshot500ResponseToJson(
  DictionaryControllerGetSnapshot500Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'detail': ?instance.detail,
  'statusCode': ?instance.statusCode,
};
