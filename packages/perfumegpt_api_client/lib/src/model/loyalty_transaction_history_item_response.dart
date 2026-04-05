//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/loyalty_transaction_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'loyalty_transaction_history_item_response.g.dart';

/// LoyaltyTransactionHistoryItemResponse
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [voucherId] 
/// * [orderId] 
/// * [transactionType] 
/// * [pointsChanged] 
/// * [absolutePoints] 
/// * [reason] 
@BuiltValue()
abstract class LoyaltyTransactionHistoryItemResponse implements Built<LoyaltyTransactionHistoryItemResponse, LoyaltyTransactionHistoryItemResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'voucherId')
  String? get voucherId;

  @BuiltValueField(wireName: r'orderId')
  String? get orderId;

  @BuiltValueField(wireName: r'transactionType')
  LoyaltyTransactionType? get transactionType;
  // enum transactionTypeEnum {  Spend,  Earn,  };

  @BuiltValueField(wireName: r'pointsChanged')
  int? get pointsChanged;

  @BuiltValueField(wireName: r'absolutePoints')
  int? get absolutePoints;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  LoyaltyTransactionHistoryItemResponse._();

  factory LoyaltyTransactionHistoryItemResponse([void updates(LoyaltyTransactionHistoryItemResponseBuilder b)]) = _$LoyaltyTransactionHistoryItemResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoyaltyTransactionHistoryItemResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoyaltyTransactionHistoryItemResponse> get serializer => _$LoyaltyTransactionHistoryItemResponseSerializer();
}

class _$LoyaltyTransactionHistoryItemResponseSerializer implements PrimitiveSerializer<LoyaltyTransactionHistoryItemResponse> {
  @override
  final Iterable<Type> types = const [LoyaltyTransactionHistoryItemResponse, _$LoyaltyTransactionHistoryItemResponse];

  @override
  final String wireName = r'LoyaltyTransactionHistoryItemResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoyaltyTransactionHistoryItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.voucherId != null) {
      yield r'voucherId';
      yield serializers.serialize(
        object.voucherId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.orderId != null) {
      yield r'orderId';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.transactionType != null) {
      yield r'transactionType';
      yield serializers.serialize(
        object.transactionType,
        specifiedType: const FullType(LoyaltyTransactionType),
      );
    }
    if (object.pointsChanged != null) {
      yield r'pointsChanged';
      yield serializers.serialize(
        object.pointsChanged,
        specifiedType: const FullType(int),
      );
    }
    if (object.absolutePoints != null) {
      yield r'absolutePoints';
      yield serializers.serialize(
        object.absolutePoints,
        specifiedType: const FullType(int),
      );
    }
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LoyaltyTransactionHistoryItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LoyaltyTransactionHistoryItemResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'voucherId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.voucherId = valueDes;
          break;
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.orderId = valueDes;
          break;
        case r'transactionType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LoyaltyTransactionType),
          ) as LoyaltyTransactionType;
          result.transactionType = valueDes;
          break;
        case r'pointsChanged':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pointsChanged = valueDes;
          break;
        case r'absolutePoints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.absolutePoints = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoyaltyTransactionHistoryItemResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoyaltyTransactionHistoryItemResponseBuilder();
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

