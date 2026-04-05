//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_info_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/order_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/shipping_info_response.dart';
import 'package:perfumegpt_api_client/src/model/payment_status.dart';
import 'package:perfumegpt_api_client/src/model/recipient_info_response.dart';
import 'package:perfumegpt_api_client/src/model/order_status.dart';
import 'package:perfumegpt_api_client/src/model/order_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_order_response.g.dart';

/// UserOrderResponse
///
/// Properties:
/// * [id] 
/// * [code] 
/// * [type] 
/// * [status] 
/// * [isReturnable] 
/// * [paymentStatus] 
/// * [totalAmount] 
/// * [voucherCode] 
/// * [paymentExpiresAt] 
/// * [paidAt] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [paymentTransactions] 
/// * [shippingInfo] 
/// * [recipientInfo] 
/// * [orderDetails] 
@BuiltValue()
abstract class UserOrderResponse implements Built<UserOrderResponse, UserOrderResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'type')
  OrderType? get type;
  // enum typeEnum {  Online,  Offline,  };

  @BuiltValueField(wireName: r'status')
  OrderStatus? get status;
  // enum statusEnum {  Pending,  Processing,  Delivering,  Delivered,  Returning,  Cancelled,  Partial_Returned,  Returned,  };

  @BuiltValueField(wireName: r'isReturnable')
  bool? get isReturnable;

  @BuiltValueField(wireName: r'paymentStatus')
  PaymentStatus? get paymentStatus;
  // enum paymentStatusEnum {  Unpaid,  Paid,  Partial_Refunded,  Refunded,  };

  @BuiltValueField(wireName: r'totalAmount')
  num? get totalAmount;

  @BuiltValueField(wireName: r'voucherCode')
  String? get voucherCode;

  @BuiltValueField(wireName: r'paymentExpiresAt')
  DateTime? get paymentExpiresAt;

  @BuiltValueField(wireName: r'paidAt')
  DateTime? get paidAt;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'paymentTransactions')
  BuiltList<PaymentInfoResponse>? get paymentTransactions;

  @BuiltValueField(wireName: r'shippingInfo')
  ShippingInfoResponse? get shippingInfo;

  @BuiltValueField(wireName: r'recipientInfo')
  RecipientInfoResponse? get recipientInfo;

  @BuiltValueField(wireName: r'orderDetails')
  BuiltList<OrderDetailResponse> get orderDetails;

  UserOrderResponse._();

  factory UserOrderResponse([void updates(UserOrderResponseBuilder b)]) = _$UserOrderResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserOrderResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserOrderResponse> get serializer => _$UserOrderResponseSerializer();
}

class _$UserOrderResponseSerializer implements PrimitiveSerializer<UserOrderResponse> {
  @override
  final Iterable<Type> types = const [UserOrderResponse, _$UserOrderResponse];

  @override
  final String wireName = r'UserOrderResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserOrderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(OrderType),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(OrderStatus),
      );
    }
    if (object.isReturnable != null) {
      yield r'isReturnable';
      yield serializers.serialize(
        object.isReturnable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.paymentStatus != null) {
      yield r'paymentStatus';
      yield serializers.serialize(
        object.paymentStatus,
        specifiedType: const FullType(PaymentStatus),
      );
    }
    if (object.totalAmount != null) {
      yield r'totalAmount';
      yield serializers.serialize(
        object.totalAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.voucherCode != null) {
      yield r'voucherCode';
      yield serializers.serialize(
        object.voucherCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.paymentExpiresAt != null) {
      yield r'paymentExpiresAt';
      yield serializers.serialize(
        object.paymentExpiresAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.paidAt != null) {
      yield r'paidAt';
      yield serializers.serialize(
        object.paidAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.paymentTransactions != null) {
      yield r'paymentTransactions';
      yield serializers.serialize(
        object.paymentTransactions,
        specifiedType: const FullType.nullable(BuiltList, [FullType(PaymentInfoResponse)]),
      );
    }
    if (object.shippingInfo != null) {
      yield r'shippingInfo';
      yield serializers.serialize(
        object.shippingInfo,
        specifiedType: const FullType.nullable(ShippingInfoResponse),
      );
    }
    if (object.recipientInfo != null) {
      yield r'recipientInfo';
      yield serializers.serialize(
        object.recipientInfo,
        specifiedType: const FullType.nullable(RecipientInfoResponse),
      );
    }
    yield r'orderDetails';
    yield serializers.serialize(
      object.orderDetails,
      specifiedType: const FullType(BuiltList, [FullType(OrderDetailResponse)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserOrderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserOrderResponseBuilder result,
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
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderType),
          ) as OrderType;
          result.type = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderStatus),
          ) as OrderStatus;
          result.status = valueDes;
          break;
        case r'isReturnable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isReturnable = valueDes;
          break;
        case r'paymentStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentStatus),
          ) as PaymentStatus;
          result.paymentStatus = valueDes;
          break;
        case r'totalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalAmount = valueDes;
          break;
        case r'voucherCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.voucherCode = valueDes;
          break;
        case r'paymentExpiresAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.paymentExpiresAt = valueDes;
          break;
        case r'paidAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.paidAt = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        case r'paymentTransactions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(PaymentInfoResponse)]),
          ) as BuiltList<PaymentInfoResponse>?;
          if (valueDes == null) continue;
          result.paymentTransactions.replace(valueDes);
          break;
        case r'shippingInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ShippingInfoResponse),
          ) as ShippingInfoResponse?;
          if (valueDes == null) continue;
          result.shippingInfo.replace(valueDes);
          break;
        case r'recipientInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RecipientInfoResponse),
          ) as RecipientInfoResponse?;
          if (valueDes == null) continue;
          result.recipientInfo.replace(valueDes);
          break;
        case r'orderDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OrderDetailResponse)]),
          ) as BuiltList<OrderDetailResponse>;
          result.orderDetails.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserOrderResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserOrderResponseBuilder();
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

