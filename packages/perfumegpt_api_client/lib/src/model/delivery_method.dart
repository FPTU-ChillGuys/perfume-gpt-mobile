//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum DeliveryMethod {
  @JsonValue(r'Delivery')
  delivery(r'Delivery'),
  @JsonValue(r'PickupInStore')
  pickupInStore(r'PickupInStore');

  const DeliveryMethod(this.value);

  final String value;

  @override
  String toString() => value;
}
