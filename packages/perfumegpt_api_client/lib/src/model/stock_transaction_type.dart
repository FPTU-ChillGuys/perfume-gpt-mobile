//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum StockTransactionType {
      @JsonValue(r'Import')
      import_(r'Import'),
      @JsonValue(r'Sales')
      sales(r'Sales'),
      @JsonValue(r'Adjustment')
      adjustment(r'Adjustment');

  const StockTransactionType(this.value);

  final String value;

  @override
  String toString() => value;
}
