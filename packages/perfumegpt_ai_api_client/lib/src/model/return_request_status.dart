//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ReturnRequestStatus {
      @JsonValue(r'Pending')
      pending(r'Pending'),
      @JsonValue(r'ApprovedForReturn')
      approvedForReturn(r'ApprovedForReturn'),
      @JsonValue(r'Inspecting')
      inspecting(r'Inspecting'),
      @JsonValue(r'ReadyForRefund')
      readyForRefund(r'ReadyForRefund'),
      @JsonValue(r'Completed')
      completed(r'Completed'),
      @JsonValue(r'Rejected')
      rejected(r'Rejected'),
      @JsonValue(r'RequestMoreInfo')
      requestMoreInfo(r'RequestMoreInfo');

  const ReturnRequestStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
