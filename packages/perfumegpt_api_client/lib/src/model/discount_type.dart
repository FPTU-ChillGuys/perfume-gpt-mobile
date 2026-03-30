//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum DiscountType {
      @JsonValue(r'Percentage')
      percentage(r'Percentage'),
      @JsonValue(r'FixedAmount')
      fixedAmount(r'FixedAmount');

  const DiscountType(this.value);

  final String value;

  @override
  String toString() => value;
}
