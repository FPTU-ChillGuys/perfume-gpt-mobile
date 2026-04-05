//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/promotion_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'campaign_promotion_item_response.g.dart';

/// CampaignPromotionItemResponse
///
/// Properties:
/// * [id] 
/// * [campaignId] 
/// * [productVariantId] 
/// * [batchId] 
/// * [name] 
/// * [itemType] 
/// * [startDate] 
/// * [endDate] 
/// * [autoStopWhenBatchEmpty] 
/// * [maxUsage] 
/// * [currentUsage] 
@BuiltValue()
abstract class CampaignPromotionItemResponse implements Built<CampaignPromotionItemResponse, CampaignPromotionItemResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'campaignId')
  String? get campaignId;

  @BuiltValueField(wireName: r'productVariantId')
  String? get productVariantId;

  @BuiltValueField(wireName: r'batchId')
  String? get batchId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'itemType')
  PromotionType? get itemType;
  // enum itemTypeEnum {  Clearance,  NewArrival,  Regular,  };

  @BuiltValueField(wireName: r'startDate')
  DateTime? get startDate;

  @BuiltValueField(wireName: r'endDate')
  DateTime? get endDate;

  @BuiltValueField(wireName: r'autoStopWhenBatchEmpty')
  bool? get autoStopWhenBatchEmpty;

  @BuiltValueField(wireName: r'maxUsage')
  int? get maxUsage;

  @BuiltValueField(wireName: r'currentUsage')
  int? get currentUsage;

  CampaignPromotionItemResponse._();

  factory CampaignPromotionItemResponse([void updates(CampaignPromotionItemResponseBuilder b)]) = _$CampaignPromotionItemResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CampaignPromotionItemResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CampaignPromotionItemResponse> get serializer => _$CampaignPromotionItemResponseSerializer();
}

class _$CampaignPromotionItemResponseSerializer implements PrimitiveSerializer<CampaignPromotionItemResponse> {
  @override
  final Iterable<Type> types = const [CampaignPromotionItemResponse, _$CampaignPromotionItemResponse];

  @override
  final String wireName = r'CampaignPromotionItemResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CampaignPromotionItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.campaignId != null) {
      yield r'campaignId';
      yield serializers.serialize(
        object.campaignId,
        specifiedType: const FullType(String),
      );
    }
    if (object.productVariantId != null) {
      yield r'productVariantId';
      yield serializers.serialize(
        object.productVariantId,
        specifiedType: const FullType(String),
      );
    }
    if (object.batchId != null) {
      yield r'batchId';
      yield serializers.serialize(
        object.batchId,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.itemType != null) {
      yield r'itemType';
      yield serializers.serialize(
        object.itemType,
        specifiedType: const FullType(PromotionType),
      );
    }
    if (object.startDate != null) {
      yield r'startDate';
      yield serializers.serialize(
        object.startDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.endDate != null) {
      yield r'endDate';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.autoStopWhenBatchEmpty != null) {
      yield r'autoStopWhenBatchEmpty';
      yield serializers.serialize(
        object.autoStopWhenBatchEmpty,
        specifiedType: const FullType(bool),
      );
    }
    if (object.maxUsage != null) {
      yield r'maxUsage';
      yield serializers.serialize(
        object.maxUsage,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.currentUsage != null) {
      yield r'currentUsage';
      yield serializers.serialize(
        object.currentUsage,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CampaignPromotionItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CampaignPromotionItemResponseBuilder result,
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
        case r'campaignId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.campaignId = valueDes;
          break;
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'itemType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PromotionType),
          ) as PromotionType;
          result.itemType = valueDes;
          break;
        case r'startDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.startDate = valueDes;
          break;
        case r'endDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.endDate = valueDes;
          break;
        case r'autoStopWhenBatchEmpty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.autoStopWhenBatchEmpty = valueDes;
          break;
        case r'maxUsage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxUsage = valueDes;
          break;
        case r'currentUsage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentUsage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CampaignPromotionItemResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CampaignPromotionItemResponseBuilder();
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

