//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_return_request_detail_response.g.dart';

/// OrderReturnRequestDetailResponse
///
/// Properties:
/// * [id] 
/// * [orderDetailId] 
/// * [variantId] 
/// * [requestedQuantity] 
/// * [unitPrice] 
/// * [refundableAmount] 
@BuiltValue()
abstract class OrderReturnRequestDetailResponse implements Built<OrderReturnRequestDetailResponse, OrderReturnRequestDetailResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'orderDetailId')
  String? get orderDetailId;

  @BuiltValueField(wireName: r'variantId')
  String? get variantId;

  @BuiltValueField(wireName: r'requestedQuantity')
  int? get requestedQuantity;

  @BuiltValueField(wireName: r'unitPrice')
  num? get unitPrice;

  @BuiltValueField(wireName: r'refundableAmount')
  num? get refundableAmount;

  OrderReturnRequestDetailResponse._();

  factory OrderReturnRequestDetailResponse([void updates(OrderReturnRequestDetailResponseBuilder b)]) = _$OrderReturnRequestDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderReturnRequestDetailResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderReturnRequestDetailResponse> get serializer => _$OrderReturnRequestDetailResponseSerializer();
}

class _$OrderReturnRequestDetailResponseSerializer implements PrimitiveSerializer<OrderReturnRequestDetailResponse> {
  @override
  final Iterable<Type> types = const [OrderReturnRequestDetailResponse, _$OrderReturnRequestDetailResponse];

  @override
  final String wireName = r'OrderReturnRequestDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderReturnRequestDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderDetailId != null) {
      yield r'orderDetailId';
      yield serializers.serialize(
        object.orderDetailId,
        specifiedType: const FullType(String),
      );
    }
    if (object.variantId != null) {
      yield r'variantId';
      yield serializers.serialize(
        object.variantId,
        specifiedType: const FullType(String),
      );
    }
    if (object.requestedQuantity != null) {
      yield r'requestedQuantity';
      yield serializers.serialize(
        object.requestedQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.unitPrice != null) {
      yield r'unitPrice';
      yield serializers.serialize(
        object.unitPrice,
        specifiedType: const FullType(num),
      );
    }
    if (object.refundableAmount != null) {
      yield r'refundableAmount';
      yield serializers.serialize(
        object.refundableAmount,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderReturnRequestDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderReturnRequestDetailResponseBuilder result,
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
        case r'orderDetailId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderDetailId = valueDes;
          break;
        case r'variantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantId = valueDes;
          break;
        case r'requestedQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.requestedQuantity = valueDes;
          break;
        case r'unitPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.unitPrice = valueDes;
          break;
        case r'refundableAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.refundableAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderReturnRequestDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderReturnRequestDetailResponseBuilder();
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

