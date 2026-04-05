//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum PromotionType {
  @JsonValue(r'Clearance')
  clearance(r'Clearance'),
  @JsonValue(r'NewArrival')
  newArrival(r'NewArrival'),
  @JsonValue(r'Regular')
  regular(r'Regular');

  const PromotionType(this.value);

  final String value;

  @override
  String toString() => value;
}
