//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum PaymentStatus {
      @JsonValue(r'Unpaid')
      unpaid(r'Unpaid'),
      @JsonValue(r'PartialPaid')
      partialPaid(r'PartialPaid'),
      @JsonValue(r'Paid')
      paid(r'Paid'),
      @JsonValue(r'Refunded')
      refunded(r'Refunded'),
      @JsonValue(r'PartialRefunded')
      partialRefunded(r'PartialRefunded');

  const PaymentStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
