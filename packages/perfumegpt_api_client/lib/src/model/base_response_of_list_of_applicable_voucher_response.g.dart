// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_applicable_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfApplicableVoucherResponseCWProxy {
  BaseResponseOfListOfApplicableVoucherResponse payload(
    List<ApplicableVoucherResponse>? payload,
  );

  BaseResponseOfListOfApplicableVoucherResponse success(bool? success);

  BaseResponseOfListOfApplicableVoucherResponse message(String? message);

  BaseResponseOfListOfApplicableVoucherResponse errors(List<String>? errors);

  BaseResponseOfListOfApplicableVoucherResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfApplicableVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfApplicableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfApplicableVoucherResponse call({
    List<ApplicableVoucherResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfApplicableVoucherResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfApplicableVoucherResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfApplicableVoucherResponseCWProxyImpl
    implements _$BaseResponseOfListOfApplicableVoucherResponseCWProxy {
  const _$BaseResponseOfListOfApplicableVoucherResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfApplicableVoucherResponse _value;

  @override
  BaseResponseOfListOfApplicableVoucherResponse payload(
    List<ApplicableVoucherResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfApplicableVoucherResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfApplicableVoucherResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfApplicableVoucherResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfApplicableVoucherResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfApplicableVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfApplicableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfApplicableVoucherResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfApplicableVoucherResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<ApplicableVoucherResponse>?,
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

extension $BaseResponseOfListOfApplicableVoucherResponseCopyWith
    on BaseResponseOfListOfApplicableVoucherResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfApplicableVoucherResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfApplicableVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfApplicableVoucherResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfApplicableVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfApplicableVoucherResponse
_$BaseResponseOfListOfApplicableVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfApplicableVoucherResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfApplicableVoucherResponse(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                ApplicableVoucherResponse.fromJson(e as Map<String, dynamic>),
          )
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

Map<String, dynamic> _$BaseResponseOfListOfApplicableVoucherResponseToJson(
  BaseResponseOfListOfApplicableVoucherResponse instance,
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
