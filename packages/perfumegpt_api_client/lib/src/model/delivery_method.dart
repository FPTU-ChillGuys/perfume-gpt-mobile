//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_method.g.dart';

class DeliveryMethod extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Delivery')
  static const DeliveryMethod delivery = _$delivery;
  @BuiltValueEnumConst(wireName: r'PickupInStore')
  static const DeliveryMethod pickupInStore = _$pickupInStore;

  static Serializer<DeliveryMethod> get serializer => _$deliveryMethodSerializer;

  const DeliveryMethod._(String name): super(name);

  static BuiltSet<DeliveryMethod> get values => _$values;
  static DeliveryMethod valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DeliveryMethodMixin = Object with _$DeliveryMethodMixin;

