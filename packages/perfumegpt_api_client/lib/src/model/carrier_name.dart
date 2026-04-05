//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'carrier_name.g.dart';

class CarrierName extends EnumClass {

  @BuiltValueEnumConst(wireName: r'GHN')
  static const CarrierName GHN = _$GHN;
  @BuiltValueEnumConst(wireName: r'GHTK')
  static const CarrierName GHTK = _$GHTK;

  static Serializer<CarrierName> get serializer => _$carrierNameSerializer;

  const CarrierName._(String name): super(name);

  static BuiltSet<CarrierName> get values => _$values;
  static CarrierName valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CarrierNameMixin = Object with _$CarrierNameMixin;

