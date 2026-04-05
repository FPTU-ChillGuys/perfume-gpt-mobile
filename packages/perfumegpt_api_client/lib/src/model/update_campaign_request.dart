//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/update_campaign_promotion_item_request.dart';
import 'package:perfumegpt_api_client/src/model/campaign_type.dart';
import 'package:perfumegpt_api_client/src/model/update_campaign_voucher_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_campaign_request.g.dart';

/// UpdateCampaignRequest
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [startDate] 
/// * [endDate] 
/// * [type] 
/// * [items] 
/// * [vouchers] 
@BuiltValue()
abstract class UpdateCampaignRequest implements Built<UpdateCampaignRequest, UpdateCampaignRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'startDate')
  DateTime? get startDate;

  @BuiltValueField(wireName: r'endDate')
  DateTime? get endDate;

  @BuiltValueField(wireName: r'type')
  CampaignType? get type;
  // enum typeEnum {  FlashSale,  Clearance,  };

  @BuiltValueField(wireName: r'items')
  BuiltList<UpdateCampaignPromotionItemRequest> get items;

  @BuiltValueField(wireName: r'vouchers')
  BuiltList<UpdateCampaignVoucherRequest> get vouchers;

  UpdateCampaignRequest._();

  factory UpdateCampaignRequest([void updates(UpdateCampaignRequestBuilder b)]) = _$UpdateCampaignRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateCampaignRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateCampaignRequest> get serializer => _$UpdateCampaignRequestSerializer();
}

class _$UpdateCampaignRequestSerializer implements PrimitiveSerializer<UpdateCampaignRequest> {
  @override
  final Iterable<Type> types = const [UpdateCampaignRequest, _$UpdateCampaignRequest];

  @override
  final String wireName = r'UpdateCampaignRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateCampaignRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.startDate != null) {
      yield r'startDate';
      yield serializers.serialize(
        object.startDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.endDate != null) {
      yield r'endDate';
      yield serializers.serialize(
        object.endDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(CampaignType),
      );
    }
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(UpdateCampaignPromotionItemRequest)]),
    );
    yield r'vouchers';
    yield serializers.serialize(
      object.vouchers,
      specifiedType: const FullType(BuiltList, [FullType(UpdateCampaignVoucherRequest)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateCampaignRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateCampaignRequestBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'startDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startDate = valueDes;
          break;
        case r'endDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endDate = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CampaignType),
          ) as CampaignType;
          result.type = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UpdateCampaignPromotionItemRequest)]),
          ) as BuiltList<UpdateCampaignPromotionItemRequest>;
          result.items.replace(valueDes);
          break;
        case r'vouchers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UpdateCampaignVoucherRequest)]),
          ) as BuiltList<UpdateCampaignVoucherRequest>;
          result.vouchers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateCampaignRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateCampaignRequestBuilder();
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

