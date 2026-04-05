//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/promotion_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_campaign_promotion_item_request.g.dart';

/// CreateCampaignPromotionItemRequest
///
/// Properties:
/// * [productVariantId] 
/// * [batchId] 
/// * [promotionType] 
/// * [maxUsage] 
@BuiltValue()
abstract class CreateCampaignPromotionItemRequest implements Built<CreateCampaignPromotionItemRequest, CreateCampaignPromotionItemRequestBuilder> {
  @BuiltValueField(wireName: r'productVariantId')
  String get productVariantId;

  @BuiltValueField(wireName: r'batchId')
  String? get batchId;

  @BuiltValueField(wireName: r'promotionType')
  PromotionType? get promotionType;
  // enum promotionTypeEnum {  Clearance,  NewArrival,  Regular,  };

  @BuiltValueField(wireName: r'maxUsage')
  int? get maxUsage;

  CreateCampaignPromotionItemRequest._();

  factory CreateCampaignPromotionItemRequest([void updates(CreateCampaignPromotionItemRequestBuilder b)]) = _$CreateCampaignPromotionItemRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateCampaignPromotionItemRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateCampaignPromotionItemRequest> get serializer => _$CreateCampaignPromotionItemRequestSerializer();
}

class _$CreateCampaignPromotionItemRequestSerializer implements PrimitiveSerializer<CreateCampaignPromotionItemRequest> {
  @override
  final Iterable<Type> types = const [CreateCampaignPromotionItemRequest, _$CreateCampaignPromotionItemRequest];

  @override
  final String wireName = r'CreateCampaignPromotionItemRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateCampaignPromotionItemRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'productVariantId';
    yield serializers.serialize(
      object.productVariantId,
      specifiedType: const FullType(String),
    );
    if (object.batchId != null) {
      yield r'batchId';
      yield serializers.serialize(
        object.batchId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.promotionType != null) {
      yield r'promotionType';
      yield serializers.serialize(
        object.promotionType,
        specifiedType: const FullType(PromotionType),
      );
    }
    if (object.maxUsage != null) {
      yield r'maxUsage';
      yield serializers.serialize(
        object.maxUsage,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateCampaignPromotionItemRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateCampaignPromotionItemRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productVariantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productVariantId = valueDes;
          break;
        case r'batchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.batchId = valueDes;
          break;
        case r'promotionType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PromotionType),
          ) as PromotionType;
          result.promotionType = valueDes;
          break;
        case r'maxUsage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxUsage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateCampaignPromotionItemRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCampaignPromotionItemRequestBuilder();
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

