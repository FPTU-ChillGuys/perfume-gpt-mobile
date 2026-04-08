// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseCWProxy {
  BaseResponse success(bool? success);

  BaseResponse message(String? message);

  BaseResponse errors(List<String>? errors);

  BaseResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponse call({
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponse.copyWith(...)` or call `instanceOfBaseResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseCWProxyImpl implements _$BaseResponseCWProxy {
  const _$BaseResponseCWProxyImpl(this._value);

  final BaseResponse _value;

  @override
  BaseResponse success(bool? success) => call(success: success);

  @override
  BaseResponse message(String? message) => call(message: message);

  @override
  BaseResponse errors(List<String>? errors) => call(errors: errors);

  @override
  BaseResponse errorType(int? errorType) => call(errorType: errorType);

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
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponse(
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      errors: errors == const $CopyWithPlaceholder()
          ? _value.errors
          // ignore: cast_nullable_to_non_nullable
          : errors as List<String>?,
      errorType: errorType == const $CopyWithPlaceholder()
          ? _value.errorType
          // ignore: cast_nullable_to_non_nullable
          : errorType as int?,
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
      final val = BaseResponse(
        success: $checkedConvert('success', (v) => v as bool?),
        message: $checkedConvert('message', (v) => v as String?),
        errors: $checkedConvert(
          'errors',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        errorType: $checkedConvert('errorType', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'success': ?instance.success,
      'message': ?instance.message,
      'errors': ?instance.errors,
      'errorType': ?instance.errorType,
    };
