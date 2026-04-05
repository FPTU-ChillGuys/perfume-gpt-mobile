//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/payment_information.dart';
import 'package:perfumegpt_api_client/src/model/contact_address_information.dart';
import 'package:perfumegpt_api_client/src/model/delivery_method.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_order_request.g.dart';

/// CreateOrderRequest
///
/// Properties:
/// * [voucherCode] 
/// * [itemIds] 
/// * [expectedTotalPrice] 
/// * [deliveryMethod] 
/// * [savedAddressId] 
/// * [recipient] 
/// * [payment] 
@BuiltValue()
abstract class CreateOrderRequest implements Built<CreateOrderRequest, CreateOrderRequestBuilder> {
  @BuiltValueField(wireName: r'voucherCode')
  String? get voucherCode;

  @BuiltValueField(wireName: r'itemIds')
  BuiltList<String>? get itemIds;

  @BuiltValueField(wireName: r'expectedTotalPrice')
  num? get expectedTotalPrice;

  @BuiltValueField(wireName: r'deliveryMethod')
  DeliveryMethod? get deliveryMethod;
  // enum deliveryMethodEnum {  Delivery,  PickupInStore,  };

  @BuiltValueField(wireName: r'savedAddressId')
  String? get savedAddressId;

  @BuiltValueField(wireName: r'recipient')
  ContactAddressInformation? get recipient;

  @BuiltValueField(wireName: r'payment')
  PaymentInformation get payment;

  CreateOrderRequest._();

  factory CreateOrderRequest([void updates(CreateOrderRequestBuilder b)]) = _$CreateOrderRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateOrderRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateOrderRequest> get serializer => _$CreateOrderRequestSerializer();
}

class _$CreateOrderRequestSerializer implements PrimitiveSerializer<CreateOrderRequest> {
  @override
  final Iterable<Type> types = const [CreateOrderRequest, _$CreateOrderRequest];

  @override
  final String wireName = r'CreateOrderRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateOrderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.voucherCode != null) {
      yield r'voucherCode';
      yield serializers.serialize(
        object.voucherCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.itemIds != null) {
      yield r'itemIds';
      yield serializers.serialize(
        object.itemIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.expectedTotalPrice != null) {
      yield r'expectedTotalPrice';
      yield serializers.serialize(
        object.expectedTotalPrice,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.deliveryMethod != null) {
      yield r'deliveryMethod';
      yield serializers.serialize(
        object.deliveryMethod,
        specifiedType: const FullType(DeliveryMethod),
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
    yield r'payment';
    yield serializers.serialize(
      object.payment,
      specifiedType: const FullType(PaymentInformation),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateOrderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateOrderRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'voucherCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.voucherCode = valueDes;
          break;
        case r'itemIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.itemIds.replace(valueDes);
          break;
        case r'expectedTotalPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.expectedTotalPrice = valueDes;
          break;
        case r'deliveryMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeliveryMethod),
          ) as DeliveryMethod;
          result.deliveryMethod = valueDes;
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
        case r'payment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentInformation),
          ) as PaymentInformation;
          result.payment.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateOrderRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateOrderRequestBuilder();
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

