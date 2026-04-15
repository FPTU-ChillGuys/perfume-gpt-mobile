//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum CashFlowCategory {
      @JsonValue(r'OrderPayment')
      orderPayment(r'OrderPayment'),
      @JsonValue(r'Refund')
      refund(r'Refund'),
      @JsonValue(r'ShippingFeeToGHN')
      shippingFeeToGHN(r'ShippingFeeToGHN'),
      @JsonValue(r'SupplierPayment')
      supplierPayment(r'SupplierPayment');

  const CashFlowCategory(this.value);

  final String value;

  @override
  String toString() => value;
}
