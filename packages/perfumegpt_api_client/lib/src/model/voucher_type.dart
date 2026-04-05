//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum VoucherType {
  @JsonValue(r'Order')
  order(r'Order'),
  @JsonValue(r'Product')
  product(r'Product');

  const VoucherType(this.value);

  final String value;

  @override
  String toString() => value;
}
