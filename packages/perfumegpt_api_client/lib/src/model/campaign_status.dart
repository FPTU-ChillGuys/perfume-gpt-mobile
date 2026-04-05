//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum CampaignStatus {
  @JsonValue(r'Upcoming')
  upcoming(r'Upcoming'),
  @JsonValue(r'Active')
  active(r'Active'),
  @JsonValue(r'Paused')
  paused(r'Paused'),
  @JsonValue(r'Completed')
  completed(r'Completed'),
  @JsonValue(r'Cancelled')
  cancelled(r'Cancelled');

  const CampaignStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
