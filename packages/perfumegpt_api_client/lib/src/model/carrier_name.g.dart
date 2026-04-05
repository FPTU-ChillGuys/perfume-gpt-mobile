// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrier_name.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CarrierName _$GHN = const CarrierName._('GHN');
const CarrierName _$GHTK = const CarrierName._('GHTK');

CarrierName _$valueOf(String name) {
  switch (name) {
    case 'GHN':
      return _$GHN;
    case 'GHTK':
      return _$GHTK;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CarrierName> _$values = BuiltSet<CarrierName>(
  const <CarrierName>[_$GHN, _$GHTK],
);

class _$CarrierNameMeta {
  const _$CarrierNameMeta();
  CarrierName get GHN => _$GHN;
  CarrierName get GHTK => _$GHTK;
  CarrierName valueOf(String name) => _$valueOf(name);
  BuiltSet<CarrierName> get values => _$values;
}

mixin _$CarrierNameMixin {
  // ignore: non_constant_identifier_names
  _$CarrierNameMeta get CarrierName => const _$CarrierNameMeta();
}

Serializer<CarrierName> _$carrierNameSerializer = _$CarrierNameSerializer();

class _$CarrierNameSerializer implements PrimitiveSerializer<CarrierName> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'GHN': 'GHN',
    'GHTK': 'GHTK',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GHN': 'GHN',
    'GHTK': 'GHTK',
  };

  @override
  final Iterable<Type> types = const <Type>[CarrierName];
  @override
  final String wireName = 'CarrierName';

  @override
  Object serialize(
    Serializers serializers,
    CarrierName object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CarrierName deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CarrierName.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
