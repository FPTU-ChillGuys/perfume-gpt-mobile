//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/cancel_request_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_cancel_request_response.g.dart';

/// OrderCancelRequestResponse
///
/// Properties:
/// * [id] 
/// * [orderId] 
/// * [requestedById] 
/// * [requestedByEmail] 
/// * [processedById] 
/// * [reason] 
/// * [staffNote] 
/// * [status] 
/// * [isRefundRequired] 
/// * [refundAmount] 
/// * [isRefunded] 
/// * [vnpTransactionNo] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class OrderCancelRequestResponse implements Built<OrderCancelRequestResponse, OrderCancelRequestResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'orderId')
  String? get orderId;

  @BuiltValueField(wireName: r'requestedById')
  String? get requestedById;

  @BuiltValueField(wireName: r'requestedByEmail')
  String? get requestedByEmail;

  @BuiltValueField(wireName: r'processedById')
  String? get processedById;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'staffNote')
  String? get staffNote;

  @BuiltValueField(wireName: r'status')
  CancelRequestStatus? get status;
  // enum statusEnum {  Pending,  Approved,  Rejected,  };

  @BuiltValueField(wireName: r'isRefundRequired')
  bool? get isRefundRequired;

  @BuiltValueField(wireName: r'refundAmount')
  num? get refundAmount;

  @BuiltValueField(wireName: r'isRefunded')
  bool? get isRefunded;

  @BuiltValueField(wireName: r'vnpTransactionNo')
  String? get vnpTransactionNo;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  OrderCancelRequestResponse._();

  factory OrderCancelRequestResponse([void updates(OrderCancelRequestResponseBuilder b)]) = _$OrderCancelRequestResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderCancelRequestResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderCancelRequestResponse> get serializer => _$OrderCancelRequestResponseSerializer();
}

class _$OrderCancelRequestResponseSerializer implements PrimitiveSerializer<OrderCancelRequestResponse> {
  @override
  final Iterable<Type> types = const [OrderCancelRequestResponse, _$OrderCancelRequestResponse];

  @override
  final String wireName = r'OrderCancelRequestResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderCancelRequestResponse object, {
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
    if (object.requestedById != null) {
      yield r'requestedById';
      yield serializers.serialize(
        object.requestedById,
        specifiedType: const FullType(String),
      );
    }
    if (object.requestedByEmail != null) {
      yield r'requestedByEmail';
      yield serializers.serialize(
        object.requestedByEmail,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.processedById != null) {
      yield r'processedById';
      yield serializers.serialize(
        object.processedById,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    if (object.staffNote != null) {
      yield r'staffNote';
      yield serializers.serialize(
        object.staffNote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(CancelRequestStatus),
      );
    }
    if (object.isRefundRequired != null) {
      yield r'isRefundRequired';
      yield serializers.serialize(
        object.isRefundRequired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.refundAmount != null) {
      yield r'refundAmount';
      yield serializers.serialize(
        object.refundAmount,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.isRefunded != null) {
      yield r'isRefunded';
      yield serializers.serialize(
        object.isRefunded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.vnpTransactionNo != null) {
      yield r'vnpTransactionNo';
      yield serializers.serialize(
        object.vnpTransactionNo,
        specifiedType: const FullType.nullable(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderCancelRequestResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderCancelRequestResponseBuilder result,
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
        case r'requestedById':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestedById = valueDes;
          break;
        case r'requestedByEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.requestedByEmail = valueDes;
          break;
        case r'processedById':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.processedById = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'staffNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staffNote = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CancelRequestStatus),
          ) as CancelRequestStatus;
          result.status = valueDes;
          break;
        case r'isRefundRequired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRefundRequired = valueDes;
          break;
        case r'refundAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.refundAmount = valueDes;
          break;
        case r'isRefunded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRefunded = valueDes;
          break;
        case r'vnpTransactionNo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.vnpTransactionNo = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderCancelRequestResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderCancelRequestResponseBuilder();
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

