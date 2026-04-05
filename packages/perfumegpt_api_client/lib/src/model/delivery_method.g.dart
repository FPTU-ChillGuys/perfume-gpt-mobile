// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_method.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeliveryMethod _$delivery = const DeliveryMethod._('delivery');
const DeliveryMethod _$pickupInStore = const DeliveryMethod._('pickupInStore');

DeliveryMethod _$valueOf(String name) {
  switch (name) {
    case 'delivery':
      return _$delivery;
    case 'pickupInStore':
      return _$pickupInStore;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DeliveryMethod> _$values = BuiltSet<DeliveryMethod>(
  const <DeliveryMethod>[_$delivery, _$pickupInStore],
);

class _$DeliveryMethodMeta {
  const _$DeliveryMethodMeta();
  DeliveryMethod get delivery => _$delivery;
  DeliveryMethod get pickupInStore => _$pickupInStore;
  DeliveryMethod valueOf(String name) => _$valueOf(name);
  BuiltSet<DeliveryMethod> get values => _$values;
}

mixin _$DeliveryMethodMixin {
  // ignore: non_constant_identifier_names
  _$DeliveryMethodMeta get DeliveryMethod => const _$DeliveryMethodMeta();
}

Serializer<DeliveryMethod> _$deliveryMethodSerializer =
    _$DeliveryMethodSerializer();

class _$DeliveryMethodSerializer
    implements PrimitiveSerializer<DeliveryMethod> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'delivery': 'Delivery',
    'pickupInStore': 'PickupInStore',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Delivery': 'delivery',
    'PickupInStore': 'pickupInStore',
  };

  @override
  final Iterable<Type> types = const <Type>[DeliveryMethod];
  @override
  final String wireName = 'DeliveryMethod';

  @override
  Object serialize(
    Serializers serializers,
    DeliveryMethod object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeliveryMethod deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeliveryMethod.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
