//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/discount_type.dart';
import 'package:perfumegpt_api_client/src/model/voucher_type.dart';
import 'package:perfumegpt_api_client/src/model/promotion_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_campaign_voucher_request.g.dart';

/// CreateCampaignVoucherRequest
///
/// Properties:
/// * [code] 
/// * [discountValue] 
/// * [targetItemType] 
/// * [discountType] 
/// * [applyType] 
@BuiltValue()
abstract class CreateCampaignVoucherRequest implements Built<CreateCampaignVoucherRequest, CreateCampaignVoucherRequestBuilder> {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'discountValue')
  num? get discountValue;

  @BuiltValueField(wireName: r'targetItemType')
  PromotionType? get targetItemType;
  // enum targetItemTypeEnum {  Clearance,  NewArrival,  Regular,  };

  @BuiltValueField(wireName: r'discountType')
  DiscountType? get discountType;
  // enum discountTypeEnum {  Percentage,  FixedAmount,  };

  @BuiltValueField(wireName: r'applyType')
  VoucherType? get applyType;
  // enum applyTypeEnum {  Order,  Product,  };

  CreateCampaignVoucherRequest._();

  factory CreateCampaignVoucherRequest([void updates(CreateCampaignVoucherRequestBuilder b)]) = _$CreateCampaignVoucherRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateCampaignVoucherRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateCampaignVoucherRequest> get serializer => _$CreateCampaignVoucherRequestSerializer();
}

class _$CreateCampaignVoucherRequestSerializer implements PrimitiveSerializer<CreateCampaignVoucherRequest> {
  @override
  final Iterable<Type> types = const [CreateCampaignVoucherRequest, _$CreateCampaignVoucherRequest];

  @override
  final String wireName = r'CreateCampaignVoucherRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateCampaignVoucherRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    if (object.discountValue != null) {
      yield r'discountValue';
      yield serializers.serialize(
        object.discountValue,
        specifiedType: const FullType(num),
      );
    }
    if (object.targetItemType != null) {
      yield r'targetItemType';
      yield serializers.serialize(
        object.targetItemType,
        specifiedType: const FullType(PromotionType),
      );
    }
    if (object.discountType != null) {
      yield r'discountType';
      yield serializers.serialize(
        object.discountType,
        specifiedType: const FullType(DiscountType),
      );
    }
    if (object.applyType != null) {
      yield r'applyType';
      yield serializers.serialize(
        object.applyType,
        specifiedType: const FullType(VoucherType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateCampaignVoucherRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateCampaignVoucherRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'discountValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.discountValue = valueDes;
          break;
        case r'targetItemType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PromotionType),
          ) as PromotionType;
          result.targetItemType = valueDes;
          break;
        case r'discountType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DiscountType),
          ) as DiscountType;
          result.discountType = valueDes;
          break;
        case r'applyType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VoucherType),
          ) as VoucherType;
          result.applyType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateCampaignVoucherRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCampaignVoucherRequestBuilder();
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

