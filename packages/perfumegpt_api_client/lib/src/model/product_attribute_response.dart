//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_attribute_response.g.dart';

/// ProductAttributeResponse
///
/// Properties:
/// * [id] 
/// * [attributeId] 
/// * [valueId] 
/// * [attribute] 
/// * [description] 
/// * [value] 
@BuiltValue()
abstract class ProductAttributeResponse implements Built<ProductAttributeResponse, ProductAttributeResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'attributeId')
  int? get attributeId;

  @BuiltValueField(wireName: r'valueId')
  int? get valueId;

  @BuiltValueField(wireName: r'attribute')
  String get attribute;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'value')
  String get value;

  ProductAttributeResponse._();

  factory ProductAttributeResponse([void updates(ProductAttributeResponseBuilder b)]) = _$ProductAttributeResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductAttributeResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductAttributeResponse> get serializer => _$ProductAttributeResponseSerializer();
}

class _$ProductAttributeResponseSerializer implements PrimitiveSerializer<ProductAttributeResponse> {
  @override
  final Iterable<Type> types = const [ProductAttributeResponse, _$ProductAttributeResponse];

  @override
  final String wireName = r'ProductAttributeResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductAttributeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.attributeId != null) {
      yield r'attributeId';
      yield serializers.serialize(
        object.attributeId,
        specifiedType: const FullType(int),
      );
    }
    if (object.valueId != null) {
      yield r'valueId';
      yield serializers.serialize(
        object.valueId,
        specifiedType: const FullType(int),
      );
    }
    yield r'attribute';
    yield serializers.serialize(
      object.attribute,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductAttributeResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductAttributeResponseBuilder result,
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
        case r'attributeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.attributeId = valueDes;
          break;
        case r'valueId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.valueId = valueDes;
          break;
        case r'attribute':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.attribute = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductAttributeResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductAttributeResponseBuilder();
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

