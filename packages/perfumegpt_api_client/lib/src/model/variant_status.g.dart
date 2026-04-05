// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VariantStatus _$active = const VariantStatus._('active');
const VariantStatus _$inactive = const VariantStatus._('inactive');
const VariantStatus _$discontinued = const VariantStatus._('discontinued');

VariantStatus _$valueOf(String name) {
  switch (name) {
    case 'active':
      return _$active;
    case 'inactive':
      return _$inactive;
    case 'discontinued':
      return _$discontinued;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VariantStatus> _$values = BuiltSet<VariantStatus>(
  const <VariantStatus>[_$active, _$inactive, _$discontinued],
);

class _$VariantStatusMeta {
  const _$VariantStatusMeta();
  VariantStatus get active => _$active;
  VariantStatus get inactive => _$inactive;
  VariantStatus get discontinued => _$discontinued;
  VariantStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<VariantStatus> get values => _$values;
}

mixin _$VariantStatusMixin {
  // ignore: non_constant_identifier_names
  _$VariantStatusMeta get VariantStatus => const _$VariantStatusMeta();
}

Serializer<VariantStatus> _$variantStatusSerializer =
    _$VariantStatusSerializer();

class _$VariantStatusSerializer implements PrimitiveSerializer<VariantStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'Active',
    'inactive': 'Inactive',
    'discontinued': 'Discontinued',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Active': 'active',
    'Inactive': 'inactive',
    'Discontinued': 'discontinued',
  };

  @override
  final Iterable<Type> types = const <Type>[VariantStatus];
  @override
  final String wireName = 'VariantStatus';

  @override
  Object serialize(
    Serializers serializers,
    VariantStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  VariantStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => VariantStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
