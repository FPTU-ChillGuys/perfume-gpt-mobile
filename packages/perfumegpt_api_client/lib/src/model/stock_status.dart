//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum StockStatus {
      @JsonValue(r'OutOfStock')
      outOfStock(r'OutOfStock'),
      @JsonValue(r'LowStock')
      lowStock(r'LowStock'),
      @JsonValue(r'Normal')
      normal(r'Normal');

  const StockStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
