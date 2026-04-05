// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_transaction_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LoyaltyTransactionType _$spend = const LoyaltyTransactionType._('spend');
const LoyaltyTransactionType _$earn = const LoyaltyTransactionType._('earn');

LoyaltyTransactionType _$valueOf(String name) {
  switch (name) {
    case 'spend':
      return _$spend;
    case 'earn':
      return _$earn;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LoyaltyTransactionType> _$values =
    BuiltSet<LoyaltyTransactionType>(const <LoyaltyTransactionType>[
      _$spend,
      _$earn,
    ]);

class _$LoyaltyTransactionTypeMeta {
  const _$LoyaltyTransactionTypeMeta();
  LoyaltyTransactionType get spend => _$spend;
  LoyaltyTransactionType get earn => _$earn;
  LoyaltyTransactionType valueOf(String name) => _$valueOf(name);
  BuiltSet<LoyaltyTransactionType> get values => _$values;
}

mixin _$LoyaltyTransactionTypeMixin {
  // ignore: non_constant_identifier_names
  _$LoyaltyTransactionTypeMeta get LoyaltyTransactionType =>
      const _$LoyaltyTransactionTypeMeta();
}

Serializer<LoyaltyTransactionType> _$loyaltyTransactionTypeSerializer =
    _$LoyaltyTransactionTypeSerializer();

class _$LoyaltyTransactionTypeSerializer
    implements PrimitiveSerializer<LoyaltyTransactionType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'spend': 'Spend',
    'earn': 'Earn',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Spend': 'spend',
    'Earn': 'earn',
  };

  @override
  final Iterable<Type> types = const <Type>[LoyaltyTransactionType];
  @override
  final String wireName = 'LoyaltyTransactionType';

  @override
  Object serialize(
    Serializers serializers,
    LoyaltyTransactionType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LoyaltyTransactionType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LoyaltyTransactionType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
