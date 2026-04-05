// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VoucherType _$order = const VoucherType._('order');
const VoucherType _$product = const VoucherType._('product');

VoucherType _$valueOf(String name) {
  switch (name) {
    case 'order':
      return _$order;
    case 'product':
      return _$product;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VoucherType> _$values = BuiltSet<VoucherType>(
  const <VoucherType>[_$order, _$product],
);

class _$VoucherTypeMeta {
  const _$VoucherTypeMeta();
  VoucherType get order => _$order;
  VoucherType get product => _$product;
  VoucherType valueOf(String name) => _$valueOf(name);
  BuiltSet<VoucherType> get values => _$values;
}

mixin _$VoucherTypeMixin {
  // ignore: non_constant_identifier_names
  _$VoucherTypeMeta get VoucherType => const _$VoucherTypeMeta();
}

Serializer<VoucherType> _$voucherTypeSerializer = _$VoucherTypeSerializer();

class _$VoucherTypeSerializer implements PrimitiveSerializer<VoucherType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'order': 'Order',
    'product': 'Product',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Order': 'order',
    'Product': 'product',
  };

  @override
  final Iterable<Type> types = const <Type>[VoucherType];
  @override
  final String wireName = 'VoucherType';

  @override
  Object serialize(
    Serializers serializers,
    VoucherType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  VoucherType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => VoucherType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
