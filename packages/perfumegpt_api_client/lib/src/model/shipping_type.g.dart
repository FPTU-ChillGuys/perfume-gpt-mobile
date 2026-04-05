// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ShippingType _$forward = const ShippingType._('forward');
const ShippingType _$return_ = const ShippingType._('return_');

ShippingType _$valueOf(String name) {
  switch (name) {
    case 'forward':
      return _$forward;
    case 'return_':
      return _$return_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ShippingType> _$values = BuiltSet<ShippingType>(
  const <ShippingType>[_$forward, _$return_],
);

class _$ShippingTypeMeta {
  const _$ShippingTypeMeta();
  ShippingType get forward => _$forward;
  ShippingType get return_ => _$return_;
  ShippingType valueOf(String name) => _$valueOf(name);
  BuiltSet<ShippingType> get values => _$values;
}

mixin _$ShippingTypeMixin {
  // ignore: non_constant_identifier_names
  _$ShippingTypeMeta get ShippingType => const _$ShippingTypeMeta();
}

Serializer<ShippingType> _$shippingTypeSerializer = _$ShippingTypeSerializer();

class _$ShippingTypeSerializer implements PrimitiveSerializer<ShippingType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'forward': 'Forward',
    'return_': 'Return',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Forward': 'forward',
    'Return': 'return_',
  };

  @override
  final Iterable<Type> types = const <Type>[ShippingType];
  @override
  final String wireName = 'ShippingType';

  @override
  Object serialize(
    Serializers serializers,
    ShippingType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ShippingType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ShippingType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
