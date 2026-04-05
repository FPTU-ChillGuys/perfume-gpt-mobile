//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_attribute_dto.g.dart';

/// ProductAttributeDto
///
/// Properties:
/// * [attributeId] 
/// * [valueId] 
@BuiltValue()
abstract class ProductAttributeDto implements Built<ProductAttributeDto, ProductAttributeDtoBuilder> {
  @BuiltValueField(wireName: r'attributeId')
  int? get attributeId;

  @BuiltValueField(wireName: r'valueId')
  int? get valueId;

  ProductAttributeDto._();

  factory ProductAttributeDto([void updates(ProductAttributeDtoBuilder b)]) = _$ProductAttributeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductAttributeDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductAttributeDto> get serializer => _$ProductAttributeDtoSerializer();
}

class _$ProductAttributeDtoSerializer implements PrimitiveSerializer<ProductAttributeDto> {
  @override
  final Iterable<Type> types = const [ProductAttributeDto, _$ProductAttributeDto];

  @override
  final String wireName = r'ProductAttributeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductAttributeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductAttributeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductAttributeDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductAttributeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductAttributeDtoBuilder();
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

