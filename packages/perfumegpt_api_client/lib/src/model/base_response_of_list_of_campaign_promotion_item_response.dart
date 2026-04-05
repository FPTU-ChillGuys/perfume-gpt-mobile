//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/campaign_promotion_item_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_response_of_list_of_campaign_promotion_item_response.g.dart';

/// BaseResponseOfListOfCampaignPromotionItemResponse
///
/// Properties:
/// * [payload] 
/// * [success] 
/// * [message] 
/// * [errors] 
/// * [errorType] 
@BuiltValue()
abstract class BaseResponseOfListOfCampaignPromotionItemResponse implements Built<BaseResponseOfListOfCampaignPromotionItemResponse, BaseResponseOfListOfCampaignPromotionItemResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  BuiltList<CampaignPromotionItemResponse>? get payload;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'errors')
  BuiltList<String>? get errors;

  @BuiltValueField(wireName: r'errorType')
  int? get errorType;

  BaseResponseOfListOfCampaignPromotionItemResponse._();

  factory BaseResponseOfListOfCampaignPromotionItemResponse([void updates(BaseResponseOfListOfCampaignPromotionItemResponseBuilder b)]) = _$BaseResponseOfListOfCampaignPromotionItemResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseResponseOfListOfCampaignPromotionItemResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseResponseOfListOfCampaignPromotionItemResponse> get serializer => _$BaseResponseOfListOfCampaignPromotionItemResponseSerializer();
}

class _$BaseResponseOfListOfCampaignPromotionItemResponseSerializer implements PrimitiveSerializer<BaseResponseOfListOfCampaignPromotionItemResponse> {
  @override
  final Iterable<Type> types = const [BaseResponseOfListOfCampaignPromotionItemResponse, _$BaseResponseOfListOfCampaignPromotionItemResponse];

  @override
  final String wireName = r'BaseResponseOfListOfCampaignPromotionItemResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseResponseOfListOfCampaignPromotionItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType.nullable(BuiltList, [FullType(CampaignPromotionItemResponse)]),
      );
    }
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.errorType != null) {
      yield r'errorType';
      yield serializers.serialize(
        object.errorType,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseResponseOfListOfCampaignPromotionItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BaseResponseOfListOfCampaignPromotionItemResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(CampaignPromotionItemResponse)]),
          ) as BuiltList<CampaignPromotionItemResponse>?;
          if (valueDes == null) continue;
          result.payload.replace(valueDes);
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.errors.replace(valueDes);
          break;
        case r'errorType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.errorType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BaseResponseOfListOfCampaignPromotionItemResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseResponseOfListOfCampaignPromotionItemResponseBuilder();
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

