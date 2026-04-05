// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_request_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReturnRequestStatus _$pending = const ReturnRequestStatus._('pending');
const ReturnRequestStatus _$approvedForReturn = const ReturnRequestStatus._(
  'approvedForReturn',
);
const ReturnRequestStatus _$inspecting = const ReturnRequestStatus._(
  'inspecting',
);
const ReturnRequestStatus _$readyForRefund = const ReturnRequestStatus._(
  'readyForRefund',
);
const ReturnRequestStatus _$completed = const ReturnRequestStatus._(
  'completed',
);
const ReturnRequestStatus _$rejected = const ReturnRequestStatus._('rejected');

ReturnRequestStatus _$valueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pending;
    case 'approvedForReturn':
      return _$approvedForReturn;
    case 'inspecting':
      return _$inspecting;
    case 'readyForRefund':
      return _$readyForRefund;
    case 'completed':
      return _$completed;
    case 'rejected':
      return _$rejected;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ReturnRequestStatus> _$values = BuiltSet<ReturnRequestStatus>(
  const <ReturnRequestStatus>[
    _$pending,
    _$approvedForReturn,
    _$inspecting,
    _$readyForRefund,
    _$completed,
    _$rejected,
  ],
);

class _$ReturnRequestStatusMeta {
  const _$ReturnRequestStatusMeta();
  ReturnRequestStatus get pending => _$pending;
  ReturnRequestStatus get approvedForReturn => _$approvedForReturn;
  ReturnRequestStatus get inspecting => _$inspecting;
  ReturnRequestStatus get readyForRefund => _$readyForRefund;
  ReturnRequestStatus get completed => _$completed;
  ReturnRequestStatus get rejected => _$rejected;
  ReturnRequestStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<ReturnRequestStatus> get values => _$values;
}

mixin _$ReturnRequestStatusMixin {
  // ignore: non_constant_identifier_names
  _$ReturnRequestStatusMeta get ReturnRequestStatus =>
      const _$ReturnRequestStatusMeta();
}

Serializer<ReturnRequestStatus> _$returnRequestStatusSerializer =
    _$ReturnRequestStatusSerializer();

class _$ReturnRequestStatusSerializer
    implements PrimitiveSerializer<ReturnRequestStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'Pending',
    'approvedForReturn': 'ApprovedForReturn',
    'inspecting': 'Inspecting',
    'readyForRefund': 'ReadyForRefund',
    'completed': 'Completed',
    'rejected': 'Rejected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Pending': 'pending',
    'ApprovedForReturn': 'approvedForReturn',
    'Inspecting': 'inspecting',
    'ReadyForRefund': 'readyForRefund',
    'Completed': 'completed',
    'Rejected': 'rejected',
  };

  @override
  final Iterable<Type> types = const <Type>[ReturnRequestStatus];
  @override
  final String wireName = 'ReturnRequestStatus';

  @override
  Object serialize(
    Serializers serializers,
    ReturnRequestStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReturnRequestStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReturnRequestStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
