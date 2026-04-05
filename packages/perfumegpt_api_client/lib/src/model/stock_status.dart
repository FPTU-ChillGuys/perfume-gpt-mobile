//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stock_status.g.dart';

class StockStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'OutOfStock')
  static const StockStatus outOfStock = _$outOfStock;
  @BuiltValueEnumConst(wireName: r'LowStock')
  static const StockStatus lowStock = _$lowStock;
  @BuiltValueEnumConst(wireName: r'Normal')
  static const StockStatus normal = _$normal;

  static Serializer<StockStatus> get serializer => _$stockStatusSerializer;

  const StockStatus._(String name): super(name);

  static BuiltSet<StockStatus> get values => _$values;
  static StockStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class StockStatusMixin = Object with _$StockStatusMixin;

