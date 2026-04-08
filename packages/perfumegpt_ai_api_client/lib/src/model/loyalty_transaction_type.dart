//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum LoyaltyTransactionType {
      @JsonValue(r'Spend')
      spend(r'Spend'),
      @JsonValue(r'Earn')
      earn(r'Earn');

  const LoyaltyTransactionType(this.value);

  final String value;

  @override
  String toString() => value;
}
