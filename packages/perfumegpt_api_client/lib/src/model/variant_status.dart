//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'variant_status.g.dart';

class VariantStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Active')
  static const VariantStatus active = _$active;
  @BuiltValueEnumConst(wireName: r'Inactive')
  static const VariantStatus inactive = _$inactive;
  @BuiltValueEnumConst(wireName: r'Discontinued')
  static const VariantStatus discontinued = _$discontinued;

  static Serializer<VariantStatus> get serializer => _$variantStatusSerializer;

  const VariantStatus._(String name): super(name);

  static BuiltSet<VariantStatus> get values => _$values;
  static VariantStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class VariantStatusMixin = Object with _$VariantStatusMixin;

