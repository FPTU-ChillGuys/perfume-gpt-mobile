//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shipping_status.g.dart';

class ShippingStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Pending')
  static const ShippingStatus pending = _$pending;
  @BuiltValueEnumConst(wireName: r'Delivering')
  static const ShippingStatus delivering = _$delivering;
  @BuiltValueEnumConst(wireName: r'Delivered')
  static const ShippingStatus delivered = _$delivered;
  @BuiltValueEnumConst(wireName: r'Cancelled')
  static const ShippingStatus cancelled = _$cancelled;
  @BuiltValueEnumConst(wireName: r'Returning')
  static const ShippingStatus returning = _$returning;
  @BuiltValueEnumConst(wireName: r'Returned')
  static const ShippingStatus returned = _$returned;

  static Serializer<ShippingStatus> get serializer => _$shippingStatusSerializer;

  const ShippingStatus._(String name): super(name);

  static BuiltSet<ShippingStatus> get values => _$values;
  static ShippingStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ShippingStatusMixin = Object with _$ShippingStatusMixin;

