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
  insufficientStock(r'InsufficientStock'),
  @JsonValue(r'CustomerRequested')
  customerRequested(r'CustomerRequested'),
  @JsonValue(r'SuspectedFraud')
  suspectedFraud(r'SuspectedFraud'),
  @JsonValue(r'UnreachableCustomer')
  unreachableCustomer(r'UnreachableCustomer'),
  @JsonValue(r'PaymentTimeout')
  paymentTimeout(r'PaymentTimeout'),
  @JsonValue(r'PricingOrSystemError')
  pricingOrSystemError(r'PricingOrSystemError'),
  @JsonValue(r'DamagedOrDefectiveStock')
  damagedOrDefectiveStock(r'DamagedOrDefectiveStock'),
  @JsonValue(r'OutOfServiceArea')
  outOfServiceArea(r'OutOfServiceArea'),
  @JsonValue(r'Other')
  other(r'Other');

  const CancelOrderReason(this.value);

  final String value;

  @override
  String toString() => value;
}
