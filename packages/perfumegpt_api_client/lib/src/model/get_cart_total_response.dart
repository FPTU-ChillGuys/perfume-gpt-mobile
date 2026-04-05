//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_cart_total_response.g.dart';

/// GetCartTotalResponse
///
/// Properties:
/// * [subtotal] 
/// * [shippingFee] 
/// * [discount] 
/// * [totalPrice] 
@BuiltValue()
abstract class GetCartTotalResponse implements Built<GetCartTotalResponse, GetCartTotalResponseBuilder> {
  @BuiltValueField(wireName: r'subtotal')
  num? get subtotal;

  @BuiltValueField(wireName: r'shippingFee')
  num? get shippingFee;

  @BuiltValueField(wireName: r'discount')
  num? get discount;

  @BuiltValueField(wireName: r'totalPrice')
  num? get totalPrice;

  GetCartTotalResponse._();

  factory GetCartTotalResponse([void updates(GetCartTotalResponseBuilder b)]) = _$GetCartTotalResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCartTotalResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCartTotalResponse> get serializer => _$GetCartTotalResponseSerializer();
}

class _$GetCartTotalResponseSerializer implements PrimitiveSerializer<GetCartTotalResponse> {
  @override
  final Iterable<Type> types = const [GetCartTotalResponse, _$GetCartTotalResponse];

  @override
  final String wireName = r'GetCartTotalResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCartTotalResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.subtotal != null) {
      yield r'subtotal';
      yield serializers.serialize(
        object.subtotal,
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
    if (object.totalPrice != null) {
      yield r'totalPrice';
      yield serializers.serialize(
        object.totalPrice,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCartTotalResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCartTotalResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'subtotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.subtotal = valueDes;
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
        case r'totalPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalPrice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCartTotalResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCartTotalResponseBuilder();
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

