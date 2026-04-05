//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/return_order_reason.dart';
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/contact_address_information.dart';
import 'package:perfumegpt_api_client/src/model/return_item_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_return_request_dto.g.dart';

/// CreateReturnRequestDto
///
/// Properties:
/// * [orderId] 
/// * [reason] 
/// * [returnItems] 
/// * [customerNote] 
/// * [savedAddressId] 
/// * [recipient] 
/// * [temporaryMediaIds] 
@BuiltValue()
abstract class CreateReturnRequestDto implements Built<CreateReturnRequestDto, CreateReturnRequestDtoBuilder> {
  @BuiltValueField(wireName: r'orderId')
  String get orderId;

  @BuiltValueField(wireName: r'reason')
  ReturnOrderReason get reason;
  // enum reasonEnum {  DamagedProduct,  WrongItemReceived,  ItemNotAsDescribed,  ChangedMind,  AllergicReaction,  };

  @BuiltValueField(wireName: r'returnItems')
  BuiltList<ReturnItemDto> get returnItems;

  @BuiltValueField(wireName: r'customerNote')
  String? get customerNote;

  @BuiltValueField(wireName: r'savedAddressId')
  String? get savedAddressId;

  @BuiltValueField(wireName: r'recipient')
  ContactAddressInformation? get recipient;

  @BuiltValueField(wireName: r'temporaryMediaIds')
  BuiltList<String>? get temporaryMediaIds;

  CreateReturnRequestDto._();

  factory CreateReturnRequestDto([void updates(CreateReturnRequestDtoBuilder b)]) = _$CreateReturnRequestDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateReturnRequestDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateReturnRequestDto> get serializer => _$CreateReturnRequestDtoSerializer();
}

class _$CreateReturnRequestDtoSerializer implements PrimitiveSerializer<CreateReturnRequestDto> {
  @override
  final Iterable<Type> types = const [CreateReturnRequestDto, _$CreateReturnRequestDto];

  @override
  final String wireName = r'CreateReturnRequestDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateReturnRequestDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'orderId';
    yield serializers.serialize(
      object.orderId,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(ReturnOrderReason),
    );
    yield r'returnItems';
    yield serializers.serialize(
      object.returnItems,
      specifiedType: const FullType(BuiltList, [FullType(ReturnItemDto)]),
    );
    if (object.customerNote != null) {
      yield r'customerNote';
      yield serializers.serialize(
        object.customerNote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.savedAddressId != null) {
      yield r'savedAddressId';
      yield serializers.serialize(
        object.savedAddressId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.recipient != null) {
      yield r'recipient';
      yield serializers.serialize(
        object.recipient,
        specifiedType: const FullType.nullable(ContactAddressInformation),
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
    CreateReturnRequestDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateReturnRequestDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReturnOrderReason),
          ) as ReturnOrderReason;
          result.reason = valueDes;
          break;
        case r'returnItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ReturnItemDto)]),
          ) as BuiltList<ReturnItemDto>;
          result.returnItems.replace(valueDes);
          break;
        case r'customerNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerNote = valueDes;
          break;
        case r'savedAddressId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.savedAddressId = valueDes;
          break;
        case r'recipient':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ContactAddressInformation),
          ) as ContactAddressInformation?;
          if (valueDes == null) continue;
          result.recipient.replace(valueDes);
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
  CreateReturnRequestDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateReturnRequestDtoBuilder();
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

