// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_api.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseAPICWProxy {
  BaseResponseAPI success(bool success);

  BaseResponseAPI error(Object? error);

  BaseResponseAPI payload(Object? payload);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseAPI(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseAPI(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseAPI call({bool success, Object? error, Object? payload});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseAPI.copyWith(...)` or call `instanceOfBaseResponseAPI.copyWith.fieldName(value)` for a single field.
class _$BaseResponseAPICWProxyImpl implements _$BaseResponseAPICWProxy {
  const _$BaseResponseAPICWProxyImpl(this._value);

  final BaseResponseAPI _value;

  @override
  BaseResponseAPI success(bool success) => call(success: success);

  @override
  BaseResponseAPI error(Object? error) => call(error: error);

  @override
  BaseResponseAPI payload(Object? payload) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseAPI(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseAPI(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseAPI call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseAPI(
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
          : payload as Object?,
    );
  }
}

extension $BaseResponseAPICopyWith on BaseResponseAPI {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseAPI.copyWith(...)` or `instanceOfBaseResponseAPI.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseAPICWProxy get copyWith => _$BaseResponseAPICWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseAPI _$BaseResponseAPIFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseAPI', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['success']);
      final val = BaseResponseAPI(
        success: $checkedConvert('success', (v) => v as bool),
        error: $checkedConvert('error', (v) => v),
        payload: $checkedConvert('payload', (v) => v),
      );
      return val;
    });

Map<String, dynamic> _$BaseResponseAPIToJson(BaseResponseAPI instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': ?instance.error,
      'payload': ?instance.payload,
    };
