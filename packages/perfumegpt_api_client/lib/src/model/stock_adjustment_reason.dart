//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum StockAdjustmentReason {
  @JsonValue(r'Damage')
  damage(r'Damage'),
  @JsonValue(r'Expired')
  expired(r'Expired'),
  @JsonValue(r'Theft')
  theft(r'Theft'),
  @JsonValue(r'Loss')
  loss(r'Loss'),
  @JsonValue(r'Found')
  found(r'Found'),
  @JsonValue(r'Correction')
  correction(r'Correction'),
  @JsonValue(r'Return')
  return_(r'Return'),
  @JsonValue(r'Other')
  other(r'Other');

  const StockAdjustmentReason(this.value);

  final String value;

  @override
  String toString() => value;
}
