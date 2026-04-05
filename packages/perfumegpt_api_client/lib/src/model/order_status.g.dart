// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderStatus _$pending = const OrderStatus._('pending');
const OrderStatus _$processing = const OrderStatus._('processing');
const OrderStatus _$delivering = const OrderStatus._('delivering');
const OrderStatus _$delivered = const OrderStatus._('delivered');
const OrderStatus _$returning = const OrderStatus._('returning');
const OrderStatus _$cancelled = const OrderStatus._('cancelled');
const OrderStatus _$partialReturned = const OrderStatus._('partialReturned');
const OrderStatus _$returned = const OrderStatus._('returned');

OrderStatus _$valueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pending;
    case 'processing':
      return _$processing;
    case 'delivering':
      return _$delivering;
    case 'delivered':
      return _$delivered;
    case 'returning':
      return _$returning;
    case 'cancelled':
      return _$cancelled;
    case 'partialReturned':
      return _$partialReturned;
    case 'returned':
      return _$returned;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderStatus> _$values =
    BuiltSet<OrderStatus>(const <OrderStatus>[
      _$pending,
      _$processing,
      _$delivering,
      _$delivered,
      _$returning,
      _$cancelled,
      _$partialReturned,
      _$returned,
    ]);

class _$OrderStatusMeta {
  const _$OrderStatusMeta();
  OrderStatus get pending => _$pending;
  OrderStatus get processing => _$processing;
  OrderStatus get delivering => _$delivering;
  OrderStatus get delivered => _$delivered;
  OrderStatus get returning => _$returning;
  OrderStatus get cancelled => _$cancelled;
  OrderStatus get partialReturned => _$partialReturned;
  OrderStatus get returned => _$returned;
  OrderStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<OrderStatus> get values => _$values;
}

mixin _$OrderStatusMixin {
  // ignore: non_constant_identifier_names
  _$OrderStatusMeta get OrderStatus => const _$OrderStatusMeta();
}

Serializer<OrderStatus> _$orderStatusSerializer = _$OrderStatusSerializer();

class _$OrderStatusSerializer implements PrimitiveSerializer<OrderStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'Pending',
    'processing': 'Processing',
    'delivering': 'Delivering',
    'delivered': 'Delivered',
    'returning': 'Returning',
    'cancelled': 'Cancelled',
    'partialReturned': 'Partial_Returned',
    'returned': 'Returned',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Pending': 'pending',
    'Processing': 'processing',
    'Delivering': 'delivering',
    'Delivered': 'delivered',
    'Returning': 'returning',
    'Cancelled': 'cancelled',
    'Partial_Returned': 'partialReturned',
    'Returned': 'returned',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderStatus];
  @override
  final String wireName = 'OrderStatus';

  @override
  Object serialize(
    Serializers serializers,
    OrderStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OrderStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OrderStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
