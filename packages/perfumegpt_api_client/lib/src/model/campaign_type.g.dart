// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CampaignType _$flashSale = const CampaignType._('flashSale');
const CampaignType _$clearance = const CampaignType._('clearance');

CampaignType _$valueOf(String name) {
  switch (name) {
    case 'flashSale':
      return _$flashSale;
    case 'clearance':
      return _$clearance;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CampaignType> _$values = BuiltSet<CampaignType>(
  const <CampaignType>[_$flashSale, _$clearance],
);

class _$CampaignTypeMeta {
  const _$CampaignTypeMeta();
  CampaignType get flashSale => _$flashSale;
  CampaignType get clearance => _$clearance;
  CampaignType valueOf(String name) => _$valueOf(name);
  BuiltSet<CampaignType> get values => _$values;
}

mixin _$CampaignTypeMixin {
  // ignore: non_constant_identifier_names
  _$CampaignTypeMeta get CampaignType => const _$CampaignTypeMeta();
}

Serializer<CampaignType> _$campaignTypeSerializer = _$CampaignTypeSerializer();

class _$CampaignTypeSerializer implements PrimitiveSerializer<CampaignType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'flashSale': 'FlashSale',
    'clearance': 'Clearance',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FlashSale': 'flashSale',
    'Clearance': 'clearance',
  };

  @override
  final Iterable<Type> types = const <Type>[CampaignType];
  @override
  final String wireName = 'CampaignType';

  @override
  Object serialize(
    Serializers serializers,
    CampaignType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CampaignType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CampaignType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
