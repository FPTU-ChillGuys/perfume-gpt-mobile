//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/pick_list_item_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pick_list_response.g.dart';

/// PickListResponse
///
/// Properties:
/// * [orderId] 
/// * [code] 
/// * [items] 
@BuiltValue()
abstract class PickListResponse implements Built<PickListResponse, PickListResponseBuilder> {
  @BuiltValueField(wireName: r'orderId')
  String? get orderId;

  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'items')
  BuiltList<PickListItemResponse> get items;

  PickListResponse._();

  factory PickListResponse([void updates(PickListResponseBuilder b)]) = _$PickListResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PickListResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PickListResponse> get serializer => _$PickListResponseSerializer();
}

class _$PickListResponseSerializer implements PrimitiveSerializer<PickListResponse> {
  @override
  final Iterable<Type> types = const [PickListResponse, _$PickListResponse];

  @override
  final String wireName = r'PickListResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PickListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.orderId != null) {
      yield r'orderId';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(PickListItemResponse)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PickListResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PickListResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PickListItemResponse)]),
          ) as BuiltList<PickListItemResponse>;
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
  PickListResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PickListResponseBuilder();
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

