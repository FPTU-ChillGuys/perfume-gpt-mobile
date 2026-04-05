//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fulfill_order_item_request.g.dart';

/// FulfillOrderItemRequest
///
/// Properties:
/// * [orderDetailId] 
/// * [scannedBatchCode] 
/// * [quantity] 
@BuiltValue()
abstract class FulfillOrderItemRequest implements Built<FulfillOrderItemRequest, FulfillOrderItemRequestBuilder> {
  @BuiltValueField(wireName: r'orderDetailId')
  String get orderDetailId;

  @BuiltValueField(wireName: r'scannedBatchCode')
  String get scannedBatchCode;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  FulfillOrderItemRequest._();

  factory FulfillOrderItemRequest([void updates(FulfillOrderItemRequestBuilder b)]) = _$FulfillOrderItemRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FulfillOrderItemRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FulfillOrderItemRequest> get serializer => _$FulfillOrderItemRequestSerializer();
}

class _$FulfillOrderItemRequestSerializer implements PrimitiveSerializer<FulfillOrderItemRequest> {
  @override
  final Iterable<Type> types = const [FulfillOrderItemRequest, _$FulfillOrderItemRequest];

  @override
  final String wireName = r'FulfillOrderItemRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FulfillOrderItemRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'orderDetailId';
    yield serializers.serialize(
      object.orderDetailId,
      specifiedType: const FullType(String),
    );
    yield r'scannedBatchCode';
    yield serializers.serialize(
      object.scannedBatchCode,
      specifiedType: const FullType(String),
    );
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FulfillOrderItemRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FulfillOrderItemRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'orderDetailId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderDetailId = valueDes;
          break;
        case r'scannedBatchCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scannedBatchCode = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FulfillOrderItemRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FulfillOrderItemRequestBuilder();
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

