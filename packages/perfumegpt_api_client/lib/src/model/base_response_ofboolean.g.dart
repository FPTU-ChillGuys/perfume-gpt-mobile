// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_ofboolean.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfbooleanCWProxy {
  BaseResponseOfboolean payload(bool? payload);

  BaseResponseOfboolean success(bool? success);

  BaseResponseOfboolean message(String? message);

  BaseResponseOfboolean errors(List<String>? errors);

  BaseResponseOfboolean errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfboolean(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfboolean(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfboolean call({
    bool? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfboolean.copyWith(...)` or call `instanceOfBaseResponseOfboolean.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfbooleanCWProxyImpl
    implements _$BaseResponseOfbooleanCWProxy {
  const _$BaseResponseOfbooleanCWProxyImpl(this._value);

  final BaseResponseOfboolean _value;

  @override
  BaseResponseOfboolean payload(bool? payload) => call(payload: payload);

  @override
  BaseResponseOfboolean success(bool? success) => call(success: success);

  @override
  BaseResponseOfboolean message(String? message) => call(message: message);

  @override
  BaseResponseOfboolean errors(List<String>? errors) => call(errors: errors);

  @override
  BaseResponseOfboolean errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfboolean(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfboolean(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfboolean call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfboolean(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as bool?,
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
          : errorType as ResponseErrorType?,
    );
  }
}

extension $BaseResponseOfbooleanCopyWith on BaseResponseOfboolean {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfboolean.copyWith(...)` or `instanceOfBaseResponseOfboolean.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfbooleanCWProxy get copyWith =>
      _$BaseResponseOfbooleanCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfboolean _$BaseResponseOfbooleanFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfboolean', json, ($checkedConvert) {
  final val = BaseResponseOfboolean(
    payload: $checkedConvert('payload', (v) => v as bool?),
    success: $checkedConvert('success', (v) => v as bool?),
    message: $checkedConvert('message', (v) => v as String?),
    errors: $checkedConvert(
      'errors',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    errorType: $checkedConvert(
      'errorType',
      (v) => $enumDecodeNullable(_$ResponseErrorTypeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$BaseResponseOfbooleanToJson(
  BaseResponseOfboolean instance,
) => <String, dynamic>{
  'payload': ?instance.payload,
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?_$ResponseErrorTypeEnumMap[instance.errorType],
};

const _$ResponseErrorTypeEnumMap = {
  ResponseErrorType.none: 'None',
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
