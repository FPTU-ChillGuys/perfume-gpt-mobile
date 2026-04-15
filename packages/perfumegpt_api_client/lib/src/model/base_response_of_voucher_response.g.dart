// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfVoucherResponseCWProxy {
  BaseResponseOfVoucherResponse payload(VoucherResponse? payload);

  BaseResponseOfVoucherResponse success(bool? success);

  BaseResponseOfVoucherResponse message(String? message);

  BaseResponseOfVoucherResponse errors(List<String>? errors);

  BaseResponseOfVoucherResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfVoucherResponse call({
    VoucherResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfVoucherResponse.copyWith(...)` or call `instanceOfBaseResponseOfVoucherResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfVoucherResponseCWProxyImpl
    implements _$BaseResponseOfVoucherResponseCWProxy {
  const _$BaseResponseOfVoucherResponseCWProxyImpl(this._value);

  final BaseResponseOfVoucherResponse _value;

  @override
  BaseResponseOfVoucherResponse payload(VoucherResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfVoucherResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfVoucherResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfVoucherResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfVoucherResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfVoucherResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfVoucherResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as VoucherResponse?,
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

extension $BaseResponseOfVoucherResponseCopyWith
    on BaseResponseOfVoucherResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfVoucherResponse.copyWith(...)` or `instanceOfBaseResponseOfVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfVoucherResponseCWProxy get copyWith =>
      _$BaseResponseOfVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfVoucherResponse _$BaseResponseOfVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfVoucherResponse', json, ($checkedConvert) {
  final val = BaseResponseOfVoucherResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : VoucherResponse.fromJson(v as Map<String, dynamic>),
    ),
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

Map<String, dynamic> _$BaseResponseOfVoucherResponseToJson(
  BaseResponseOfVoucherResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?_$ResponseErrorTypeEnumMap[instance.errorType],
};

const _$ResponseErrorTypeEnumMap = {
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
