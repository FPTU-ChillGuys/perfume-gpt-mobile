//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/variant_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/variant_type.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_variant_response.g.dart';

/// ProductVariantResponse
///
/// Properties:
/// * [id] 
/// * [barcode] 
/// * [sku] 
/// * [volumeMl] 
/// * [concentrationId] 
/// * [concentrationName] 
/// * [type] 
/// * [basePrice] 
/// * [retailPrice] 
/// * [status] 
/// * [stockQuantity] 
/// * [sillage] 
/// * [longevity] 
/// * [productId] 
/// * [productName] 
/// * [media] 
/// * [campaignName] 
/// * [voucherCode] 
/// * [discountedPrice] 
/// * [attributes] 
@BuiltValue()
abstract class ProductVariantResponse implements Built<ProductVariantResponse, ProductVariantResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'barcode')
  String get barcode;

  @BuiltValueField(wireName: r'sku')
  String get sku;

  @BuiltValueField(wireName: r'volumeMl')
  int? get volumeMl;

  @BuiltValueField(wireName: r'concentrationId')
  int? get concentrationId;

  @BuiltValueField(wireName: r'concentrationName')
  String get concentrationName;

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

  @BuiltValueField(wireName: r'stockQuantity')
  int? get stockQuantity;

  @BuiltValueField(wireName: r'sillage')
  int? get sillage;

  @BuiltValueField(wireName: r'longevity')
  int? get longevity;

  @BuiltValueField(wireName: r'productId')
  String? get productId;

  @BuiltValueField(wireName: r'productName')
  String get productName;

  @BuiltValueField(wireName: r'media')
  BuiltList<MediaResponse> get media;

  @BuiltValueField(wireName: r'campaignName')
  String? get campaignName;

  @BuiltValueField(wireName: r'voucherCode')
  String? get voucherCode;

  @BuiltValueField(wireName: r'discountedPrice')
  num? get discountedPrice;

  @BuiltValueField(wireName: r'attributes')
  BuiltList<ProductAttributeResponse>? get attributes;

  ProductVariantResponse._();

  factory ProductVariantResponse([void updates(ProductVariantResponseBuilder b)]) = _$ProductVariantResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductVariantResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductVariantResponse> get serializer => _$ProductVariantResponseSerializer();
}

class _$ProductVariantResponseSerializer implements PrimitiveSerializer<ProductVariantResponse> {
  @override
  final Iterable<Type> types = const [ProductVariantResponse, _$ProductVariantResponse];

  @override
  final String wireName = r'ProductVariantResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductVariantResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
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
    yield r'concentrationName';
    yield serializers.serialize(
      object.concentrationName,
      specifiedType: const FullType(String),
    );
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
    if (object.stockQuantity != null) {
      yield r'stockQuantity';
      yield serializers.serialize(
        object.stockQuantity,
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
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(String),
      );
    }
    yield r'productName';
    yield serializers.serialize(
      object.productName,
      specifiedType: const FullType(String),
    );
    yield r'media';
    yield serializers.serialize(
      object.media,
      specifiedType: const FullType(BuiltList, [FullType(MediaResponse)]),
    );
    if (object.campaignName != null) {
      yield r'campaignName';
      yield serializers.serialize(
        object.campaignName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.voucherCode != null) {
      yield r'voucherCode';
      yield serializers.serialize(
        object.voucherCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.discountedPrice != null) {
      yield r'discountedPrice';
      yield serializers.serialize(
        object.discountedPrice,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType.nullable(BuiltList, [FullType(ProductAttributeResponse)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductVariantResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductVariantResponseBuilder result,
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
        case r'concentrationName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.concentrationName = valueDes;
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
        case r'stockQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.stockQuantity = valueDes;
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
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productId = valueDes;
          break;
        case r'productName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productName = valueDes;
          break;
        case r'media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MediaResponse)]),
          ) as BuiltList<MediaResponse>;
          result.media.replace(valueDes);
          break;
        case r'campaignName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.campaignName = valueDes;
          break;
        case r'voucherCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.voucherCode = valueDes;
          break;
        case r'discountedPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.discountedPrice = valueDes;
          break;
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ProductAttributeResponse)]),
          ) as BuiltList<ProductAttributeResponse>?;
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
  ProductVariantResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductVariantResponseBuilder();
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

