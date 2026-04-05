// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VariantType _$standard = const VariantType._('standard');
const VariantType _$fullBox = const VariantType._('fullBox');
const VariantType _$tester = const VariantType._('tester');
const VariantType _$mini = const VariantType._('mini');

VariantType _$valueOf(String name) {
  switch (name) {
    case 'standard':
      return _$standard;
    case 'fullBox':
      return _$fullBox;
    case 'tester':
      return _$tester;
    case 'mini':
      return _$mini;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VariantType> _$values = BuiltSet<VariantType>(
  const <VariantType>[_$standard, _$fullBox, _$tester, _$mini],
);

class _$VariantTypeMeta {
  const _$VariantTypeMeta();
  VariantType get standard => _$standard;
  VariantType get fullBox => _$fullBox;
  VariantType get tester => _$tester;
  VariantType get mini => _$mini;
  VariantType valueOf(String name) => _$valueOf(name);
  BuiltSet<VariantType> get values => _$values;
}

mixin _$VariantTypeMixin {
  // ignore: non_constant_identifier_names
  _$VariantTypeMeta get VariantType => const _$VariantTypeMeta();
}

Serializer<VariantType> _$variantTypeSerializer = _$VariantTypeSerializer();

class _$VariantTypeSerializer implements PrimitiveSerializer<VariantType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'standard': 'Standard',
    'fullBox': 'FullBox',
    'tester': 'Tester',
    'mini': 'Mini',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Standard': 'standard',
    'FullBox': 'fullBox',
    'Tester': 'tester',
    'Mini': 'mini',
  };

  @override
  final Iterable<Type> types = const <Type>[VariantType];
  @override
  final String wireName = 'VariantType';

  @override
  Object serialize(
    Serializers serializers,
    VariantType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  VariantType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => VariantType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
