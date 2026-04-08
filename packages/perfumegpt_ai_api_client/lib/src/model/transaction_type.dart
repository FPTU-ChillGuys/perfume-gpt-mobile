//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum TransactionType {
      @JsonValue(r'Payment')
      payment(r'Payment'),
      @JsonValue(r'Refund')
      refund(r'Refund');

  const TransactionType(this.value);

  final String value;

  @override
  String toString() => value;
}
