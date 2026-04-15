// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfVoucherResponseCWProxy {
  BaseResponseOfListOfVoucherResponse payload(List<VoucherResponse>? payload);

  BaseResponseOfListOfVoucherResponse success(bool? success);

  BaseResponseOfListOfVoucherResponse message(String? message);

  BaseResponseOfListOfVoucherResponse errors(List<String>? errors);

  BaseResponseOfListOfVoucherResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfVoucherResponse call({
    List<VoucherResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfVoucherResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfVoucherResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfVoucherResponseCWProxyImpl
    implements _$BaseResponseOfListOfVoucherResponseCWProxy {
  const _$BaseResponseOfListOfVoucherResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfVoucherResponse _value;

  @override
  BaseResponseOfListOfVoucherResponse payload(List<VoucherResponse>? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfListOfVoucherResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfVoucherResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfVoucherResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfVoucherResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfVoucherResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfVoucherResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<VoucherResponse>?,
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

extension $BaseResponseOfListOfVoucherResponseCopyWith
    on BaseResponseOfListOfVoucherResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfVoucherResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfVoucherResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfVoucherResponse
_$BaseResponseOfListOfVoucherResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfVoucherResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfVoucherResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map((e) => VoucherResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
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

Map<String, dynamic> _$BaseResponseOfListOfVoucherResponseToJson(
  BaseResponseOfListOfVoucherResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
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
