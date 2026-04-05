// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TransactionType _$payment = const TransactionType._('payment');
const TransactionType _$refund = const TransactionType._('refund');

TransactionType _$valueOf(String name) {
  switch (name) {
    case 'payment':
      return _$payment;
    case 'refund':
      return _$refund;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TransactionType> _$values = BuiltSet<TransactionType>(
  const <TransactionType>[_$payment, _$refund],
);

class _$TransactionTypeMeta {
  const _$TransactionTypeMeta();
  TransactionType get payment => _$payment;
  TransactionType get refund => _$refund;
  TransactionType valueOf(String name) => _$valueOf(name);
  BuiltSet<TransactionType> get values => _$values;
}

mixin _$TransactionTypeMixin {
  // ignore: non_constant_identifier_names
  _$TransactionTypeMeta get TransactionType => const _$TransactionTypeMeta();
}

Serializer<TransactionType> _$transactionTypeSerializer =
    _$TransactionTypeSerializer();

class _$TransactionTypeSerializer
    implements PrimitiveSerializer<TransactionType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'payment': 'Payment',
    'refund': 'Refund',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Payment': 'payment',
    'Refund': 'refund',
  };

  @override
  final Iterable<Type> types = const <Type>[TransactionType];
  @override
  final String wireName = 'TransactionType';

  @override
  Object serialize(
    Serializers serializers,
    TransactionType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TransactionType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TransactionType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
