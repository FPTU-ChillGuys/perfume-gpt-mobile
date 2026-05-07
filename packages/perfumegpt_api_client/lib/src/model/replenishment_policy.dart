//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum ReplenishmentPolicy {
  @JsonValue(r'AutoRestock')
  autoRestock(r'AutoRestock'),
  @JsonValue(r'ManualOnly')
  manualOnly(r'ManualOnly'),
  @JsonValue(r'DoNotRestock')
  doNotRestock(r'DoNotRestock');

  const ReplenishmentPolicy(this.value);

  final String value;

  @override
  String toString() => value;
}
