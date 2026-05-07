//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum NotificationType {
  @JsonValue(r'Info')
  info(r'Info'),
  @JsonValue(r'Warning')
  warning(r'Warning'),
  @JsonValue(r'Error')
  error(r'Error'),
  @JsonValue(r'Success')
  success(r'Success'),
  @JsonValue(r'Promotional')
  promotional(r'Promotional');

  const NotificationType(this.value);

  final String value;

  @override
  String toString() => value;
}
