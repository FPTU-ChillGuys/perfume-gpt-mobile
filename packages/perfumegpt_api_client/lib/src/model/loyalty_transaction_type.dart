//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'loyalty_transaction_type.g.dart';

class LoyaltyTransactionType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Spend')
  static const LoyaltyTransactionType spend = _$spend;
  @BuiltValueEnumConst(wireName: r'Earn')
  static const LoyaltyTransactionType earn = _$earn;

  static Serializer<LoyaltyTransactionType> get serializer => _$loyaltyTransactionTypeSerializer;

  const LoyaltyTransactionType._(String name): super(name);

  static BuiltSet<LoyaltyTransactionType> get values => _$values;
  static LoyaltyTransactionType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class LoyaltyTransactionTypeMixin = Object with _$LoyaltyTransactionTypeMixin;

