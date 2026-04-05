//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/product_olfactory_family_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/product_scent_note_response.dart';
import 'package:perfumegpt_api_client/src/model/product_variant_response.dart';
import 'package:perfumegpt_api_client/src/model/gender.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_response.g.dart';

/// ProductResponse
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [gender] 
/// * [origin] 
/// * [releaseYear] 
/// * [brandId] 
/// * [brandName] 
/// * [categoryId] 
/// * [categoryName] 
/// * [description] 
/// * [numberOfVariants] 
/// * [media] 
/// * [variants] 
/// * [attributes] 
/// * [olfactoryFamilies] 
/// * [scentNotes] 
@BuiltValue()
abstract class ProductResponse implements Built<ProductResponse, ProductResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'gender')
  Gender? get gender;
  // enum genderEnum {  Male,  Female,  Unisex,  };

  @BuiltValueField(wireName: r'origin')
  String get origin;

  @BuiltValueField(wireName: r'releaseYear')
  int? get releaseYear;

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

  @BuiltValueField(wireName: r'media')
  BuiltList<MediaResponse> get media;

  @BuiltValueField(wireName: r'variants')
  BuiltList<ProductVariantResponse> get variants;

  @BuiltValueField(wireName: r'attributes')
  BuiltList<ProductAttributeResponse> get attributes;

  @BuiltValueField(wireName: r'olfactoryFamilies')
  BuiltList<ProductOlfactoryFamilyResponse> get olfactoryFamilies;

  @BuiltValueField(wireName: r'scentNotes')
  BuiltList<ProductScentNoteResponse> get scentNotes;

  ProductResponse._();

  factory ProductResponse([void updates(ProductResponseBuilder b)]) = _$ProductResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductResponse> get serializer => _$ProductResponseSerializer();
}

class _$ProductResponseSerializer implements PrimitiveSerializer<ProductResponse> {
  @override
  final Iterable<Type> types = const [ProductResponse, _$ProductResponse];

  @override
  final String wireName = r'ProductResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductResponse object, {
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
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(Gender),
      );
    }
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(String),
    );
    if (object.releaseYear != null) {
      yield r'releaseYear';
      yield serializers.serialize(
        object.releaseYear,
        specifiedType: const FullType(int),
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
    yield r'media';
    yield serializers.serialize(
      object.media,
      specifiedType: const FullType(BuiltList, [FullType(MediaResponse)]),
    );
    yield r'variants';
    yield serializers.serialize(
      object.variants,
      specifiedType: const FullType(BuiltList, [FullType(ProductVariantResponse)]),
    );
    yield r'attributes';
    yield serializers.serialize(
      object.attributes,
      specifiedType: const FullType(BuiltList, [FullType(ProductAttributeResponse)]),
    );
    yield r'olfactoryFamilies';
    yield serializers.serialize(
      object.olfactoryFamilies,
      specifiedType: const FullType(BuiltList, [FullType(ProductOlfactoryFamilyResponse)]),
    );
    yield r'scentNotes';
    yield serializers.serialize(
      object.scentNotes,
      specifiedType: const FullType(BuiltList, [FullType(ProductScentNoteResponse)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductResponseBuilder result,
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
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Gender),
          ) as Gender;
          result.gender = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.origin = valueDes;
          break;
        case r'releaseYear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.releaseYear = valueDes;
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
        case r'media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MediaResponse)]),
          ) as BuiltList<MediaResponse>;
          result.media.replace(valueDes);
          break;
        case r'variants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProductVariantResponse)]),
          ) as BuiltList<ProductVariantResponse>;
          result.variants.replace(valueDes);
          break;
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProductAttributeResponse)]),
          ) as BuiltList<ProductAttributeResponse>;
          result.attributes.replace(valueDes);
          break;
        case r'olfactoryFamilies':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProductOlfactoryFamilyResponse)]),
          ) as BuiltList<ProductOlfactoryFamilyResponse>;
          result.olfactoryFamilies.replace(valueDes);
          break;
        case r'scentNotes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProductScentNoteResponse)]),
          ) as BuiltList<ProductScentNoteResponse>;
          result.scentNotes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductResponseBuilder();
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

