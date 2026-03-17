//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum TransactionStatus {
  @JsonValue(r'Pending')
  pending(r'Pending'),
  @JsonValue(r'Success')
  success(r'Success'),
  @JsonValue(r'Failed')
  failed(r'Failed'),
  @JsonValue(r'Cancelled')
  cancelled(r'Cancelled'),
  @JsonValue(r'Refunded')
  refunded(r'Refunded');

  const TransactionStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
