// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseCWProxy {
  BaseResponse success(bool success);

  BaseResponse error(Object? error);

  BaseResponse details(Object? details);

  BaseResponse data(Object? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponse call({
    bool success,
    Object? error,
    Object? details,
    Object? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponse.copyWith(...)` or call `instanceOfBaseResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseCWProxyImpl implements _$BaseResponseCWProxy {
  const _$BaseResponseCWProxyImpl(this._value);

  final BaseResponse _value;

  @override
  BaseResponse success(bool success) => call(success: success);

  @override
  BaseResponse error(Object? error) => call(error: error);

  @override
  BaseResponse details(Object? details) => call(details: details);

  @override
  BaseResponse data(Object? data) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponse call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return BaseResponse(
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

extension $BaseResponseCopyWith on BaseResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponse.copyWith(...)` or `instanceOfBaseResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseCWProxy get copyWith => _$BaseResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['success']);
      final val = BaseResponse(
        success: $checkedConvert('success', (v) => v as bool),
        error: $checkedConvert('error', (v) => v),
        details: $checkedConvert('details', (v) => v),
        data: $checkedConvert('data', (v) => v),
      );
      return val;
    });

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': ?instance.error,
      'details': ?instance.details,
      'data': ?instance.data,
    };
