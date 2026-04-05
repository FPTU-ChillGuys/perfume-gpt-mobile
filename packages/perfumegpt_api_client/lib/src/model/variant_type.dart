//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'variant_type.g.dart';

class VariantType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Standard')
  static const VariantType standard = _$standard;
  @BuiltValueEnumConst(wireName: r'FullBox')
  static const VariantType fullBox = _$fullBox;
  @BuiltValueEnumConst(wireName: r'Tester')
  static const VariantType tester = _$tester;
  @BuiltValueEnumConst(wireName: r'Mini')
  static const VariantType mini = _$mini;

  static Serializer<VariantType> get serializer => _$variantTypeSerializer;

  const VariantType._(String name): super(name);

  static BuiltSet<VariantType> get values => _$values;
  static VariantType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class VariantTypeMixin = Object with _$VariantTypeMixin;

