// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PromotionType _$clearance = const PromotionType._('clearance');
const PromotionType _$newArrival = const PromotionType._('newArrival');
const PromotionType _$regular = const PromotionType._('regular');

PromotionType _$valueOf(String name) {
  switch (name) {
    case 'clearance':
      return _$clearance;
    case 'newArrival':
      return _$newArrival;
    case 'regular':
      return _$regular;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PromotionType> _$values = BuiltSet<PromotionType>(
  const <PromotionType>[_$clearance, _$newArrival, _$regular],
);

class _$PromotionTypeMeta {
  const _$PromotionTypeMeta();
  PromotionType get clearance => _$clearance;
  PromotionType get newArrival => _$newArrival;
  PromotionType get regular => _$regular;
  PromotionType valueOf(String name) => _$valueOf(name);
  BuiltSet<PromotionType> get values => _$values;
}

mixin _$PromotionTypeMixin {
  // ignore: non_constant_identifier_names
  _$PromotionTypeMeta get PromotionType => const _$PromotionTypeMeta();
}

Serializer<PromotionType> _$promotionTypeSerializer =
    _$PromotionTypeSerializer();

class _$PromotionTypeSerializer implements PrimitiveSerializer<PromotionType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'clearance': 'Clearance',
    'newArrival': 'NewArrival',
    'regular': 'Regular',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Clearance': 'clearance',
    'NewArrival': 'newArrival',
    'Regular': 'regular',
  };

  @override
  final Iterable<Type> types = const <Type>[PromotionType];
  @override
  final String wireName = 'PromotionType';

  @override
  Object serialize(
    Serializers serializers,
    PromotionType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PromotionType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PromotionType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
