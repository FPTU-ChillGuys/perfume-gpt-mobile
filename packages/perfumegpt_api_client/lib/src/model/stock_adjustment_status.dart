//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stock_adjustment_status.g.dart';

class StockAdjustmentStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Pending')
  static const StockAdjustmentStatus pending = _$pending;
  @BuiltValueEnumConst(wireName: r'InProgress')
  static const StockAdjustmentStatus inProgress = _$inProgress;
  @BuiltValueEnumConst(wireName: r'Completed')
  static const StockAdjustmentStatus completed = _$completed;
  @BuiltValueEnumConst(wireName: r'Cancelled')
  static const StockAdjustmentStatus cancelled = _$cancelled;

  static Serializer<StockAdjustmentStatus> get serializer => _$stockAdjustmentStatusSerializer;

  const StockAdjustmentStatus._(String name): super(name);

  static BuiltSet<StockAdjustmentStatus> get values => _$values;
  static StockAdjustmentStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class StockAdjustmentStatusMixin = Object with _$StockAdjustmentStatusMixin;

