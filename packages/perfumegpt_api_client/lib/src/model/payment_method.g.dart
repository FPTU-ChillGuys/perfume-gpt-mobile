// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaymentMethod _$cashOnDelivery = const PaymentMethod._('cashOnDelivery');
const PaymentMethod _$vnPay = const PaymentMethod._('vnPay');
const PaymentMethod _$momo = const PaymentMethod._('momo');
const PaymentMethod _$cashInStore = const PaymentMethod._('cashInStore');

PaymentMethod _$valueOf(String name) {
  switch (name) {
    case 'cashOnDelivery':
      return _$cashOnDelivery;
    case 'vnPay':
      return _$vnPay;
    case 'momo':
      return _$momo;
    case 'cashInStore':
      return _$cashInStore;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PaymentMethod> _$values = BuiltSet<PaymentMethod>(
  const <PaymentMethod>[_$cashOnDelivery, _$vnPay, _$momo, _$cashInStore],
);

class _$PaymentMethodMeta {
  const _$PaymentMethodMeta();
  PaymentMethod get cashOnDelivery => _$cashOnDelivery;
  PaymentMethod get vnPay => _$vnPay;
  PaymentMethod get momo => _$momo;
  PaymentMethod get cashInStore => _$cashInStore;
  PaymentMethod valueOf(String name) => _$valueOf(name);
  BuiltSet<PaymentMethod> get values => _$values;
}

mixin _$PaymentMethodMixin {
  // ignore: non_constant_identifier_names
  _$PaymentMethodMeta get PaymentMethod => const _$PaymentMethodMeta();
}

Serializer<PaymentMethod> _$paymentMethodSerializer =
    _$PaymentMethodSerializer();

class _$PaymentMethodSerializer implements PrimitiveSerializer<PaymentMethod> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'cashOnDelivery': 'CashOnDelivery',
    'vnPay': 'VnPay',
    'momo': 'Momo',
    'cashInStore': 'CashInStore',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CashOnDelivery': 'cashOnDelivery',
    'VnPay': 'vnPay',
    'Momo': 'momo',
    'CashInStore': 'cashInStore',
  };

  @override
  final Iterable<Type> types = const <Type>[PaymentMethod];
  @override
  final String wireName = 'PaymentMethod';

  @override
  Object serialize(
    Serializers serializers,
    PaymentMethod object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PaymentMethod deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PaymentMethod.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
