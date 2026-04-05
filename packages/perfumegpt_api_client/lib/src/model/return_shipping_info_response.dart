//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/shipping_status.dart';
import 'package:perfumegpt_api_client/src/model/carrier_name.dart';
import 'package:perfumegpt_api_client/src/model/shipping_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'return_shipping_info_response.g.dart';

/// ReturnShippingInfoResponse
///
/// Properties:
/// * [id] 
/// * [carrierName] 
/// * [trackingNumber] 
/// * [type] 
/// * [shippingFee] 
/// * [status] 
/// * [estimatedDeliveryDate] 
/// * [shippedDate] 
@BuiltValue()
abstract class ReturnShippingInfoResponse implements Built<ReturnShippingInfoResponse, ReturnShippingInfoResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'carrierName')
  CarrierName? get carrierName;
  // enum carrierNameEnum {  GHN,  GHTK,  };

  @BuiltValueField(wireName: r'trackingNumber')
  String? get trackingNumber;

  @BuiltValueField(wireName: r'type')
  ShippingType? get type;
  // enum typeEnum {  Forward,  Return,  };

  @BuiltValueField(wireName: r'shippingFee')
  num? get shippingFee;

  @BuiltValueField(wireName: r'status')
  ShippingStatus? get status;
  // enum statusEnum {  Pending,  Delivering,  Delivered,  Cancelled,  Returning,  Returned,  };

  @BuiltValueField(wireName: r'estimatedDeliveryDate')
  DateTime? get estimatedDeliveryDate;

  @BuiltValueField(wireName: r'shippedDate')
  DateTime? get shippedDate;

  ReturnShippingInfoResponse._();

  factory ReturnShippingInfoResponse([void updates(ReturnShippingInfoResponseBuilder b)]) = _$ReturnShippingInfoResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReturnShippingInfoResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReturnShippingInfoResponse> get serializer => _$ReturnShippingInfoResponseSerializer();
}

class _$ReturnShippingInfoResponseSerializer implements PrimitiveSerializer<ReturnShippingInfoResponse> {
  @override
  final Iterable<Type> types = const [ReturnShippingInfoResponse, _$ReturnShippingInfoResponse];

  @override
  final String wireName = r'ReturnShippingInfoResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReturnShippingInfoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.carrierName != null) {
      yield r'carrierName';
      yield serializers.serialize(
        object.carrierName,
        specifiedType: const FullType(CarrierName),
      );
    }
    if (object.trackingNumber != null) {
      yield r'trackingNumber';
      yield serializers.serialize(
        object.trackingNumber,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ShippingType),
      );
    }
    if (object.shippingFee != null) {
      yield r'shippingFee';
      yield serializers.serialize(
        object.shippingFee,
        specifiedType: const FullType(num),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(ShippingStatus),
      );
    }
    if (object.estimatedDeliveryDate != null) {
      yield r'estimatedDeliveryDate';
      yield serializers.serialize(
        object.estimatedDeliveryDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.shippedDate != null) {
      yield r'shippedDate';
      yield serializers.serialize(
        object.shippedDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReturnShippingInfoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReturnShippingInfoResponseBuilder result,
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
        case r'carrierName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CarrierName),
          ) as CarrierName;
          result.carrierName = valueDes;
          break;
        case r'trackingNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.trackingNumber = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ShippingType),
          ) as ShippingType;
          result.type = valueDes;
          break;
        case r'shippingFee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.shippingFee = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ShippingStatus),
          ) as ShippingStatus;
          result.status = valueDes;
          break;
        case r'estimatedDeliveryDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.estimatedDeliveryDate = valueDes;
          break;
        case r'shippedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.shippedDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReturnShippingInfoResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReturnShippingInfoResponseBuilder();
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

