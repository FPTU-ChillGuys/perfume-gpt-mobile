//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:perfumegpt_api_client/src/model/variant_summary_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_list_item_with_variants.g.dart';

/// ProductListItemWithVariants
///
/// Properties:
/// * [variants] 
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
abstract class ProductListItemWithVariants implements Built<ProductListItemWithVariants, ProductListItemWithVariantsBuilder> {
  @BuiltValueField(wireName: r'variants')
  BuiltList<VariantSummaryItem> get variants;

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

  ProductListItemWithVariants._();

  factory ProductListItemWithVariants([void updates(ProductListItemWithVariantsBuilder b)]) = _$ProductListItemWithVariants;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductListItemWithVariantsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductListItemWithVariants> get serializer => _$ProductListItemWithVariantsSerializer();
}

class _$ProductListItemWithVariantsSerializer implements PrimitiveSerializer<ProductListItemWithVariants> {
  @override
  final Iterable<Type> types = const [ProductListItemWithVariants, _$ProductListItemWithVariants];

  @override
  final String wireName = r'ProductListItemWithVariants';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductListItemWithVariants object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'variants';
    yield serializers.serialize(
      object.variants,
      specifiedType: const FullType(BuiltList, [FullType(VariantSummaryItem)]),
    );
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
    ProductListItemWithVariants object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductListItemWithVariantsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'variants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(VariantSummaryItem)]),
          ) as BuiltList<VariantSummaryItem>;
          result.variants.replace(valueDes);
          break;
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
  ProductListItemWithVariants deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductListItemWithVariantsBuilder();
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

