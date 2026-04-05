//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel_order_reason.g.dart';

class CancelOrderReason extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ChangedMind')
  static const CancelOrderReason changedMind = _$changedMind;
  @BuiltValueEnumConst(wireName: r'FoundBetterPrice')
  static const CancelOrderReason foundBetterPrice = _$foundBetterPrice;
  @BuiltValueEnumConst(wireName: r'WrongShippingInformation')
  static const CancelOrderReason wrongShippingInformation = _$wrongShippingInformation;
  @BuiltValueEnumConst(wireName: r'PaymentIssue')
  static const CancelOrderReason paymentIssue = _$paymentIssue;
  @BuiltValueEnumConst(wireName: r'DeliveryTooLate')
  static const CancelOrderReason deliveryTooLate = _$deliveryTooLate;
  @BuiltValueEnumConst(wireName: r'InsufficientStock')
  static const CancelOrderReason insufficientStock = _$insufficientStock;

  static Serializer<CancelOrderReason> get serializer => _$cancelOrderReasonSerializer;

  const CancelOrderReason._(String name): super(name);

  static BuiltSet<CancelOrderReason> get values => _$values;
  static CancelOrderReason valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CancelOrderReasonMixin = Object with _$CancelOrderReasonMixin;

