//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/variant_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/variant_type.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'variant_paged_item.g.dart';

/// VariantPagedItem
///
/// Properties:
/// * [id] 
/// * [productId] 
/// * [primaryImageUrl] 
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
/// * [attributes] 
@BuiltValue()
abstract class VariantPagedItem implements Built<VariantPagedItem, VariantPagedItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'productId')
  String? get productId;

  @BuiltValueField(wireName: r'primaryImageUrl')
  String? get primaryImageUrl;

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

  @BuiltValueField(wireName: r'attributes')
  BuiltList<ProductAttributeResponse>? get attributes;

  VariantPagedItem._();

  factory VariantPagedItem([void updates(VariantPagedItemBuilder b)]) = _$VariantPagedItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VariantPagedItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VariantPagedItem> get serializer => _$VariantPagedItemSerializer();
}

class _$VariantPagedItemSerializer implements PrimitiveSerializer<VariantPagedItem> {
  @override
  final Iterable<Type> types = const [VariantPagedItem, _$VariantPagedItem];

  @override
  final String wireName = r'VariantPagedItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VariantPagedItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(String),
      );
    }
    if (object.primaryImageUrl != null) {
      yield r'primaryImageUrl';
      yield serializers.serialize(
        object.primaryImageUrl,
        specifiedType: const FullType.nullable(String),
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
    VariantPagedItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VariantPagedItemBuilder result,
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
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productId = valueDes;
          break;
        case r'primaryImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.primaryImageUrl = valueDes;
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
  VariantPagedItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VariantPagedItemBuilder();
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

