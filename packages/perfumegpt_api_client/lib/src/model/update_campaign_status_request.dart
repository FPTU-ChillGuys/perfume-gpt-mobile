//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/campaign_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_campaign_status_request.g.dart';

/// UpdateCampaignStatusRequest
///
/// Properties:
/// * [status] 
@BuiltValue()
abstract class UpdateCampaignStatusRequest implements Built<UpdateCampaignStatusRequest, UpdateCampaignStatusRequestBuilder> {
  @BuiltValueField(wireName: r'status')
  CampaignStatus? get status;
  // enum statusEnum {  Upcoming,  Active,  Paused,  Completed,  Cancelled,  };

  UpdateCampaignStatusRequest._();

  factory UpdateCampaignStatusRequest([void updates(UpdateCampaignStatusRequestBuilder b)]) = _$UpdateCampaignStatusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateCampaignStatusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateCampaignStatusRequest> get serializer => _$UpdateCampaignStatusRequestSerializer();
}

class _$UpdateCampaignStatusRequestSerializer implements PrimitiveSerializer<UpdateCampaignStatusRequest> {
  @override
  final Iterable<Type> types = const [UpdateCampaignStatusRequest, _$UpdateCampaignStatusRequest];

  @override
  final String wireName = r'UpdateCampaignStatusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateCampaignStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(CampaignStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateCampaignStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateCampaignStatusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CampaignStatus),
          ) as CampaignStatus;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateCampaignStatusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateCampaignStatusRequestBuilder();
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

