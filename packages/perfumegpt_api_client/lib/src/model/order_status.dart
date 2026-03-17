//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum OrderStatus {
  @JsonValue(r'Pending')
  pending(r'Pending'),
  @JsonValue(r'Processing')
  processing(r'Processing'),
  @JsonValue(r'Delivering')
  delivering(r'Delivering'),
  @JsonValue(r'Delivered')
  delivered(r'Delivered'),
  @JsonValue(r'Canceled')
  canceled(r'Canceled'),
  @JsonValue(r'Returned')
  returned(r'Returned');

  const OrderStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
