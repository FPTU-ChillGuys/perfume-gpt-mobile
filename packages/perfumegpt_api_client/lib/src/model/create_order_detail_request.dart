//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_order_detail_request.g.dart';

/// CreateOrderDetailRequest
///
/// Properties:
/// * [variantId] 
/// * [quantity] 
@BuiltValue()
abstract class CreateOrderDetailRequest implements Built<CreateOrderDetailRequest, CreateOrderDetailRequestBuilder> {
  @BuiltValueField(wireName: r'variantId')
  String get variantId;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  CreateOrderDetailRequest._();

  factory CreateOrderDetailRequest([void updates(CreateOrderDetailRequestBuilder b)]) = _$CreateOrderDetailRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateOrderDetailRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateOrderDetailRequest> get serializer => _$CreateOrderDetailRequestSerializer();
}

class _$CreateOrderDetailRequestSerializer implements PrimitiveSerializer<CreateOrderDetailRequest> {
  @override
  final Iterable<Type> types = const [CreateOrderDetailRequest, _$CreateOrderDetailRequest];

  @override
  final String wireName = r'CreateOrderDetailRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateOrderDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'variantId';
    yield serializers.serialize(
      object.variantId,
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
    CreateOrderDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateOrderDetailRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'variantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantId = valueDes;
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
  CreateOrderDetailRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateOrderDetailRequestBuilder();
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

