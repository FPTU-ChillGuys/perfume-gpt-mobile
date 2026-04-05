// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_order_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReturnOrderReason _$damagedProduct = const ReturnOrderReason._(
  'damagedProduct',
);
const ReturnOrderReason _$wrongItemReceived = const ReturnOrderReason._(
  'wrongItemReceived',
);
const ReturnOrderReason _$itemNotAsDescribed = const ReturnOrderReason._(
  'itemNotAsDescribed',
);
const ReturnOrderReason _$changedMind = const ReturnOrderReason._(
  'changedMind',
);
const ReturnOrderReason _$allergicReaction = const ReturnOrderReason._(
  'allergicReaction',
);

ReturnOrderReason _$valueOf(String name) {
  switch (name) {
    case 'damagedProduct':
      return _$damagedProduct;
    case 'wrongItemReceived':
      return _$wrongItemReceived;
    case 'itemNotAsDescribed':
      return _$itemNotAsDescribed;
    case 'changedMind':
      return _$changedMind;
    case 'allergicReaction':
      return _$allergicReaction;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReturnOrderReason> _$values =
    BuiltSet<ReturnOrderReason>(const <ReturnOrderReason>[
      _$damagedProduct,
      _$wrongItemReceived,
      _$itemNotAsDescribed,
      _$changedMind,
      _$allergicReaction,
    ]);

class _$ReturnOrderReasonMeta {
  const _$ReturnOrderReasonMeta();
  ReturnOrderReason get damagedProduct => _$damagedProduct;
  ReturnOrderReason get wrongItemReceived => _$wrongItemReceived;
  ReturnOrderReason get itemNotAsDescribed => _$itemNotAsDescribed;
  ReturnOrderReason get changedMind => _$changedMind;
  ReturnOrderReason get allergicReaction => _$allergicReaction;
  ReturnOrderReason valueOf(String name) => _$valueOf(name);
  BuiltSet<ReturnOrderReason> get values => _$values;
}

mixin _$ReturnOrderReasonMixin {
  // ignore: non_constant_identifier_names
  _$ReturnOrderReasonMeta get ReturnOrderReason =>
      const _$ReturnOrderReasonMeta();
}

Serializer<ReturnOrderReason> _$returnOrderReasonSerializer =
    _$ReturnOrderReasonSerializer();

class _$ReturnOrderReasonSerializer
    implements PrimitiveSerializer<ReturnOrderReason> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'damagedProduct': 'DamagedProduct',
    'wrongItemReceived': 'WrongItemReceived',
    'itemNotAsDescribed': 'ItemNotAsDescribed',
    'changedMind': 'ChangedMind',
    'allergicReaction': 'AllergicReaction',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DamagedProduct': 'damagedProduct',
    'WrongItemReceived': 'wrongItemReceived',
    'ItemNotAsDescribed': 'itemNotAsDescribed',
    'ChangedMind': 'changedMind',
    'AllergicReaction': 'allergicReaction',
  };

  @override
  final Iterable<Type> types = const <Type>[ReturnOrderReason];
  @override
  final String wireName = 'ReturnOrderReason';

  @override
  Object serialize(
    Serializers serializers,
    ReturnOrderReason object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReturnOrderReason deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReturnOrderReason.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
