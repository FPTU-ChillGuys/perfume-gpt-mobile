//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_lookup_item.g.dart';

/// ProductLookupItem
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [brandName] 
/// * [primaryImageUrl] 
@BuiltValue()
abstract class ProductLookupItem implements Built<ProductLookupItem, ProductLookupItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'brandName')
  String get brandName;

  @BuiltValueField(wireName: r'primaryImageUrl')
  String? get primaryImageUrl;

  ProductLookupItem._();

  factory ProductLookupItem([void updates(ProductLookupItemBuilder b)]) = _$ProductLookupItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductLookupItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductLookupItem> get serializer => _$ProductLookupItemSerializer();
}

class _$ProductLookupItemSerializer implements PrimitiveSerializer<ProductLookupItem> {
  @override
  final Iterable<Type> types = const [ProductLookupItem, _$ProductLookupItem];

  @override
  final String wireName = r'ProductLookupItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductLookupItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'brandName';
    yield serializers.serialize(
      object.brandName,
      specifiedType: const FullType(String),
    );
    if (object.primaryImageUrl != null) {
      yield r'primaryImageUrl';
      yield serializers.serialize(
        object.primaryImageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductLookupItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductLookupItemBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'brandName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.brandName = valueDes;
          break;
        case r'primaryImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.primaryImageUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductLookupItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductLookupItemBuilder();
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

