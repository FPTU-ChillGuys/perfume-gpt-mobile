//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum PaymentMethod {
      @JsonValue(r'CashOnDelivery')
      cashOnDelivery(r'CashOnDelivery'),
      @JsonValue(r'VnPay')
      vnPay(r'VnPay'),
      @JsonValue(r'Momo')
      momo(r'Momo'),
      @JsonValue(r'CashInStore')
      cashInStore(r'CashInStore'),
      @JsonValue(r'ExternalBankTransfer')
      externalBankTransfer(r'ExternalBankTransfer');

  const PaymentMethod(this.value);

  final String value;

  @override
  String toString() => value;
}
