// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderType _$online = const OrderType._('online');
const OrderType _$offline = const OrderType._('offline');

OrderType _$valueOf(String name) {
  switch (name) {
    case 'online':
      return _$online;
    case 'offline':
      return _$offline;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderType> _$values = BuiltSet<OrderType>(const <OrderType>[
  _$online,
  _$offline,
]);

class _$OrderTypeMeta {
  const _$OrderTypeMeta();
  OrderType get online => _$online;
  OrderType get offline => _$offline;
  OrderType valueOf(String name) => _$valueOf(name);
  BuiltSet<OrderType> get values => _$values;
}

mixin _$OrderTypeMixin {
  // ignore: non_constant_identifier_names
  _$OrderTypeMeta get OrderType => const _$OrderTypeMeta();
}

Serializer<OrderType> _$orderTypeSerializer = _$OrderTypeSerializer();

class _$OrderTypeSerializer implements PrimitiveSerializer<OrderType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'online': 'Online',
    'offline': 'Offline',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Online': 'online',
    'Offline': 'offline',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderType];
  @override
  final String wireName = 'OrderType';

  @override
  Object serialize(
    Serializers serializers,
    OrderType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OrderType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OrderType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
