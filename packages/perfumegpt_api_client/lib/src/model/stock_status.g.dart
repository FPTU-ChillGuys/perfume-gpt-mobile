// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StockStatus _$outOfStock = const StockStatus._('outOfStock');
const StockStatus _$lowStock = const StockStatus._('lowStock');
const StockStatus _$normal = const StockStatus._('normal');

StockStatus _$valueOf(String name) {
  switch (name) {
    case 'outOfStock':
      return _$outOfStock;
    case 'lowStock':
      return _$lowStock;
    case 'normal':
      return _$normal;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StockStatus> _$values = BuiltSet<StockStatus>(
  const <StockStatus>[_$outOfStock, _$lowStock, _$normal],
);

class _$StockStatusMeta {
  const _$StockStatusMeta();
  StockStatus get outOfStock => _$outOfStock;
  StockStatus get lowStock => _$lowStock;
  StockStatus get normal => _$normal;
  StockStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<StockStatus> get values => _$values;
}

mixin _$StockStatusMixin {
  // ignore: non_constant_identifier_names
  _$StockStatusMeta get StockStatus => const _$StockStatusMeta();
}

Serializer<StockStatus> _$stockStatusSerializer = _$StockStatusSerializer();

class _$StockStatusSerializer implements PrimitiveSerializer<StockStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'outOfStock': 'OutOfStock',
    'lowStock': 'LowStock',
    'normal': 'Normal',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OutOfStock': 'outOfStock',
    'LowStock': 'lowStock',
    'Normal': 'normal',
  };

  @override
  final Iterable<Type> types = const <Type>[StockStatus];
  @override
  final String wireName = 'StockStatus';

  @override
  Object serialize(
    Serializers serializers,
    StockStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StockStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StockStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
