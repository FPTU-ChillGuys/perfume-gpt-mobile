//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum OrderType {
  @JsonValue(r'Online')
  online(r'Online'),
  @JsonValue(r'Offline')
  offline(r'Offline'),
  @JsonValue(r'Shoppe')
  shoppe(r'Shoppe');

  const OrderType(this.value);

  final String value;

  @override
  String toString() => value;
}
