//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/contact_address_information.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_order_address_request.g.dart';

/// UpdateOrderAddressRequest
///
/// Properties:
/// * [savedAddressId] 
/// * [recipientInformation] 
@BuiltValue()
abstract class UpdateOrderAddressRequest implements Built<UpdateOrderAddressRequest, UpdateOrderAddressRequestBuilder> {
  @BuiltValueField(wireName: r'savedAddressId')
  String? get savedAddressId;

  @BuiltValueField(wireName: r'recipientInformation')
  ContactAddressInformation? get recipientInformation;

  UpdateOrderAddressRequest._();

  factory UpdateOrderAddressRequest([void updates(UpdateOrderAddressRequestBuilder b)]) = _$UpdateOrderAddressRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateOrderAddressRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateOrderAddressRequest> get serializer => _$UpdateOrderAddressRequestSerializer();
}

class _$UpdateOrderAddressRequestSerializer implements PrimitiveSerializer<UpdateOrderAddressRequest> {
  @override
  final Iterable<Type> types = const [UpdateOrderAddressRequest, _$UpdateOrderAddressRequest];

  @override
  final String wireName = r'UpdateOrderAddressRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateOrderAddressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.savedAddressId != null) {
      yield r'savedAddressId';
      yield serializers.serialize(
        object.savedAddressId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.recipientInformation != null) {
      yield r'recipientInformation';
      yield serializers.serialize(
        object.recipientInformation,
        specifiedType: const FullType.nullable(ContactAddressInformation),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateOrderAddressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateOrderAddressRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'savedAddressId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.savedAddressId = valueDes;
          break;
        case r'recipientInformation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ContactAddressInformation),
          ) as ContactAddressInformation?;
          if (valueDes == null) continue;
          result.recipientInformation.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateOrderAddressRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateOrderAddressRequestBuilder();
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

