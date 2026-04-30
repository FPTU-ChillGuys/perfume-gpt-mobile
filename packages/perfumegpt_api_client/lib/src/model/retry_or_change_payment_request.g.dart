// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retry_or_change_payment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RetryOrChangePaymentRequestCWProxy {
  RetryOrChangePaymentRequest newPaymentMethod(PaymentMethod? newPaymentMethod);

  RetryOrChangePaymentRequest newDepositMethod(PaymentMethod? newDepositMethod);

  RetryOrChangePaymentRequest posSessionId(String? posSessionId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RetryOrChangePaymentRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RetryOrChangePaymentRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  RetryOrChangePaymentRequest call({
    PaymentMethod? newPaymentMethod,
    PaymentMethod? newDepositMethod,
    String? posSessionId,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRetryOrChangePaymentRequest.copyWith(...)` or call `instanceOfRetryOrChangePaymentRequest.copyWith.fieldName(value)` for a single field.
class _$RetryOrChangePaymentRequestCWProxyImpl
    implements _$RetryOrChangePaymentRequestCWProxy {
  const _$RetryOrChangePaymentRequestCWProxyImpl(this._value);

  final RetryOrChangePaymentRequest _value;

  @override
  RetryOrChangePaymentRequest newPaymentMethod(
    PaymentMethod? newPaymentMethod,
  ) => call(newPaymentMethod: newPaymentMethod);

  @override
  RetryOrChangePaymentRequest newDepositMethod(
    PaymentMethod? newDepositMethod,
  ) => call(newDepositMethod: newDepositMethod);

  @override
  RetryOrChangePaymentRequest posSessionId(String? posSessionId) =>
      call(posSessionId: posSessionId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RetryOrChangePaymentRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RetryOrChangePaymentRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  RetryOrChangePaymentRequest call({
    Object? newPaymentMethod = const $CopyWithPlaceholder(),
    Object? newDepositMethod = const $CopyWithPlaceholder(),
    Object? posSessionId = const $CopyWithPlaceholder(),
  }) {
    return RetryOrChangePaymentRequest(
      newPaymentMethod: newPaymentMethod == const $CopyWithPlaceholder()
          ? _value.newPaymentMethod
          // ignore: cast_nullable_to_non_nullable
          : newPaymentMethod as PaymentMethod?,
      newDepositMethod: newDepositMethod == const $CopyWithPlaceholder()
          ? _value.newDepositMethod
          // ignore: cast_nullable_to_non_nullable
          : newDepositMethod as PaymentMethod?,
      posSessionId: posSessionId == const $CopyWithPlaceholder()
          ? _value.posSessionId
          // ignore: cast_nullable_to_non_nullable
          : posSessionId as String?,
    );
  }
}

extension $RetryOrChangePaymentRequestCopyWith on RetryOrChangePaymentRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRetryOrChangePaymentRequest.copyWith(...)` or `instanceOfRetryOrChangePaymentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RetryOrChangePaymentRequestCWProxy get copyWith =>
      _$RetryOrChangePaymentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetryOrChangePaymentRequest _$RetryOrChangePaymentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RetryOrChangePaymentRequest', json, ($checkedConvert) {
  final val = RetryOrChangePaymentRequest(
    newPaymentMethod: $checkedConvert(
      'newPaymentMethod',
      (v) => $enumDecodeNullable(_$PaymentMethodEnumMap, v),
    ),
    newDepositMethod: $checkedConvert(
      'newDepositMethod',
      (v) => $enumDecodeNullable(_$PaymentMethodEnumMap, v),
    ),
    posSessionId: $checkedConvert('posSessionId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$RetryOrChangePaymentRequestToJson(
  RetryOrChangePaymentRequest instance,
) => <String, dynamic>{
  'newPaymentMethod': ?_$PaymentMethodEnumMap[instance.newPaymentMethod],
  'newDepositMethod': ?_$PaymentMethodEnumMap[instance.newDepositMethod],
  'posSessionId': ?instance.posSessionId,
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cashOnDelivery: 'CashOnDelivery',
  PaymentMethod.vnPay: 'VnPay',
  PaymentMethod.momo: 'Momo',
  PaymentMethod.cashInStore: 'CashInStore',
  PaymentMethod.externalBankTransfer: 'ExternalBankTransfer',
  PaymentMethod.payOs: 'PayOs',
};
