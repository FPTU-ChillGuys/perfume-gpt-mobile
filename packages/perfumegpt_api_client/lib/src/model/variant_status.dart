//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum VariantStatus {
  @JsonValue(r'Active')
  active(r'Active'),
  @JsonValue(r'Inactive')
  inactive(r'Inactive'),
  @JsonValue(r'Discontinued')
  discontinued(r'Discontinued'),
  @JsonValue(r'out_of_stock')
  outOfStock(r'out_of_stock');

  const VariantStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
