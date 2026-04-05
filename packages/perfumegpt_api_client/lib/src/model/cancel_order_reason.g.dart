// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_order_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CancelOrderReason _$changedMind = const CancelOrderReason._(
  'changedMind',
);
const CancelOrderReason _$foundBetterPrice = const CancelOrderReason._(
  'foundBetterPrice',
);
const CancelOrderReason _$wrongShippingInformation = const CancelOrderReason._(
  'wrongShippingInformation',
);
const CancelOrderReason _$paymentIssue = const CancelOrderReason._(
  'paymentIssue',
);
const CancelOrderReason _$deliveryTooLate = const CancelOrderReason._(
  'deliveryTooLate',
);
const CancelOrderReason _$insufficientStock = const CancelOrderReason._(
  'insufficientStock',
);

CancelOrderReason _$valueOf(String name) {
  switch (name) {
    case 'changedMind':
      return _$changedMind;
    case 'foundBetterPrice':
      return _$foundBetterPrice;
    case 'wrongShippingInformation':
      return _$wrongShippingInformation;
    case 'paymentIssue':
      return _$paymentIssue;
    case 'deliveryTooLate':
      return _$deliveryTooLate;
    case 'insufficientStock':
      return _$insufficientStock;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CancelOrderReason> _$values =
    BuiltSet<CancelOrderReason>(const <CancelOrderReason>[
      _$changedMind,
      _$foundBetterPrice,
      _$wrongShippingInformation,
      _$paymentIssue,
      _$deliveryTooLate,
      _$insufficientStock,
    ]);

class _$CancelOrderReasonMeta {
  const _$CancelOrderReasonMeta();
  CancelOrderReason get changedMind => _$changedMind;
  CancelOrderReason get foundBetterPrice => _$foundBetterPrice;
  CancelOrderReason get wrongShippingInformation => _$wrongShippingInformation;
  CancelOrderReason get paymentIssue => _$paymentIssue;
  CancelOrderReason get deliveryTooLate => _$deliveryTooLate;
  CancelOrderReason get insufficientStock => _$insufficientStock;
  CancelOrderReason valueOf(String name) => _$valueOf(name);
  BuiltSet<CancelOrderReason> get values => _$values;
}

mixin _$CancelOrderReasonMixin {
  // ignore: non_constant_identifier_names
  _$CancelOrderReasonMeta get CancelOrderReason =>
      const _$CancelOrderReasonMeta();
}

Serializer<CancelOrderReason> _$cancelOrderReasonSerializer =
    _$CancelOrderReasonSerializer();

class _$CancelOrderReasonSerializer
    implements PrimitiveSerializer<CancelOrderReason> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'changedMind': 'ChangedMind',
    'foundBetterPrice': 'FoundBetterPrice',
    'wrongShippingInformation': 'WrongShippingInformation',
    'paymentIssue': 'PaymentIssue',
    'deliveryTooLate': 'DeliveryTooLate',
    'insufficientStock': 'InsufficientStock',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ChangedMind': 'changedMind',
    'FoundBetterPrice': 'foundBetterPrice',
    'WrongShippingInformation': 'wrongShippingInformation',
    'PaymentIssue': 'paymentIssue',
    'DeliveryTooLate': 'deliveryTooLate',
    'InsufficientStock': 'insufficientStock',
  };

  @override
  final Iterable<Type> types = const <Type>[CancelOrderReason];
  @override
  final String wireName = 'CancelOrderReason';

  @override
  Object serialize(
    Serializers serializers,
    CancelOrderReason object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CancelOrderReason deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CancelOrderReason.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
