// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaymentStatus _$unpaid = const PaymentStatus._('unpaid');
const PaymentStatus _$paid = const PaymentStatus._('paid');
const PaymentStatus _$partialRefunded = const PaymentStatus._(
  'partialRefunded',
);
const PaymentStatus _$refunded = const PaymentStatus._('refunded');

PaymentStatus _$valueOf(String name) {
  switch (name) {
    case 'unpaid':
      return _$unpaid;
    case 'paid':
      return _$paid;
    case 'partialRefunded':
      return _$partialRefunded;
    case 'refunded':
      return _$refunded;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PaymentStatus> _$values = BuiltSet<PaymentStatus>(
  const <PaymentStatus>[_$unpaid, _$paid, _$partialRefunded, _$refunded],
);

class _$PaymentStatusMeta {
  const _$PaymentStatusMeta();
  PaymentStatus get unpaid => _$unpaid;
  PaymentStatus get paid => _$paid;
  PaymentStatus get partialRefunded => _$partialRefunded;
  PaymentStatus get refunded => _$refunded;
  PaymentStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<PaymentStatus> get values => _$values;
}

mixin _$PaymentStatusMixin {
  // ignore: non_constant_identifier_names
  _$PaymentStatusMeta get PaymentStatus => const _$PaymentStatusMeta();
}

Serializer<PaymentStatus> _$paymentStatusSerializer =
    _$PaymentStatusSerializer();

class _$PaymentStatusSerializer implements PrimitiveSerializer<PaymentStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unpaid': 'Unpaid',
    'paid': 'Paid',
    'partialRefunded': 'Partial_Refunded',
    'refunded': 'Refunded',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Unpaid': 'unpaid',
    'Paid': 'paid',
    'Partial_Refunded': 'partialRefunded',
    'Refunded': 'refunded',
  };

  @override
  final Iterable<Type> types = const <Type>[PaymentStatus];
  @override
  final String wireName = 'PaymentStatus';

  @override
  Object serialize(
    Serializers serializers,
    PaymentStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PaymentStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PaymentStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
