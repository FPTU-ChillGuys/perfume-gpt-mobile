// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ShippingStatus _$pending = const ShippingStatus._('pending');
const ShippingStatus _$delivering = const ShippingStatus._('delivering');
const ShippingStatus _$delivered = const ShippingStatus._('delivered');
const ShippingStatus _$cancelled = const ShippingStatus._('cancelled');
const ShippingStatus _$returning = const ShippingStatus._('returning');
const ShippingStatus _$returned = const ShippingStatus._('returned');

ShippingStatus _$valueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pending;
    case 'delivering':
      return _$delivering;
    case 'delivered':
      return _$delivered;
    case 'cancelled':
      return _$cancelled;
    case 'returning':
      return _$returning;
    case 'returned':
      return _$returned;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ShippingStatus> _$values = BuiltSet<ShippingStatus>(
  const <ShippingStatus>[
    _$pending,
    _$delivering,
    _$delivered,
    _$cancelled,
    _$returning,
    _$returned,
  ],
);

class _$ShippingStatusMeta {
  const _$ShippingStatusMeta();
  ShippingStatus get pending => _$pending;
  ShippingStatus get delivering => _$delivering;
  ShippingStatus get delivered => _$delivered;
  ShippingStatus get cancelled => _$cancelled;
  ShippingStatus get returning => _$returning;
  ShippingStatus get returned => _$returned;
  ShippingStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<ShippingStatus> get values => _$values;
}

mixin _$ShippingStatusMixin {
  // ignore: non_constant_identifier_names
  _$ShippingStatusMeta get ShippingStatus => const _$ShippingStatusMeta();
}

Serializer<ShippingStatus> _$shippingStatusSerializer =
    _$ShippingStatusSerializer();

class _$ShippingStatusSerializer
    implements PrimitiveSerializer<ShippingStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'Pending',
    'delivering': 'Delivering',
    'delivered': 'Delivered',
    'cancelled': 'Cancelled',
    'returning': 'Returning',
    'returned': 'Returned',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Pending': 'pending',
    'Delivering': 'delivering',
    'Delivered': 'delivered',
    'Cancelled': 'cancelled',
    'Returning': 'returning',
    'Returned': 'returned',
  };

  @override
  final Iterable<Type> types = const <Type>[ShippingStatus];
  @override
  final String wireName = 'ShippingStatus';

  @override
  Object serialize(
    Serializers serializers,
    ShippingStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ShippingStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ShippingStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
