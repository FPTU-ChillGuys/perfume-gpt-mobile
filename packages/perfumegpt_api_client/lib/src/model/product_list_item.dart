//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_list_item.g.dart';

/// ProductListItem
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [brandId] 
/// * [brandName] 
/// * [categoryId] 
/// * [categoryName] 
/// * [description] 
/// * [numberOfVariants] 
/// * [variantPrices] 
/// * [tags] 
/// * [primaryImage] 
@BuiltValue()
abstract class ProductListItem implements Built<ProductListItem, ProductListItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'brandId')
  int? get brandId;

  @BuiltValueField(wireName: r'brandName')
  String get brandName;

  @BuiltValueField(wireName: r'categoryId')
  int? get categoryId;

  @BuiltValueField(wireName: r'categoryName')
  String get categoryName;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'numberOfVariants')
  int? get numberOfVariants;

  @BuiltValueField(wireName: r'variantPrices')
  BuiltList<num> get variantPrices;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'primaryImage')
  MediaResponse? get primaryImage;

  ProductListItem._();

  factory ProductListItem([void updates(ProductListItemBuilder b)]) = _$ProductListItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductListItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductListItem> get serializer => _$ProductListItemSerializer();
}

class _$ProductListItemSerializer implements PrimitiveSerializer<ProductListItem> {
  @override
  final Iterable<Type> types = const [ProductListItem, _$ProductListItem];

  @override
  final String wireName = r'ProductListItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.brandId != null) {
      yield r'brandId';
      yield serializers.serialize(
        object.brandId,
        specifiedType: const FullType(int),
      );
    }
    yield r'brandName';
    yield serializers.serialize(
      object.brandName,
      specifiedType: const FullType(String),
    );
    if (object.categoryId != null) {
      yield r'categoryId';
      yield serializers.serialize(
        object.categoryId,
        specifiedType: const FullType(int),
      );
    }
    yield r'categoryName';
    yield serializers.serialize(
      object.categoryName,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.numberOfVariants != null) {
      yield r'numberOfVariants';
      yield serializers.serialize(
        object.numberOfVariants,
        specifiedType: const FullType(int),
      );
    }
    yield r'variantPrices';
    yield serializers.serialize(
      object.variantPrices,
      specifiedType: const FullType(BuiltList, [FullType(num)]),
    );
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.primaryImage != null) {
      yield r'primaryImage';
      yield serializers.serialize(
        object.primaryImage,
        specifiedType: const FullType.nullable(MediaResponse),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductListItemBuilder result,
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'brandId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.brandId = valueDes;
          break;
        case r'brandName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.brandName = valueDes;
          break;
        case r'categoryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.categoryId = valueDes;
          break;
        case r'categoryName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.categoryName = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'numberOfVariants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numberOfVariants = valueDes;
          break;
        case r'variantPrices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(num)]),
          ) as BuiltList<num>;
          result.variantPrices.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.tags.replace(valueDes);
          break;
        case r'primaryImage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MediaResponse),
          ) as MediaResponse?;
          if (valueDes == null) continue;
          result.primaryImage.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductListItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductListItemBuilder();
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

