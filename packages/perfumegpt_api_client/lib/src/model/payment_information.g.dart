// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_information.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentInformationCWProxy {
  PaymentInformation method(PaymentMethod? method);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaymentInformation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaymentInformation(...).copyWith(id: 12, name: "My name")
  /// ````
  PaymentInformation call({PaymentMethod? method});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaymentInformation.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaymentInformation.copyWith.fieldName(...)`
class _$PaymentInformationCWProxyImpl implements _$PaymentInformationCWProxy {
  const _$PaymentInformationCWProxyImpl(this._value);

  final PaymentInformation _value;

  @override
  PaymentInformation method(PaymentMethod? method) => this(method: method);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaymentInformation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaymentInformation(...).copyWith(id: 12, name: "My name")
  /// ````
  PaymentInformation call({Object? method = const $CopyWithPlaceholder()}) {
    return PaymentInformation(
      method: method == const $CopyWithPlaceholder()
          ? _value.method
          // ignore: cast_nullable_to_non_nullable
          : method as PaymentMethod?,
    );
  }
}

extension $PaymentInformationCopyWith on PaymentInformation {
  /// Returns a callable class that can be used as follows: `instanceOfPaymentInformation.copyWith(...)` or like so:`instanceOfPaymentInformation.copyWith.fieldName(...)`.
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
      );
      return val;
    });

Map<String, dynamic> _$PaymentInformationToJson(PaymentInformation instance) =>
    <String, dynamic>{'method': ?_$PaymentMethodEnumMap[instance.method]};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cashOnDelivery: 'CashOnDelivery',
  PaymentMethod.vnPay: 'VnPay',
  PaymentMethod.momo: 'Momo',
  PaymentMethod.cashInStore: 'CashInStore',
};
