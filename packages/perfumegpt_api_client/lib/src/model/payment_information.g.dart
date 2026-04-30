// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_information.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentInformationCWProxy {
  PaymentInformation method(PaymentMethod? method);

  PaymentInformation depositGateway(PaymentMethod? depositGateway);

  PaymentInformation posSessionId(String? posSessionId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentInformation(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentInformation(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentInformation call({
    PaymentMethod? method,
    PaymentMethod? depositGateway,
    String? posSessionId,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPaymentInformation.copyWith(...)` or call `instanceOfPaymentInformation.copyWith.fieldName(value)` for a single field.
class _$PaymentInformationCWProxyImpl implements _$PaymentInformationCWProxy {
  const _$PaymentInformationCWProxyImpl(this._value);

  final PaymentInformation _value;

  @override
  PaymentInformation method(PaymentMethod? method) => call(method: method);

  @override
  PaymentInformation depositGateway(PaymentMethod? depositGateway) =>
      call(depositGateway: depositGateway);

  @override
  PaymentInformation posSessionId(String? posSessionId) =>
      call(posSessionId: posSessionId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentInformation(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentInformation(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentInformation call({
    Object? method = const $CopyWithPlaceholder(),
    Object? depositGateway = const $CopyWithPlaceholder(),
    Object? posSessionId = const $CopyWithPlaceholder(),
  }) {
    return PaymentInformation(
      method: method == const $CopyWithPlaceholder()
          ? _value.method
          // ignore: cast_nullable_to_non_nullable
          : method as PaymentMethod?,
      depositGateway: depositGateway == const $CopyWithPlaceholder()
          ? _value.depositGateway
          // ignore: cast_nullable_to_non_nullable
          : depositGateway as PaymentMethod?,
      posSessionId: posSessionId == const $CopyWithPlaceholder()
          ? _value.posSessionId
          // ignore: cast_nullable_to_non_nullable
          : posSessionId as String?,
    );
  }
}

extension $PaymentInformationCopyWith on PaymentInformation {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPaymentInformation.copyWith(...)` or `instanceOfPaymentInformation.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaymentInformationCWProxy get copyWith =>
      _$PaymentInformationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentInformation _$PaymentInformationFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaymentInformation', json, ($checkedConvert) {
      final val = PaymentInformation(
        method: $checkedConvert(
          'method',
          (v) => $enumDecodeNullable(_$PaymentMethodEnumMap, v),
        ),
        depositGateway: $checkedConvert(
          'depositGateway',
          (v) => $enumDecodeNullable(_$PaymentMethodEnumMap, v),
        ),
        posSessionId: $checkedConvert('posSessionId', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$PaymentInformationToJson(PaymentInformation instance) =>
    <String, dynamic>{
      'method': ?_$PaymentMethodEnumMap[instance.method],
      'depositGateway': ?_$PaymentMethodEnumMap[instance.depositGateway],
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
