//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ReturnOrderReason {
      @JsonValue(r'DamagedProduct')
      damagedProduct(r'DamagedProduct'),
      @JsonValue(r'WrongItemReceived')
      wrongItemReceived(r'WrongItemReceived'),
      @JsonValue(r'ItemNotAsDescribed')
      itemNotAsDescribed(r'ItemNotAsDescribed'),
      @JsonValue(r'ChangedMind')
      changedMind(r'ChangedMind'),
      @JsonValue(r'AllergicReaction')
      allergicReaction(r'AllergicReaction'),
      @JsonValue(r'InsufficientStock')
      insufficientStock(r'InsufficientStock'),
      @JsonValue(r'ReturnPeriodExpired')
      returnPeriodExpired(r'ReturnPeriodExpired'),
      @JsonValue(r'ProductUsedOrUnsealed')
      productUsedOrUnsealed(r'ProductUsedOrUnsealed'),
      @JsonValue(r'CustomerDamage')
      customerDamage(r'CustomerDamage'),
      @JsonValue(r'InsufficientEvidence')
      insufficientEvidence(r'InsufficientEvidence'),
      @JsonValue(r'MissingAccessories')
      missingAccessories(r'MissingAccessories'),
      @JsonValue(r'NonReturnableItem')
      nonReturnableItem(r'NonReturnableItem'),
      @JsonValue(r'SuspectedFraud')
      suspectedFraud(r'SuspectedFraud'),
      @JsonValue(r'Other')
      other(r'Other');

  const ReturnOrderReason(this.value);

  final String value;

  @override
  String toString() => value;
}
