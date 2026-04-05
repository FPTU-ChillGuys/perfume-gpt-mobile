//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/create_order_detail_request.dart';
import 'package:perfumegpt_api_client/src/model/payment_information.dart';
import 'package:perfumegpt_api_client/src/model/contact_address_information.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_in_store_order_request.g.dart';

/// CreateInStoreOrderRequest
///
/// Properties:
/// * [voucherCode] 
/// * [isPickupInStore] 
/// * [orderDetails] 
/// * [recipient] 
/// * [payment] 
@BuiltValue()
abstract class CreateInStoreOrderRequest implements Built<CreateInStoreOrderRequest, CreateInStoreOrderRequestBuilder> {
  @BuiltValueField(wireName: r'voucherCode')
  String? get voucherCode;

  @BuiltValueField(wireName: r'isPickupInStore')
  bool? get isPickupInStore;

  @BuiltValueField(wireName: r'orderDetails')
  BuiltList<CreateOrderDetailRequest> get orderDetails;

  @BuiltValueField(wireName: r'recipient')
  ContactAddressInformation? get recipient;

  @BuiltValueField(wireName: r'payment')
  PaymentInformation get payment;

  CreateInStoreOrderRequest._();

  factory CreateInStoreOrderRequest([void updates(CreateInStoreOrderRequestBuilder b)]) = _$CreateInStoreOrderRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateInStoreOrderRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateInStoreOrderRequest> get serializer => _$CreateInStoreOrderRequestSerializer();
}

class _$CreateInStoreOrderRequestSerializer implements PrimitiveSerializer<CreateInStoreOrderRequest> {
  @override
  final Iterable<Type> types = const [CreateInStoreOrderRequest, _$CreateInStoreOrderRequest];

  @override
  final String wireName = r'CreateInStoreOrderRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateInStoreOrderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.voucherCode != null) {
      yield r'voucherCode';
      yield serializers.serialize(
        object.voucherCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.isPickupInStore != null) {
      yield r'isPickupInStore';
      yield serializers.serialize(
        object.isPickupInStore,
        specifiedType: const FullType(bool),
      );
    }
    yield r'orderDetails';
    yield serializers.serialize(
      object.orderDetails,
      specifiedType: const FullType(BuiltList, [FullType(CreateOrderDetailRequest)]),
    );
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
    CreateInStoreOrderRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateInStoreOrderRequestBuilder result,
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
        case r'isPickupInStore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPickupInStore = valueDes;
          break;
        case r'orderDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CreateOrderDetailRequest)]),
          ) as BuiltList<CreateOrderDetailRequest>;
          result.orderDetails.replace(valueDes);
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
  CreateInStoreOrderRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInStoreOrderRequestBuilder();
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

