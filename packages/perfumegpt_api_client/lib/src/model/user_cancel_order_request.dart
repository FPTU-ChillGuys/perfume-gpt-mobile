//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/cancel_order_reason.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_cancel_order_request.g.dart';

/// UserCancelOrderRequest
///
/// Properties:
/// * [reason] 
@BuiltValue()
abstract class UserCancelOrderRequest implements Built<UserCancelOrderRequest, UserCancelOrderRequestBuilder> {
  @BuiltValueField(wireName: r'reason')
  CancelOrderReason? get reason;
  // enum reasonEnum {  ChangedMind,  FoundBetterPrice,  WrongShippingInformation,  PaymentIssue,  DeliveryTooLate,  InsufficientStock,  };

  UserCancelOrderRequest._();

  factory UserCancelOrderRequest([void updates(UserCancelOrderRequestBuilder b)]) = _$UserCancelOrderRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserCancelOrderRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserCancelOrderRequest> get serializer => _$UserCancelOrderRequestSerializer();
}

class _$UserCancelOrderRequestSerializer implements PrimitiveSerializer<UserCancelOrderRequest> {
  @override
  final Iterable<Type> types = const [UserCancelOrderRequest, _$UserCancelOrderRequest];

  @override
  final String wireName = r'UserCancelOrderRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserCancelOrderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(CancelOrderReason),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserCancelOrderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserCancelOrderRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CancelOrderReason),
          ) as CancelOrderReason;
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
  UserCancelOrderRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserCancelOrderRequestBuilder();
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

