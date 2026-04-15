// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_payment_transaction_overview_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPaymentTransactionOverviewResponseCWProxy {
  BaseResponseOfPaymentTransactionOverviewResponse payload(
    PaymentTransactionOverviewResponse? payload,
  );

  BaseResponseOfPaymentTransactionOverviewResponse success(bool? success);

  BaseResponseOfPaymentTransactionOverviewResponse message(String? message);

  BaseResponseOfPaymentTransactionOverviewResponse errors(List<String>? errors);

  BaseResponseOfPaymentTransactionOverviewResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPaymentTransactionOverviewResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPaymentTransactionOverviewResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPaymentTransactionOverviewResponse call({
    PaymentTransactionOverviewResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPaymentTransactionOverviewResponse.copyWith(...)` or call `instanceOfBaseResponseOfPaymentTransactionOverviewResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPaymentTransactionOverviewResponseCWProxyImpl
    implements _$BaseResponseOfPaymentTransactionOverviewResponseCWProxy {
  const _$BaseResponseOfPaymentTransactionOverviewResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPaymentTransactionOverviewResponse _value;

  @override
  BaseResponseOfPaymentTransactionOverviewResponse payload(
    PaymentTransactionOverviewResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPaymentTransactionOverviewResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPaymentTransactionOverviewResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPaymentTransactionOverviewResponse errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfPaymentTransactionOverviewResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPaymentTransactionOverviewResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPaymentTransactionOverviewResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPaymentTransactionOverviewResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPaymentTransactionOverviewResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PaymentTransactionOverviewResponse?,
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

extension $BaseResponseOfPaymentTransactionOverviewResponseCopyWith
    on BaseResponseOfPaymentTransactionOverviewResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPaymentTransactionOverviewResponse.copyWith(...)` or `instanceOfBaseResponseOfPaymentTransactionOverviewResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPaymentTransactionOverviewResponseCWProxy get copyWith =>
      _$BaseResponseOfPaymentTransactionOverviewResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPaymentTransactionOverviewResponse
_$BaseResponseOfPaymentTransactionOverviewResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPaymentTransactionOverviewResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPaymentTransactionOverviewResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PaymentTransactionOverviewResponse.fromJson(
              v as Map<String, dynamic>,
            ),
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

Map<String, dynamic> _$BaseResponseOfPaymentTransactionOverviewResponseToJson(
  BaseResponseOfPaymentTransactionOverviewResponse instance,
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
