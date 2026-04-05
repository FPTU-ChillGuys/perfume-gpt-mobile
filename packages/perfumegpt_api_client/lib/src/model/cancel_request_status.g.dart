// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_request_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CancelRequestStatus _$pending = const CancelRequestStatus._('pending');
const CancelRequestStatus _$approved = const CancelRequestStatus._('approved');
const CancelRequestStatus _$rejected = const CancelRequestStatus._('rejected');

CancelRequestStatus _$valueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pending;
    case 'approved':
      return _$approved;
    case 'rejected':
      return _$rejected;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CancelRequestStatus> _$values = BuiltSet<CancelRequestStatus>(
  const <CancelRequestStatus>[_$pending, _$approved, _$rejected],
);

class _$CancelRequestStatusMeta {
  const _$CancelRequestStatusMeta();
  CancelRequestStatus get pending => _$pending;
  CancelRequestStatus get approved => _$approved;
  CancelRequestStatus get rejected => _$rejected;
  CancelRequestStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<CancelRequestStatus> get values => _$values;
}

mixin _$CancelRequestStatusMixin {
  // ignore: non_constant_identifier_names
  _$CancelRequestStatusMeta get CancelRequestStatus =>
      const _$CancelRequestStatusMeta();
}

Serializer<CancelRequestStatus> _$cancelRequestStatusSerializer =
    _$CancelRequestStatusSerializer();

class _$CancelRequestStatusSerializer
    implements PrimitiveSerializer<CancelRequestStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'Pending',
    'approved': 'Approved',
    'rejected': 'Rejected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Pending': 'pending',
    'Approved': 'approved',
    'Rejected': 'rejected',
  };

  @override
  final Iterable<Type> types = const <Type>[CancelRequestStatus];
  @override
  final String wireName = 'CancelRequestStatus';

  @override
  Object serialize(
    Serializers serializers,
    CancelRequestStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CancelRequestStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CancelRequestStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
