// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_distribution_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentMethodDistributionResponseCWProxy {
  PaymentMethodDistributionResponse paymentMethod(PaymentMethod? paymentMethod);

  PaymentMethodDistributionResponse transactionsCount(int? transactionsCount);

  PaymentMethodDistributionResponse amount(num? amount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentMethodDistributionResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentMethodDistributionResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentMethodDistributionResponse call({
    PaymentMethod? paymentMethod,
    int? transactionsCount,
    num? amount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPaymentMethodDistributionResponse.copyWith(...)` or call `instanceOfPaymentMethodDistributionResponse.copyWith.fieldName(value)` for a single field.
class _$PaymentMethodDistributionResponseCWProxyImpl
    implements _$PaymentMethodDistributionResponseCWProxy {
  const _$PaymentMethodDistributionResponseCWProxyImpl(this._value);

  final PaymentMethodDistributionResponse _value;

  @override
  PaymentMethodDistributionResponse paymentMethod(
    PaymentMethod? paymentMethod,
  ) => call(paymentMethod: paymentMethod);

  @override
  PaymentMethodDistributionResponse transactionsCount(int? transactionsCount) =>
      call(transactionsCount: transactionsCount);

  @override
  PaymentMethodDistributionResponse amount(num? amount) => call(amount: amount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentMethodDistributionResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentMethodDistributionResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentMethodDistributionResponse call({
    Object? paymentMethod = const $CopyWithPlaceholder(),
    Object? transactionsCount = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
  }) {
    return PaymentMethodDistributionResponse(
      paymentMethod: paymentMethod == const $CopyWithPlaceholder()
          ? _value.paymentMethod
          // ignore: cast_nullable_to_non_nullable
          : paymentMethod as PaymentMethod?,
      transactionsCount: transactionsCount == const $CopyWithPlaceholder()
          ? _value.transactionsCount
          // ignore: cast_nullable_to_non_nullable
          : transactionsCount as int?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as num?,
    );
  }
}

extension $PaymentMethodDistributionResponseCopyWith
    on PaymentMethodDistributionResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPaymentMethodDistributionResponse.copyWith(...)` or `instanceOfPaymentMethodDistributionResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaymentMethodDistributionResponseCWProxy get copyWith =>
      _$PaymentMethodDistributionResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodDistributionResponse _$PaymentMethodDistributionResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaymentMethodDistributionResponse', json, (
  $checkedConvert,
) {
  final val = PaymentMethodDistributionResponse(
    paymentMethod: $checkedConvert(
      'paymentMethod',
      (v) => $enumDecodeNullable(_$PaymentMethodEnumMap, v),
    ),
    transactionsCount: $checkedConvert(
      'transactionsCount',
      (v) => (v as num?)?.toInt(),
    ),
    amount: $checkedConvert('amount', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$PaymentMethodDistributionResponseToJson(
  PaymentMethodDistributionResponse instance,
) => <String, dynamic>{
  'paymentMethod': ?_$PaymentMethodEnumMap[instance.paymentMethod],
  'transactionsCount': ?instance.transactionsCount,
  'amount': ?instance.amount,
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cashOnDelivery: 'CashOnDelivery',
  PaymentMethod.vnPay: 'VnPay',
  PaymentMethod.momo: 'Momo',
  PaymentMethod.cashInStore: 'CashInStore',
  PaymentMethod.externalBankTransfer: 'ExternalBankTransfer',
  PaymentMethod.payOs: 'PayOs',
};
