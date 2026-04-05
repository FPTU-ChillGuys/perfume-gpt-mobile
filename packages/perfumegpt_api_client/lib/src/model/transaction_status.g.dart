// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TransactionStatus _$pending = const TransactionStatus._('pending');
const TransactionStatus _$success = const TransactionStatus._('success');
const TransactionStatus _$failed = const TransactionStatus._('failed');
const TransactionStatus _$cancelled = const TransactionStatus._('cancelled');

TransactionStatus _$valueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pending;
    case 'success':
      return _$success;
    case 'failed':
      return _$failed;
    case 'cancelled':
      return _$cancelled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TransactionStatus> _$values = BuiltSet<TransactionStatus>(
  const <TransactionStatus>[_$pending, _$success, _$failed, _$cancelled],
);

class _$TransactionStatusMeta {
  const _$TransactionStatusMeta();
  TransactionStatus get pending => _$pending;
  TransactionStatus get success => _$success;
  TransactionStatus get failed => _$failed;
  TransactionStatus get cancelled => _$cancelled;
  TransactionStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<TransactionStatus> get values => _$values;
}

mixin _$TransactionStatusMixin {
  // ignore: non_constant_identifier_names
  _$TransactionStatusMeta get TransactionStatus =>
      const _$TransactionStatusMeta();
}

Serializer<TransactionStatus> _$transactionStatusSerializer =
    _$TransactionStatusSerializer();

class _$TransactionStatusSerializer
    implements PrimitiveSerializer<TransactionStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'Pending',
    'success': 'Success',
    'failed': 'Failed',
    'cancelled': 'Cancelled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Pending': 'pending',
    'Success': 'success',
    'Failed': 'failed',
    'Cancelled': 'cancelled',
  };

  @override
  final Iterable<Type> types = const <Type>[TransactionStatus];
  @override
  final String wireName = 'TransactionStatus';

  @override
  Object serialize(
    Serializers serializers,
    TransactionStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TransactionStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TransactionStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
