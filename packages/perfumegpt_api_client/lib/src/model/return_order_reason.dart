//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'return_order_reason.g.dart';

class ReturnOrderReason extends EnumClass {

  @BuiltValueEnumConst(wireName: r'DamagedProduct')
  static const ReturnOrderReason damagedProduct = _$damagedProduct;
  @BuiltValueEnumConst(wireName: r'WrongItemReceived')
  static const ReturnOrderReason wrongItemReceived = _$wrongItemReceived;
  @BuiltValueEnumConst(wireName: r'ItemNotAsDescribed')
  static const ReturnOrderReason itemNotAsDescribed = _$itemNotAsDescribed;
  @BuiltValueEnumConst(wireName: r'ChangedMind')
  static const ReturnOrderReason changedMind = _$changedMind;
  @BuiltValueEnumConst(wireName: r'AllergicReaction')
  static const ReturnOrderReason allergicReaction = _$allergicReaction;

  static Serializer<ReturnOrderReason> get serializer => _$returnOrderReasonSerializer;

  const ReturnOrderReason._(String name): super(name);

  static BuiltSet<ReturnOrderReason> get values => _$values;
  static ReturnOrderReason valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ReturnOrderReasonMixin = Object with _$ReturnOrderReasonMixin;

