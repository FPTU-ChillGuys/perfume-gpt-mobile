//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/shipping_status.dart';
import 'package:perfumegpt_api_client/src/model/carrier_name.dart';
import 'package:perfumegpt_api_client/src/model/shipping_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'shipping_info_list_item.g.dart';

/// ShippingInfoListItem
///
/// Properties:
/// * [id] 
/// * [orderId] 
/// * [carrierName] 
/// * [trackingNumber] 
/// * [shippingFee] 
/// * [type] 
/// * [status] 
/// * [leadTime] 
/// * [shippedDate] 
@BuiltValue()
abstract class ShippingInfoListItem implements Built<ShippingInfoListItem, ShippingInfoListItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'orderId')
  String? get orderId;

  @BuiltValueField(wireName: r'carrierName')
  CarrierName? get carrierName;
  // enum carrierNameEnum {  GHN,  GHTK,  };

  @BuiltValueField(wireName: r'trackingNumber')
  String? get trackingNumber;

  @BuiltValueField(wireName: r'shippingFee')
  num? get shippingFee;

  @BuiltValueField(wireName: r'type')
  ShippingType? get type;
  // enum typeEnum {  Forward,  Return,  };

  @BuiltValueField(wireName: r'status')
  ShippingStatus? get status;
  // enum statusEnum {  Pending,  Delivering,  Delivered,  Cancelled,  Returning,  Returned,  };

  @BuiltValueField(wireName: r'leadTime')
  DateTime? get leadTime;

  @BuiltValueField(wireName: r'shippedDate')
  DateTime? get shippedDate;

  ShippingInfoListItem._();

  factory ShippingInfoListItem([void updates(ShippingInfoListItemBuilder b)]) = _$ShippingInfoListItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShippingInfoListItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShippingInfoListItem> get serializer => _$ShippingInfoListItemSerializer();
}

class _$ShippingInfoListItemSerializer implements PrimitiveSerializer<ShippingInfoListItem> {
  @override
  final Iterable<Type> types = const [ShippingInfoListItem, _$ShippingInfoListItem];

  @override
  final String wireName = r'ShippingInfoListItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShippingInfoListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderId != null) {
      yield r'orderId';
      yield serializers.serialize(
        object.orderId,
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
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(ShippingType),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(ShippingStatus),
      );
    }
    if (object.leadTime != null) {
      yield r'leadTime';
      yield serializers.serialize(
        object.leadTime,
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
    ShippingInfoListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ShippingInfoListItemBuilder result,
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
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ShippingType),
          ) as ShippingType;
          result.type = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ShippingStatus),
          ) as ShippingStatus;
          result.status = valueDes;
          break;
        case r'leadTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.leadTime = valueDes;
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
  ShippingInfoListItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShippingInfoListItemBuilder();
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

