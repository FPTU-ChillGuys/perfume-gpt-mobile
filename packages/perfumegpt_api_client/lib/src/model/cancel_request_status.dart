//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum CancelRequestStatus {
  @JsonValue(r'Pending')
  pending(r'Pending'),
  @JsonValue(r'Approved')
  approved(r'Approved'),
  @JsonValue(r'Rejected')
  rejected(r'Rejected');

  const CancelRequestStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
