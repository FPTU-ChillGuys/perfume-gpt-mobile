//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum OrderStatus {
  @JsonValue(r'Pending')
  pending(r'Pending'),
  @JsonValue(r'Preparing')
  preparing(r'Preparing'),
  @JsonValue(r'ReadyToPick')
  readyToPick(r'ReadyToPick'),
  @JsonValue(r'Delivering')
  delivering(r'Delivering'),
  @JsonValue(r'Delivered')
  delivered(r'Delivered'),
  @JsonValue(r'Returning')
  returning(r'Returning'),
  @JsonValue(r'Cancelled')
  cancelled(r'Cancelled'),
  @JsonValue(r'Partial_Returned')
  partialReturned(r'Partial_Returned'),
  @JsonValue(r'Returned')
  returned(r'Returned');

  const OrderStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
