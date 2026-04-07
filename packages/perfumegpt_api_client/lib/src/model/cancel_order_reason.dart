//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum CancelOrderReason {
      @JsonValue(r'ChangedMind')
      changedMind(r'ChangedMind'),
      @JsonValue(r'FoundBetterPrice')
      foundBetterPrice(r'FoundBetterPrice'),
      @JsonValue(r'WrongShippingInformation')
      wrongShippingInformation(r'WrongShippingInformation'),
      @JsonValue(r'PaymentIssue')
      paymentIssue(r'PaymentIssue'),
      @JsonValue(r'DeliveryTooLate')
      deliveryTooLate(r'DeliveryTooLate'),
      @JsonValue(r'InsufficientStock')
      insufficientStock(r'InsufficientStock');

  const CancelOrderReason(this.value);

  final String value;

  @override
  String toString() => value;
}
