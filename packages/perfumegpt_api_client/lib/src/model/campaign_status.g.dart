// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CampaignStatus _$upcoming = const CampaignStatus._('upcoming');
const CampaignStatus _$active = const CampaignStatus._('active');
const CampaignStatus _$paused = const CampaignStatus._('paused');
const CampaignStatus _$completed = const CampaignStatus._('completed');
const CampaignStatus _$cancelled = const CampaignStatus._('cancelled');

CampaignStatus _$valueOf(String name) {
  switch (name) {
    case 'upcoming':
      return _$upcoming;
    case 'active':
      return _$active;
    case 'paused':
      return _$paused;
    case 'completed':
      return _$completed;
    case 'cancelled':
      return _$cancelled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CampaignStatus> _$values = BuiltSet<CampaignStatus>(
  const <CampaignStatus>[
    _$upcoming,
    _$active,
    _$paused,
    _$completed,
    _$cancelled,
  ],
);

class _$CampaignStatusMeta {
  const _$CampaignStatusMeta();
  CampaignStatus get upcoming => _$upcoming;
  CampaignStatus get active => _$active;
  CampaignStatus get paused => _$paused;
  CampaignStatus get completed => _$completed;
  CampaignStatus get cancelled => _$cancelled;
  CampaignStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<CampaignStatus> get values => _$values;
}

mixin _$CampaignStatusMixin {
  // ignore: non_constant_identifier_names
  _$CampaignStatusMeta get CampaignStatus => const _$CampaignStatusMeta();
}

Serializer<CampaignStatus> _$campaignStatusSerializer =
    _$CampaignStatusSerializer();

class _$CampaignStatusSerializer
    implements PrimitiveSerializer<CampaignStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'upcoming': 'Upcoming',
    'active': 'Active',
    'paused': 'Paused',
    'completed': 'Completed',
    'cancelled': 'Cancelled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Upcoming': 'upcoming',
    'Active': 'active',
    'Paused': 'paused',
    'Completed': 'completed',
    'Cancelled': 'cancelled',
  };

  @override
  final Iterable<Type> types = const <Type>[CampaignStatus];
  @override
  final String wireName = 'CampaignStatus';

  @override
  Object serialize(
    Serializers serializers,
    CampaignStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CampaignStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CampaignStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
