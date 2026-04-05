//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'loyalty_transaction_totals_response.g.dart';

/// LoyaltyTransactionTotalsResponse
///
/// Properties:
/// * [userId] 
/// * [totalEarnedPoints] 
/// * [totalSpentPoints] 
/// * [pointBalance] 
/// * [totalTransactions] 
@BuiltValue()
abstract class LoyaltyTransactionTotalsResponse implements Built<LoyaltyTransactionTotalsResponse, LoyaltyTransactionTotalsResponseBuilder> {
  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'totalEarnedPoints')
  int? get totalEarnedPoints;

  @BuiltValueField(wireName: r'totalSpentPoints')
  int? get totalSpentPoints;

  @BuiltValueField(wireName: r'pointBalance')
  int? get pointBalance;

  @BuiltValueField(wireName: r'totalTransactions')
  int? get totalTransactions;

  LoyaltyTransactionTotalsResponse._();

  factory LoyaltyTransactionTotalsResponse([void updates(LoyaltyTransactionTotalsResponseBuilder b)]) = _$LoyaltyTransactionTotalsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoyaltyTransactionTotalsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoyaltyTransactionTotalsResponse> get serializer => _$LoyaltyTransactionTotalsResponseSerializer();
}

class _$LoyaltyTransactionTotalsResponseSerializer implements PrimitiveSerializer<LoyaltyTransactionTotalsResponse> {
  @override
  final Iterable<Type> types = const [LoyaltyTransactionTotalsResponse, _$LoyaltyTransactionTotalsResponse];

  @override
  final String wireName = r'LoyaltyTransactionTotalsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoyaltyTransactionTotalsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalEarnedPoints != null) {
      yield r'totalEarnedPoints';
      yield serializers.serialize(
        object.totalEarnedPoints,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalSpentPoints != null) {
      yield r'totalSpentPoints';
      yield serializers.serialize(
        object.totalSpentPoints,
        specifiedType: const FullType(int),
      );
    }
    if (object.pointBalance != null) {
      yield r'pointBalance';
      yield serializers.serialize(
        object.pointBalance,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalTransactions != null) {
      yield r'totalTransactions';
      yield serializers.serialize(
        object.totalTransactions,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LoyaltyTransactionTotalsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LoyaltyTransactionTotalsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'totalEarnedPoints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalEarnedPoints = valueDes;
          break;
        case r'totalSpentPoints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalSpentPoints = valueDes;
          break;
        case r'pointBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pointBalance = valueDes;
          break;
        case r'totalTransactions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalTransactions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoyaltyTransactionTotalsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoyaltyTransactionTotalsResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

