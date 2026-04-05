//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'voucher_type.g.dart';

class VoucherType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Order')
  static const VoucherType order = _$order;
  @BuiltValueEnumConst(wireName: r'Product')
  static const VoucherType product = _$product;

  static Serializer<VoucherType> get serializer => _$voucherTypeSerializer;

  const VoucherType._(String name): super(name);

  static BuiltSet<VoucherType> get values => _$values;
  static VoucherType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class VoucherTypeMixin = Object with _$VoucherTypeMixin;

