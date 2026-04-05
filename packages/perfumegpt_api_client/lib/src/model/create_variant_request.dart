//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/variant_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/variant_type.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_variant_request.g.dart';

/// CreateVariantRequest
///
/// Properties:
/// * [productId] 
/// * [barcode] 
/// * [sku] 
/// * [volumeMl] 
/// * [concentrationId] 
/// * [sillage] 
/// * [longevity] 
/// * [type] 
/// * [basePrice] 
/// * [retailPrice] 
/// * [status] 
/// * [lowStockThreshold] 
/// * [attributes] 
/// * [temporaryMediaIds] 
@BuiltValue()
abstract class CreateVariantRequest implements Built<CreateVariantRequest, CreateVariantRequestBuilder> {
  @BuiltValueField(wireName: r'productId')
  String get productId;

  @BuiltValueField(wireName: r'barcode')
  String get barcode;

  @BuiltValueField(wireName: r'sku')
  String get sku;

  @BuiltValueField(wireName: r'volumeMl')
  int? get volumeMl;

  @BuiltValueField(wireName: r'concentrationId')
  int? get concentrationId;

  @BuiltValueField(wireName: r'sillage')
  int? get sillage;

  @BuiltValueField(wireName: r'longevity')
  int? get longevity;

  @BuiltValueField(wireName: r'type')
  VariantType? get type;
  // enum typeEnum {  Standard,  FullBox,  Tester,  Mini,  };

  @BuiltValueField(wireName: r'basePrice')
  num? get basePrice;

  @BuiltValueField(wireName: r'retailPrice')
  num? get retailPrice;

  @BuiltValueField(wireName: r'status')
  VariantStatus? get status;
  // enum statusEnum {  Active,  Inactive,  Discontinued,  };

  @BuiltValueField(wireName: r'lowStockThreshold')
  int? get lowStockThreshold;

  @BuiltValueField(wireName: r'attributes')
  BuiltList<ProductAttributeDto>? get attributes;

  @BuiltValueField(wireName: r'temporaryMediaIds')
  BuiltList<String>? get temporaryMediaIds;

  CreateVariantRequest._();

  factory CreateVariantRequest([void updates(CreateVariantRequestBuilder b)]) = _$CreateVariantRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateVariantRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateVariantRequest> get serializer => _$CreateVariantRequestSerializer();
}

class _$CreateVariantRequestSerializer implements PrimitiveSerializer<CreateVariantRequest> {
  @override
  final Iterable<Type> types = const [CreateVariantRequest, _$CreateVariantRequest];

  @override
  final String wireName = r'CreateVariantRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateVariantRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'productId';
    yield serializers.serialize(
      object.productId,
      specifiedType: const FullType(String),
    );
    yield r'barcode';
    yield serializers.serialize(
      object.barcode,
      specifiedType: const FullType(String),
    );
    yield r'sku';
    yield serializers.serialize(
      object.sku,
      specifiedType: const FullType(String),
    );
    if (object.volumeMl != null) {
      yield r'volumeMl';
      yield serializers.serialize(
        object.volumeMl,
        specifiedType: const FullType(int),
      );
    }
    if (object.concentrationId != null) {
      yield r'concentrationId';
      yield serializers.serialize(
        object.concentrationId,
        specifiedType: const FullType(int),
      );
    }
    if (object.sillage != null) {
      yield r'sillage';
      yield serializers.serialize(
        object.sillage,
        specifiedType: const FullType(int),
      );
    }
    if (object.longevity != null) {
      yield r'longevity';
      yield serializers.serialize(
        object.longevity,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(VariantType),
      );
    }
    if (object.basePrice != null) {
      yield r'basePrice';
      yield serializers.serialize(
        object.basePrice,
        specifiedType: const FullType(num),
      );
    }
    if (object.retailPrice != null) {
      yield r'retailPrice';
      yield serializers.serialize(
        object.retailPrice,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(VariantStatus),
      );
    }
    if (object.lowStockThreshold != null) {
      yield r'lowStockThreshold';
      yield serializers.serialize(
        object.lowStockThreshold,
        specifiedType: const FullType(int),
      );
    }
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType.nullable(BuiltList, [FullType(ProductAttributeDto)]),
      );
    }
    if (object.temporaryMediaIds != null) {
      yield r'temporaryMediaIds';
      yield serializers.serialize(
        object.temporaryMediaIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateVariantRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateVariantRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productId = valueDes;
          break;
        case r'barcode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.barcode = valueDes;
          break;
        case r'sku':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sku = valueDes;
          break;
        case r'volumeMl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.volumeMl = valueDes;
          break;
        case r'concentrationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.concentrationId = valueDes;
          break;
        case r'sillage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sillage = valueDes;
          break;
        case r'longevity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.longevity = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VariantType),
          ) as VariantType;
          result.type = valueDes;
          break;
        case r'basePrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.basePrice = valueDes;
          break;
        case r'retailPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.retailPrice = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VariantStatus),
          ) as VariantStatus;
          result.status = valueDes;
          break;
        case r'lowStockThreshold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lowStockThreshold = valueDes;
          break;
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ProductAttributeDto)]),
          ) as BuiltList<ProductAttributeDto>?;
          if (valueDes == null) continue;
          result.attributes.replace(valueDes);
          break;
        case r'temporaryMediaIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.temporaryMediaIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateVariantRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVariantRequestBuilder();
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

