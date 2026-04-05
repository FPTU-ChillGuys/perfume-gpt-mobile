//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/order_detail_list_items.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'preview_order_response.g.dart';

/// PreviewOrderResponse
///
/// Properties:
/// * [items] 
/// * [subTotal] 
/// * [shippingFee] 
/// * [discount] 
/// * [total] 
@BuiltValue()
abstract class PreviewOrderResponse implements Built<PreviewOrderResponse, PreviewOrderResponseBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<OrderDetailListItems> get items;

  @BuiltValueField(wireName: r'subTotal')
  num? get subTotal;

  @BuiltValueField(wireName: r'shippingFee')
  num? get shippingFee;

  @BuiltValueField(wireName: r'discount')
  num? get discount;

  @BuiltValueField(wireName: r'total')
  num? get total;

  PreviewOrderResponse._();

  factory PreviewOrderResponse([void updates(PreviewOrderResponseBuilder b)]) = _$PreviewOrderResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreviewOrderResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreviewOrderResponse> get serializer => _$PreviewOrderResponseSerializer();
}

class _$PreviewOrderResponseSerializer implements PrimitiveSerializer<PreviewOrderResponse> {
  @override
  final Iterable<Type> types = const [PreviewOrderResponse, _$PreviewOrderResponse];

  @override
  final String wireName = r'PreviewOrderResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreviewOrderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(OrderDetailListItems)]),
    );
    if (object.subTotal != null) {
      yield r'subTotal';
      yield serializers.serialize(
        object.subTotal,
        specifiedType: const FullType(num),
      );
    }
    if (object.shippingFee != null) {
      yield r'shippingFee';
      yield serializers.serialize(
        object.shippingFee,
        specifiedType: const FullType(num),
      );
    }
    if (object.discount != null) {
      yield r'discount';
      yield serializers.serialize(
        object.discount,
        specifiedType: const FullType(num),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreviewOrderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PreviewOrderResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OrderDetailListItems)]),
          ) as BuiltList<OrderDetailListItems>;
          result.items.replace(valueDes);
          break;
        case r'subTotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.subTotal = valueDes;
          break;
        case r'shippingFee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.shippingFee = valueDes;
          break;
        case r'discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.discount = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreviewOrderResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreviewOrderResponseBuilder();
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

