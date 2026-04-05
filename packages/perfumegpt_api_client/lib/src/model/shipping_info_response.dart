//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/shipping_status.dart';
import 'package:perfumegpt_api_client/src/model/carrier_name.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shipping_info_response.g.dart';

/// ShippingInfoResponse
///
/// Properties:
/// * [id] 
/// * [carrierName] 
/// * [trackingNumber] 
/// * [shippingFee] 
/// * [status] 
/// * [estimatedDeliveryDate] 
/// * [shippedDate] 
@BuiltValue()
abstract class ShippingInfoResponse implements Built<ShippingInfoResponse, ShippingInfoResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'carrierName')
  CarrierName? get carrierName;
  // enum carrierNameEnum {  GHN,  GHTK,  };

  @BuiltValueField(wireName: r'trackingNumber')
  String? get trackingNumber;

  @BuiltValueField(wireName: r'shippingFee')
  num? get shippingFee;

  @BuiltValueField(wireName: r'status')
  ShippingStatus? get status;
  // enum statusEnum {  Pending,  Delivering,  Delivered,  Cancelled,  Returning,  Returned,  };

  @BuiltValueField(wireName: r'estimatedDeliveryDate')
  DateTime? get estimatedDeliveryDate;

  @BuiltValueField(wireName: r'shippedDate')
  DateTime? get shippedDate;

  ShippingInfoResponse._();

  factory ShippingInfoResponse([void updates(ShippingInfoResponseBuilder b)]) = _$ShippingInfoResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShippingInfoResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShippingInfoResponse> get serializer => _$ShippingInfoResponseSerializer();
}

class _$ShippingInfoResponseSerializer implements PrimitiveSerializer<ShippingInfoResponse> {
  @override
  final Iterable<Type> types = const [ShippingInfoResponse, _$ShippingInfoResponse];

  @override
  final String wireName = r'ShippingInfoResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShippingInfoResponse object, {
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
    ShippingInfoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ShippingInfoResponseBuilder result,
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
  ShippingInfoResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShippingInfoResponseBuilder();
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

