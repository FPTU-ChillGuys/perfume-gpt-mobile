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
      allergicReaction(r'AllergicReaction');

  const ReturnOrderReason(this.value);

  final String value;

  @override
  String toString() => value;
}
