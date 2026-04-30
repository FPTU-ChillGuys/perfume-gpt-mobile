// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_pickup_payment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreatePickupPaymentRequestCWProxy {
  CreatePickupPaymentRequest paymentMethod(PaymentMethod? paymentMethod);

  CreatePickupPaymentRequest posSessionId(String? posSessionId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreatePickupPaymentRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreatePickupPaymentRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreatePickupPaymentRequest call({
    PaymentMethod? paymentMethod,
    String? posSessionId,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreatePickupPaymentRequest.copyWith(...)` or call `instanceOfCreatePickupPaymentRequest.copyWith.fieldName(value)` for a single field.
class _$CreatePickupPaymentRequestCWProxyImpl
    implements _$CreatePickupPaymentRequestCWProxy {
  const _$CreatePickupPaymentRequestCWProxyImpl(this._value);

  final CreatePickupPaymentRequest _value;

  @override
  CreatePickupPaymentRequest paymentMethod(PaymentMethod? paymentMethod) =>
      call(paymentMethod: paymentMethod);

  @override
  CreatePickupPaymentRequest posSessionId(String? posSessionId) =>
      call(posSessionId: posSessionId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreatePickupPaymentRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreatePickupPaymentRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreatePickupPaymentRequest call({
    Object? paymentMethod = const $CopyWithPlaceholder(),
    Object? posSessionId = const $CopyWithPlaceholder(),
  }) {
    return CreatePickupPaymentRequest(
      paymentMethod: paymentMethod == const $CopyWithPlaceholder()
          ? _value.paymentMethod
          // ignore: cast_nullable_to_non_nullable
          : paymentMethod as PaymentMethod?,
      posSessionId: posSessionId == const $CopyWithPlaceholder()
          ? _value.posSessionId
          // ignore: cast_nullable_to_non_nullable
          : posSessionId as String?,
    );
  }
}

extension $CreatePickupPaymentRequestCopyWith on CreatePickupPaymentRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreatePickupPaymentRequest.copyWith(...)` or `instanceOfCreatePickupPaymentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreatePickupPaymentRequestCWProxy get copyWith =>
      _$CreatePickupPaymentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePickupPaymentRequest _$CreatePickupPaymentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreatePickupPaymentRequest', json, ($checkedConvert) {
  final val = CreatePickupPaymentRequest(
    paymentMethod: $checkedConvert(
      'paymentMethod',
      (v) => $enumDecodeNullable(_$PaymentMethodEnumMap, v),
    ),
    posSessionId: $checkedConvert('posSessionId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CreatePickupPaymentRequestToJson(
  CreatePickupPaymentRequest instance,
) => <String, dynamic>{
  'paymentMethod': ?_$PaymentMethodEnumMap[instance.paymentMethod],
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
