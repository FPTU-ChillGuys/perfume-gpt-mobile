//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/return_shipping_info_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/order_return_request_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/return_request_status.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_return_request_response.g.dart';

/// OrderReturnRequestResponse
///
/// Properties:
/// * [id] 
/// * [orderId] 
/// * [orderCode] 
/// * [customerId] 
/// * [customerEmail] 
/// * [processedById] 
/// * [processedByName] 
/// * [inspectedById] 
/// * [inspectedByName] 
/// * [reason] 
/// * [customerNote] 
/// * [staffNote] 
/// * [inspectionNote] 
/// * [status] 
/// * [requestedRefundAmount] 
/// * [approvedRefundAmount] 
/// * [isRefunded] 
/// * [vnpTransactionNo] 
/// * [isRestocked] 
/// * [returnShippingInfo] 
/// * [returnDetails] 
/// * [proofImages] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class OrderReturnRequestResponse implements Built<OrderReturnRequestResponse, OrderReturnRequestResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'orderId')
  String? get orderId;

  @BuiltValueField(wireName: r'orderCode')
  String get orderCode;

  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'customerEmail')
  String? get customerEmail;

  @BuiltValueField(wireName: r'processedById')
  String? get processedById;

  @BuiltValueField(wireName: r'processedByName')
  String? get processedByName;

  @BuiltValueField(wireName: r'inspectedById')
  String? get inspectedById;

  @BuiltValueField(wireName: r'inspectedByName')
  String? get inspectedByName;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'customerNote')
  String? get customerNote;

  @BuiltValueField(wireName: r'staffNote')
  String? get staffNote;

  @BuiltValueField(wireName: r'inspectionNote')
  String? get inspectionNote;

  @BuiltValueField(wireName: r'status')
  ReturnRequestStatus? get status;
  // enum statusEnum {  Pending,  ApprovedForReturn,  Inspecting,  ReadyForRefund,  Completed,  Rejected,  };

  @BuiltValueField(wireName: r'requestedRefundAmount')
  num? get requestedRefundAmount;

  @BuiltValueField(wireName: r'approvedRefundAmount')
  num? get approvedRefundAmount;

  @BuiltValueField(wireName: r'isRefunded')
  bool? get isRefunded;

  @BuiltValueField(wireName: r'vnpTransactionNo')
  String? get vnpTransactionNo;

  @BuiltValueField(wireName: r'isRestocked')
  bool? get isRestocked;

  @BuiltValueField(wireName: r'returnShippingInfo')
  ReturnShippingInfoResponse? get returnShippingInfo;

  @BuiltValueField(wireName: r'returnDetails')
  BuiltList<OrderReturnRequestDetailResponse>? get returnDetails;

  @BuiltValueField(wireName: r'proofImages')
  BuiltList<MediaResponse>? get proofImages;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  OrderReturnRequestResponse._();

  factory OrderReturnRequestResponse([void updates(OrderReturnRequestResponseBuilder b)]) = _$OrderReturnRequestResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderReturnRequestResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderReturnRequestResponse> get serializer => _$OrderReturnRequestResponseSerializer();
}

class _$OrderReturnRequestResponseSerializer implements PrimitiveSerializer<OrderReturnRequestResponse> {
  @override
  final Iterable<Type> types = const [OrderReturnRequestResponse, _$OrderReturnRequestResponse];

  @override
  final String wireName = r'OrderReturnRequestResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderReturnRequestResponse object, {
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
    yield r'orderCode';
    yield serializers.serialize(
      object.orderCode,
      specifiedType: const FullType(String),
    );
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerEmail != null) {
      yield r'customerEmail';
      yield serializers.serialize(
        object.customerEmail,
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
    if (object.processedByName != null) {
      yield r'processedByName';
      yield serializers.serialize(
        object.processedByName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.inspectedById != null) {
      yield r'inspectedById';
      yield serializers.serialize(
        object.inspectedById,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.inspectedByName != null) {
      yield r'inspectedByName';
      yield serializers.serialize(
        object.inspectedByName,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    if (object.customerNote != null) {
      yield r'customerNote';
      yield serializers.serialize(
        object.customerNote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.staffNote != null) {
      yield r'staffNote';
      yield serializers.serialize(
        object.staffNote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.inspectionNote != null) {
      yield r'inspectionNote';
      yield serializers.serialize(
        object.inspectionNote,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(ReturnRequestStatus),
      );
    }
    if (object.requestedRefundAmount != null) {
      yield r'requestedRefundAmount';
      yield serializers.serialize(
        object.requestedRefundAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.approvedRefundAmount != null) {
      yield r'approvedRefundAmount';
      yield serializers.serialize(
        object.approvedRefundAmount,
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
    if (object.isRestocked != null) {
      yield r'isRestocked';
      yield serializers.serialize(
        object.isRestocked,
        specifiedType: const FullType(bool),
      );
    }
    if (object.returnShippingInfo != null) {
      yield r'returnShippingInfo';
      yield serializers.serialize(
        object.returnShippingInfo,
        specifiedType: const FullType.nullable(ReturnShippingInfoResponse),
      );
    }
    if (object.returnDetails != null) {
      yield r'returnDetails';
      yield serializers.serialize(
        object.returnDetails,
        specifiedType: const FullType.nullable(BuiltList, [FullType(OrderReturnRequestDetailResponse)]),
      );
    }
    if (object.proofImages != null) {
      yield r'proofImages';
      yield serializers.serialize(
        object.proofImages,
        specifiedType: const FullType.nullable(BuiltList, [FullType(MediaResponse)]),
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
    OrderReturnRequestResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderReturnRequestResponseBuilder result,
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
        case r'orderCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderCode = valueDes;
          break;
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerId = valueDes;
          break;
        case r'customerEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerEmail = valueDes;
          break;
        case r'processedById':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.processedById = valueDes;
          break;
        case r'processedByName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.processedByName = valueDes;
          break;
        case r'inspectedById':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inspectedById = valueDes;
          break;
        case r'inspectedByName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inspectedByName = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'customerNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerNote = valueDes;
          break;
        case r'staffNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staffNote = valueDes;
          break;
        case r'inspectionNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inspectionNote = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ReturnRequestStatus),
          ) as ReturnRequestStatus;
          result.status = valueDes;
          break;
        case r'requestedRefundAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.requestedRefundAmount = valueDes;
          break;
        case r'approvedRefundAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.approvedRefundAmount = valueDes;
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
        case r'isRestocked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRestocked = valueDes;
          break;
        case r'returnShippingInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ReturnShippingInfoResponse),
          ) as ReturnShippingInfoResponse?;
          if (valueDes == null) continue;
          result.returnShippingInfo.replace(valueDes);
          break;
        case r'returnDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(OrderReturnRequestDetailResponse)]),
          ) as BuiltList<OrderReturnRequestDetailResponse>?;
          if (valueDes == null) continue;
          result.returnDetails.replace(valueDes);
          break;
        case r'proofImages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(MediaResponse)]),
          ) as BuiltList<MediaResponse>?;
          if (valueDes == null) continue;
          result.proofImages.replace(valueDes);
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
  OrderReturnRequestResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderReturnRequestResponseBuilder();
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

