//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum NotifiReferecneType {
      @JsonValue(r'Order')
      order(r'Order'),
      @JsonValue(r'OrderCancelRequest')
      orderCancelRequest(r'OrderCancelRequest'),
      @JsonValue(r'OrderReturnRequest')
      orderReturnRequest(r'OrderReturnRequest'),
      @JsonValue(r'ImportTicket')
      importTicket(r'ImportTicket'),
      @JsonValue(r'Adjustment')
      adjustment(r'Adjustment');

  const NotifiReferecneType(this.value);

  final String value;

  @override
  String toString() => value;
}
