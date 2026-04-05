//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/get_cart_item_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_cart_items_response.g.dart';

/// GetCartItemsResponse
///
/// Properties:
/// * [items] 
@BuiltValue()
abstract class GetCartItemsResponse implements Built<GetCartItemsResponse, GetCartItemsResponseBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<GetCartItemResponse> get items;

  GetCartItemsResponse._();

  factory GetCartItemsResponse([void updates(GetCartItemsResponseBuilder b)]) = _$GetCartItemsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCartItemsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCartItemsResponse> get serializer => _$GetCartItemsResponseSerializer();
}

class _$GetCartItemsResponseSerializer implements PrimitiveSerializer<GetCartItemsResponse> {
  @override
  final Iterable<Type> types = const [GetCartItemsResponse, _$GetCartItemsResponse];

  @override
  final String wireName = r'GetCartItemsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCartItemsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(GetCartItemResponse)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCartItemsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCartItemsResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GetCartItemResponse)]),
          ) as BuiltList<GetCartItemResponse>;
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
  GetCartItemsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCartItemsResponseBuilder();
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

