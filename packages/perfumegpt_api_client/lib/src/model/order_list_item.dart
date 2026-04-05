//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/shipping_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/payment_status.dart';
import 'package:perfumegpt_api_client/src/model/order_detail_list_item.dart';
import 'package:perfumegpt_api_client/src/model/order_status.dart';
import 'package:perfumegpt_api_client/src/model/order_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_list_item.g.dart';

/// OrderListItem
///
/// Properties:
/// * [id] 
/// * [code] 
/// * [customerId] 
/// * [customerName] 
/// * [staffId] 
/// * [staffName] 
/// * [type] 
/// * [status] 
/// * [paymentStatus] 
/// * [totalAmount] 
/// * [itemCount] 
/// * [isReturnalbe] 
/// * [shippingStatus] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [orderDetails] 
@BuiltValue()
abstract class OrderListItem implements Built<OrderListItem, OrderListItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'customerName')
  String? get customerName;

  @BuiltValueField(wireName: r'staffId')
  String? get staffId;

  @BuiltValueField(wireName: r'staffName')
  String? get staffName;

  @BuiltValueField(wireName: r'type')
  OrderType? get type;
  // enum typeEnum {  Online,  Offline,  };

  @BuiltValueField(wireName: r'status')
  OrderStatus? get status;
  // enum statusEnum {  Pending,  Processing,  Delivering,  Delivered,  Returning,  Cancelled,  Partial_Returned,  Returned,  };

  @BuiltValueField(wireName: r'paymentStatus')
  PaymentStatus? get paymentStatus;
  // enum paymentStatusEnum {  Unpaid,  Paid,  Partial_Refunded,  Refunded,  };

  @BuiltValueField(wireName: r'totalAmount')
  num? get totalAmount;

  @BuiltValueField(wireName: r'itemCount')
  int? get itemCount;

  @BuiltValueField(wireName: r'isReturnalbe')
  bool? get isReturnalbe;

  @BuiltValueField(wireName: r'shippingStatus')
  ShippingStatus? get shippingStatus;
  // enum shippingStatusEnum {  Pending,  Delivering,  Delivered,  Cancelled,  Returning,  Returned,  };

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'orderDetails')
  BuiltList<OrderDetailListItem> get orderDetails;

  OrderListItem._();

  factory OrderListItem([void updates(OrderListItemBuilder b)]) = _$OrderListItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderListItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderListItem> get serializer => _$OrderListItemSerializer();
}

class _$OrderListItemSerializer implements PrimitiveSerializer<OrderListItem> {
  @override
  final Iterable<Type> types = const [OrderListItem, _$OrderListItem];

  @override
  final String wireName = r'OrderListItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderListItem object, {
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
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.customerName != null) {
      yield r'customerName';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.staffId != null) {
      yield r'staffId';
      yield serializers.serialize(
        object.staffId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.staffName != null) {
      yield r'staffName';
      yield serializers.serialize(
        object.staffName,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    if (object.itemCount != null) {
      yield r'itemCount';
      yield serializers.serialize(
        object.itemCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.isReturnalbe != null) {
      yield r'isReturnalbe';
      yield serializers.serialize(
        object.isReturnalbe,
        specifiedType: const FullType(bool),
      );
    }
    if (object.shippingStatus != null) {
      yield r'shippingStatus';
      yield serializers.serialize(
        object.shippingStatus,
        specifiedType: const FullType.nullable(ShippingStatus),
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
    yield r'orderDetails';
    yield serializers.serialize(
      object.orderDetails,
      specifiedType: const FullType(BuiltList, [FullType(OrderDetailListItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderListItemBuilder result,
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
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerId = valueDes;
          break;
        case r'customerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerName = valueDes;
          break;
        case r'staffId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staffId = valueDes;
          break;
        case r'staffName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staffName = valueDes;
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
        case r'itemCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.itemCount = valueDes;
          break;
        case r'isReturnalbe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isReturnalbe = valueDes;
          break;
        case r'shippingStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ShippingStatus),
          ) as ShippingStatus?;
          if (valueDes == null) continue;
          result.shippingStatus = valueDes;
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
        case r'orderDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OrderDetailListItem)]),
          ) as BuiltList<OrderDetailListItem>;
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
  OrderListItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderListItemBuilder();
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

