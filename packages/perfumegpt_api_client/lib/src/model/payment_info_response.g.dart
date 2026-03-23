// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_info_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentInfoResponseCWProxy {
  PaymentInfoResponse id(String? id);

  PaymentInfoResponse status(TransactionStatus? status);

  PaymentInfoResponse paymentMethod(PaymentMethod? paymentMethod);

  PaymentInfoResponse failureReason(String? failureReason);

  PaymentInfoResponse totalAmount(num? totalAmount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentInfoResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentInfoResponse call({
    String? id,
    TransactionStatus? status,
    PaymentMethod? paymentMethod,
    String? failureReason,
    num? totalAmount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPaymentInfoResponse.copyWith(...)` or call `instanceOfPaymentInfoResponse.copyWith.fieldName(value)` for a single field.
class _$PaymentInfoResponseCWProxyImpl implements _$PaymentInfoResponseCWProxy {
  const _$PaymentInfoResponseCWProxyImpl(this._value);

  final PaymentInfoResponse _value;

  @override
  PaymentInfoResponse id(String? id) => call(id: id);

  @override
  PaymentInfoResponse status(TransactionStatus? status) => call(status: status);

  @override
  PaymentInfoResponse paymentMethod(PaymentMethod? paymentMethod) =>
      call(paymentMethod: paymentMethod);

  @override
  PaymentInfoResponse failureReason(String? failureReason) =>
      call(failureReason: failureReason);

  @override
  PaymentInfoResponse totalAmount(num? totalAmount) =>
      call(totalAmount: totalAmount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentInfoResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentInfoResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? paymentMethod = const $CopyWithPlaceholder(),
    Object? failureReason = const $CopyWithPlaceholder(),
    Object? totalAmount = const $CopyWithPlaceholder(),
  }) {
    return PaymentInfoResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as TransactionStatus?,
      paymentMethod: paymentMethod == const $CopyWithPlaceholder()
          ? _value.paymentMethod
          // ignore: cast_nullable_to_non_nullable
          : paymentMethod as PaymentMethod?,
      failureReason: failureReason == const $CopyWithPlaceholder()
          ? _value.failureReason
          // ignore: cast_nullable_to_non_nullable
          : failureReason as String?,
      totalAmount: totalAmount == const $CopyWithPlaceholder()
          ? _value.totalAmount
          // ignore: cast_nullable_to_non_nullable
          : totalAmount as num?,
    );
  }
}

extension $PaymentInfoResponseCopyWith on PaymentInfoResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPaymentInfoResponse.copyWith(...)` or `instanceOfPaymentInfoResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaymentInfoResponseCWProxy get copyWith =>
      _$PaymentInfoResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentInfoResponse _$PaymentInfoResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaymentInfoResponse', json, ($checkedConvert) {
      final val = PaymentInfoResponse(
        id: $checkedConvert('id', (v) => v as String?),
        status: $checkedConvert(
          'status',
          (v) => $enumDecodeNullable(_$TransactionStatusEnumMap, v),
        ),
        paymentMethod: $checkedConvert(
          'paymentMethod',
          (v) => $enumDecodeNullable(_$PaymentMethodEnumMap, v),
        ),
        failureReason: $checkedConvert('failureReason', (v) => v as String?),
        totalAmount: $checkedConvert('totalAmount', (v) => v as num?),
      );
      return val;
    });

Map<String, dynamic> _$PaymentInfoResponseToJson(
  PaymentInfoResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'status': ?_$TransactionStatusEnumMap[instance.status],
  'paymentMethod': ?_$PaymentMethodEnumMap[instance.paymentMethod],
  'failureReason': ?instance.failureReason,
  'totalAmount': ?instance.totalAmount,
};

const _$TransactionStatusEnumMap = {
  TransactionStatus.pending: 'Pending',
  TransactionStatus.success: 'Success',
  TransactionStatus.failed: 'Failed',
  TransactionStatus.cancelled: 'Cancelled',
  TransactionStatus.refunded: 'Refunded',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cashOnDelivery: 'CashOnDelivery',
  PaymentMethod.vnPay: 'VnPay',
  PaymentMethod.momo: 'Momo',
  PaymentMethod.cashInStore: 'CashInStore',
};
