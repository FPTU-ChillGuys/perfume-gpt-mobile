//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum ShippingStatus {
  @JsonValue(r'Pending')
  pending(r'Pending'),
  @JsonValue(r'Delivering')
  delivering(r'Delivering'),
  @JsonValue(r'Delivered')
  delivered(r'Delivered'),
  @JsonValue(r'Cancelled')
  cancelled(r'Cancelled'),
  @JsonValue(r'Returning')
  returning(r'Returning'),
  @JsonValue(r'Returned')
  returned(r'Returned');

  const ShippingStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
