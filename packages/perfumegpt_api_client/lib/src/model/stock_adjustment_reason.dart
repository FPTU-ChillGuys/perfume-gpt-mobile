//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stock_adjustment_reason.g.dart';

class StockAdjustmentReason extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Damage')
  static const StockAdjustmentReason damage = _$damage;
  @BuiltValueEnumConst(wireName: r'Expired')
  static const StockAdjustmentReason expired = _$expired;
  @BuiltValueEnumConst(wireName: r'Theft')
  static const StockAdjustmentReason theft = _$theft;
  @BuiltValueEnumConst(wireName: r'Loss')
  static const StockAdjustmentReason loss = _$loss;
  @BuiltValueEnumConst(wireName: r'Found')
  static const StockAdjustmentReason found = _$found;
  @BuiltValueEnumConst(wireName: r'Correction')
  static const StockAdjustmentReason correction = _$correction;
  @BuiltValueEnumConst(wireName: r'Return')
  static const StockAdjustmentReason return_ = _$return_;
  @BuiltValueEnumConst(wireName: r'Other')
  static const StockAdjustmentReason other = _$other;

  static Serializer<StockAdjustmentReason> get serializer => _$stockAdjustmentReasonSerializer;

  const StockAdjustmentReason._(String name): super(name);

  static BuiltSet<StockAdjustmentReason> get values => _$values;
  static StockAdjustmentReason valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class StockAdjustmentReasonMixin = Object with _$StockAdjustmentReasonMixin;

