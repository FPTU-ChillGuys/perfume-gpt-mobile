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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaymentInfoResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaymentInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PaymentInfoResponse call({
    String? id,
    TransactionStatus? status,
    PaymentMethod? paymentMethod,
    String? failureReason,
    num? totalAmount,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaymentInfoResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaymentInfoResponse.copyWith.fieldName(...)`
class _$PaymentInfoResponseCWProxyImpl implements _$PaymentInfoResponseCWProxy {
  const _$PaymentInfoResponseCWProxyImpl(this._value);

  final PaymentInfoResponse _value;

  @override
  PaymentInfoResponse id(String? id) => this(id: id);

  @override
  PaymentInfoResponse status(TransactionStatus? status) => this(status: status);

  @override
  PaymentInfoResponse paymentMethod(PaymentMethod? paymentMethod) =>
      this(paymentMethod: paymentMethod);

  @override
  PaymentInfoResponse failureReason(String? failureReason) =>
      this(failureReason: failureReason);

  @override
  PaymentInfoResponse totalAmount(num? totalAmount) =>
      this(totalAmount: totalAmount);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaymentInfoResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaymentInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfPaymentInfoResponse.copyWith(...)` or like so:`instanceOfPaymentInfoResponse.copyWith.fieldName(...)`.
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
