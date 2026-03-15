// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_ofstring.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfstringCWProxy {
  BaseResponseOfstring payload(String? payload);

  BaseResponseOfstring success(bool? success);

  BaseResponseOfstring message(String? message);

  BaseResponseOfstring errors(List<String>? errors);

  BaseResponseOfstring errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfstring(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfstring(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfstring call({
    String? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfstring.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfstring.copyWith.fieldName(...)`
class _$BaseResponseOfstringCWProxyImpl
    implements _$BaseResponseOfstringCWProxy {
  const _$BaseResponseOfstringCWProxyImpl(this._value);

  final BaseResponseOfstring _value;

  @override
  BaseResponseOfstring payload(String? payload) => this(payload: payload);

  @override
  BaseResponseOfstring success(bool? success) => this(success: success);

  @override
  BaseResponseOfstring message(String? message) => this(message: message);

  @override
  BaseResponseOfstring errors(List<String>? errors) => this(errors: errors);

  @override
  BaseResponseOfstring errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfstring(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfstring(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfstring call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfstring(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as String?,
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

extension $BaseResponseOfstringCopyWith on BaseResponseOfstring {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfstring.copyWith(...)` or like so:`instanceOfBaseResponseOfstring.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfstringCWProxy get copyWith =>
      _$BaseResponseOfstringCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfstring _$BaseResponseOfstringFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfstring', json, ($checkedConvert) {
  final val = BaseResponseOfstring(
    payload: $checkedConvert('payload', (v) => v as String?),
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

Map<String, dynamic> _$BaseResponseOfstringToJson(
  BaseResponseOfstring instance,
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
