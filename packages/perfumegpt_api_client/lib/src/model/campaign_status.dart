//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'campaign_status.g.dart';

class CampaignStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Upcoming')
  static const CampaignStatus upcoming = _$upcoming;
  @BuiltValueEnumConst(wireName: r'Active')
  static const CampaignStatus active = _$active;
  @BuiltValueEnumConst(wireName: r'Paused')
  static const CampaignStatus paused = _$paused;
  @BuiltValueEnumConst(wireName: r'Completed')
  static const CampaignStatus completed = _$completed;
  @BuiltValueEnumConst(wireName: r'Cancelled')
  static const CampaignStatus cancelled = _$cancelled;

  static Serializer<CampaignStatus> get serializer => _$campaignStatusSerializer;

  const CampaignStatus._(String name): super(name);

  static BuiltSet<CampaignStatus> get values => _$values;
  static CampaignStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CampaignStatusMixin = Object with _$CampaignStatusMixin;

