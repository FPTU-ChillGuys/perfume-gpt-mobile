//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum StockAdjustmentStatus {
      @JsonValue(r'Pending')
      pending(r'Pending'),
      @JsonValue(r'InProgress')
      inProgress(r'InProgress'),
      @JsonValue(r'Completed')
      completed(r'Completed'),
      @JsonValue(r'Canceled')
      canceled(r'Canceled');

  const StockAdjustmentStatus(this.value);

  final String value;

  @override
  String toString() => value;
}
