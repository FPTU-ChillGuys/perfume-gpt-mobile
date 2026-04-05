//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/loyalty_transaction_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'manual_change_request.g.dart';

/// ManualChangeRequest
///
/// Properties:
/// * [userId] 
/// * [transactionType] 
/// * [points] 
/// * [reason] 
@BuiltValue()
abstract class ManualChangeRequest implements Built<ManualChangeRequest, ManualChangeRequestBuilder> {
  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'transactionType')
  LoyaltyTransactionType? get transactionType;
  // enum transactionTypeEnum {  Spend,  Earn,  };

  @BuiltValueField(wireName: r'points')
  int? get points;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  ManualChangeRequest._();

  factory ManualChangeRequest([void updates(ManualChangeRequestBuilder b)]) = _$ManualChangeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ManualChangeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ManualChangeRequest> get serializer => _$ManualChangeRequestSerializer();
}

class _$ManualChangeRequestSerializer implements PrimitiveSerializer<ManualChangeRequest> {
  @override
  final Iterable<Type> types = const [ManualChangeRequest, _$ManualChangeRequest];

  @override
  final String wireName = r'ManualChangeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ManualChangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.transactionType != null) {
      yield r'transactionType';
      yield serializers.serialize(
        object.transactionType,
        specifiedType: const FullType(LoyaltyTransactionType),
      );
    }
    if (object.points != null) {
      yield r'points';
      yield serializers.serialize(
        object.points,
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
    ManualChangeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ManualChangeRequestBuilder result,
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
        case r'transactionType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LoyaltyTransactionType),
          ) as LoyaltyTransactionType;
          result.transactionType = valueDes;
          break;
        case r'points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.points = valueDes;
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
  ManualChangeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ManualChangeRequestBuilder();
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

