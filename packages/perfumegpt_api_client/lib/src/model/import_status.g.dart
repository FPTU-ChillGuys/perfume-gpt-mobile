// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImportStatus _$pending = const ImportStatus._('pending');
const ImportStatus _$inProgress = const ImportStatus._('inProgress');
const ImportStatus _$completed = const ImportStatus._('completed');
const ImportStatus _$cancelled = const ImportStatus._('cancelled');

ImportStatus _$valueOf(String name) {
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

final BuiltSet<ImportStatus> _$values = BuiltSet<ImportStatus>(
  const <ImportStatus>[_$pending, _$inProgress, _$completed, _$cancelled],
);

class _$ImportStatusMeta {
  const _$ImportStatusMeta();
  ImportStatus get pending => _$pending;
  ImportStatus get inProgress => _$inProgress;
  ImportStatus get completed => _$completed;
  ImportStatus get cancelled => _$cancelled;
  ImportStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<ImportStatus> get values => _$values;
}

mixin _$ImportStatusMixin {
  // ignore: non_constant_identifier_names
  _$ImportStatusMeta get ImportStatus => const _$ImportStatusMeta();
}

Serializer<ImportStatus> _$importStatusSerializer = _$ImportStatusSerializer();

class _$ImportStatusSerializer implements PrimitiveSerializer<ImportStatus> {
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
  final Iterable<Type> types = const <Type>[ImportStatus];
  @override
  final String wireName = 'ImportStatus';

  @override
  Object serialize(
    Serializers serializers,
    ImportStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ImportStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ImportStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
