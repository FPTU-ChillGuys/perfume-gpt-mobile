// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_adjustment_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StockAdjustmentReason _$damage = const StockAdjustmentReason._('damage');
const StockAdjustmentReason _$expired = const StockAdjustmentReason._(
  'expired',
);
const StockAdjustmentReason _$theft = const StockAdjustmentReason._('theft');
const StockAdjustmentReason _$loss = const StockAdjustmentReason._('loss');
const StockAdjustmentReason _$found = const StockAdjustmentReason._('found');
const StockAdjustmentReason _$correction = const StockAdjustmentReason._(
  'correction',
);
const StockAdjustmentReason _$return_ = const StockAdjustmentReason._(
  'return_',
);
const StockAdjustmentReason _$other = const StockAdjustmentReason._('other');

StockAdjustmentReason _$valueOf(String name) {
  switch (name) {
    case 'damage':
      return _$damage;
    case 'expired':
      return _$expired;
    case 'theft':
      return _$theft;
    case 'loss':
      return _$loss;
    case 'found':
      return _$found;
    case 'correction':
      return _$correction;
    case 'return_':
      return _$return_;
    case 'other':
      return _$other;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StockAdjustmentReason> _$values =
    BuiltSet<StockAdjustmentReason>(const <StockAdjustmentReason>[
      _$damage,
      _$expired,
      _$theft,
      _$loss,
      _$found,
      _$correction,
      _$return_,
      _$other,
    ]);

class _$StockAdjustmentReasonMeta {
  const _$StockAdjustmentReasonMeta();
  StockAdjustmentReason get damage => _$damage;
  StockAdjustmentReason get expired => _$expired;
  StockAdjustmentReason get theft => _$theft;
  StockAdjustmentReason get loss => _$loss;
  StockAdjustmentReason get found => _$found;
  StockAdjustmentReason get correction => _$correction;
  StockAdjustmentReason get return_ => _$return_;
  StockAdjustmentReason get other => _$other;
  StockAdjustmentReason valueOf(String name) => _$valueOf(name);
  BuiltSet<StockAdjustmentReason> get values => _$values;
}

mixin _$StockAdjustmentReasonMixin {
  // ignore: non_constant_identifier_names
  _$StockAdjustmentReasonMeta get StockAdjustmentReason =>
      const _$StockAdjustmentReasonMeta();
}

Serializer<StockAdjustmentReason> _$stockAdjustmentReasonSerializer =
    _$StockAdjustmentReasonSerializer();

class _$StockAdjustmentReasonSerializer
    implements PrimitiveSerializer<StockAdjustmentReason> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'damage': 'Damage',
    'expired': 'Expired',
    'theft': 'Theft',
    'loss': 'Loss',
    'found': 'Found',
    'correction': 'Correction',
    'return_': 'Return',
    'other': 'Other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Damage': 'damage',
    'Expired': 'expired',
    'Theft': 'theft',
    'Loss': 'loss',
    'Found': 'found',
    'Correction': 'correction',
    'Return': 'return_',
    'Other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[StockAdjustmentReason];
  @override
  final String wireName = 'StockAdjustmentReason';

  @override
  Object serialize(
    Serializers serializers,
    StockAdjustmentReason object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StockAdjustmentReason deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StockAdjustmentReason.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
