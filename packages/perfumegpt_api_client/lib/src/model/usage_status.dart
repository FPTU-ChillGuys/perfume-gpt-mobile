//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum UsageStatus {
      @JsonValue(r'Available')
      available(r'Available'),
      @JsonValue(r'Reserved')
      reserved(r'Reserved'),
      @JsonValue(r'Used')
      used(r'Used');

  const UsageStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
