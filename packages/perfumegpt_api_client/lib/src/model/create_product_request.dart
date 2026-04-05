//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/gender.dart';
import 'package:perfumegpt_api_client/src/model/scent_note_dto.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_product_request.g.dart';

/// CreateProductRequest
///
/// Properties:
/// * [name] 
/// * [brandId] 
/// * [categoryId] 
/// * [gender] 
/// * [origin] 
/// * [releaseYear] 
/// * [description] 
/// * [olfactoryFamilyIds] 
/// * [temporaryMediaIds] 
/// * [scentNotes] 
/// * [attributes] 
@BuiltValue()
abstract class CreateProductRequest implements Built<CreateProductRequest, CreateProductRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'brandId')
  int? get brandId;

  @BuiltValueField(wireName: r'categoryId')
  int? get categoryId;

  @BuiltValueField(wireName: r'gender')
  Gender? get gender;
  // enum genderEnum {  Male,  Female,  Unisex,  };

  @BuiltValueField(wireName: r'origin')
  String get origin;

  @BuiltValueField(wireName: r'releaseYear')
  int? get releaseYear;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'olfactoryFamilyIds')
  BuiltList<int> get olfactoryFamilyIds;

  @BuiltValueField(wireName: r'temporaryMediaIds')
  BuiltList<String>? get temporaryMediaIds;

  @BuiltValueField(wireName: r'scentNotes')
  BuiltList<ScentNoteDto> get scentNotes;

  @BuiltValueField(wireName: r'attributes')
  BuiltList<ProductAttributeDto>? get attributes;

  CreateProductRequest._();

  factory CreateProductRequest([void updates(CreateProductRequestBuilder b)]) = _$CreateProductRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateProductRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateProductRequest> get serializer => _$CreateProductRequestSerializer();
}

class _$CreateProductRequestSerializer implements PrimitiveSerializer<CreateProductRequest> {
  @override
  final Iterable<Type> types = const [CreateProductRequest, _$CreateProductRequest];

  @override
  final String wireName = r'CreateProductRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateProductRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.brandId != null) {
      yield r'brandId';
      yield serializers.serialize(
        object.brandId,
        specifiedType: const FullType(int),
      );
    }
    if (object.categoryId != null) {
      yield r'categoryId';
      yield serializers.serialize(
        object.categoryId,
        specifiedType: const FullType(int),
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'olfactoryFamilyIds';
    yield serializers.serialize(
      object.olfactoryFamilyIds,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
    if (object.temporaryMediaIds != null) {
      yield r'temporaryMediaIds';
      yield serializers.serialize(
        object.temporaryMediaIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    yield r'scentNotes';
    yield serializers.serialize(
      object.scentNotes,
      specifiedType: const FullType(BuiltList, [FullType(ScentNoteDto)]),
    );
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType.nullable(BuiltList, [FullType(ProductAttributeDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateProductRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateProductRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'brandId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.brandId = valueDes;
          break;
        case r'categoryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.categoryId = valueDes;
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'olfactoryFamilyIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.olfactoryFamilyIds.replace(valueDes);
          break;
        case r'temporaryMediaIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.temporaryMediaIds.replace(valueDes);
          break;
        case r'scentNotes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ScentNoteDto)]),
          ) as BuiltList<ScentNoteDto>;
          result.scentNotes.replace(valueDes);
          break;
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ProductAttributeDto)]),
          ) as BuiltList<ProductAttributeDto>?;
          if (valueDes == null) continue;
          result.attributes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateProductRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateProductRequestBuilder();
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

