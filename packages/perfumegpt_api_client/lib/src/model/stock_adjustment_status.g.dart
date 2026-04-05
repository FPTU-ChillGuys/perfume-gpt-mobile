// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_adjustment_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StockAdjustmentStatus _$pending = const StockAdjustmentStatus._(
  'pending',
);
const StockAdjustmentStatus _$inProgress = const StockAdjustmentStatus._(
  'inProgress',
);
const StockAdjustmentStatus _$completed = const StockAdjustmentStatus._(
  'completed',
);
const StockAdjustmentStatus _$cancelled = const StockAdjustmentStatus._(
  'cancelled',
);

StockAdjustmentStatus _$valueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pending;
    case 'inProgress':
      return _$inProgress;
    case 'completed':
      return _$completed;
    case 'cancelled':
      return _$cancelled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StockAdjustmentStatus> _$values =
    BuiltSet<StockAdjustmentStatus>(const <StockAdjustmentStatus>[
      _$pending,
      _$inProgress,
      _$completed,
      _$cancelled,
    ]);

class _$StockAdjustmentStatusMeta {
  const _$StockAdjustmentStatusMeta();
  StockAdjustmentStatus get pending => _$pending;
  StockAdjustmentStatus get inProgress => _$inProgress;
  StockAdjustmentStatus get completed => _$completed;
  StockAdjustmentStatus get cancelled => _$cancelled;
  StockAdjustmentStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<StockAdjustmentStatus> get values => _$values;
}

mixin _$StockAdjustmentStatusMixin {
  // ignore: non_constant_identifier_names
  _$StockAdjustmentStatusMeta get StockAdjustmentStatus =>
      const _$StockAdjustmentStatusMeta();
}

Serializer<StockAdjustmentStatus> _$stockAdjustmentStatusSerializer =
    _$StockAdjustmentStatusSerializer();

class _$StockAdjustmentStatusSerializer
    implements PrimitiveSerializer<StockAdjustmentStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'Pending',
    'inProgress': 'InProgress',
    'completed': 'Completed',
    'cancelled': 'Cancelled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Pending': 'pending',
    'InProgress': 'inProgress',
    'Completed': 'completed',
    'Cancelled': 'cancelled',
  };

  @override
  final Iterable<Type> types = const <Type>[StockAdjustmentStatus];
  @override
  final String wireName = 'StockAdjustmentStatus';

  @override
  Object serialize(
    Serializers serializers,
    StockAdjustmentStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  StockAdjustmentStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => StockAdjustmentStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
