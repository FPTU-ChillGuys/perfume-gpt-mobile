//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/fulfill_order_item_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fulfill_order_request.g.dart';

/// FulfillOrderRequest
///
/// Properties:
/// * [items] 
@BuiltValue()
abstract class FulfillOrderRequest implements Built<FulfillOrderRequest, FulfillOrderRequestBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<FulfillOrderItemRequest> get items;

  FulfillOrderRequest._();

  factory FulfillOrderRequest([void updates(FulfillOrderRequestBuilder b)]) = _$FulfillOrderRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FulfillOrderRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FulfillOrderRequest> get serializer => _$FulfillOrderRequestSerializer();
}

class _$FulfillOrderRequestSerializer implements PrimitiveSerializer<FulfillOrderRequest> {
  @override
  final Iterable<Type> types = const [FulfillOrderRequest, _$FulfillOrderRequest];

  @override
  final String wireName = r'FulfillOrderRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FulfillOrderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(FulfillOrderItemRequest)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FulfillOrderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FulfillOrderRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FulfillOrderItemRequest)]),
          ) as BuiltList<FulfillOrderItemRequest>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FulfillOrderRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FulfillOrderRequestBuilder();
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

