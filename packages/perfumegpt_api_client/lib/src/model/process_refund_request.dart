//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_method.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'process_refund_request.g.dart';

/// ProcessRefundRequest
///
/// Properties:
/// * [refundMethod] 
@BuiltValue()
abstract class ProcessRefundRequest implements Built<ProcessRefundRequest, ProcessRefundRequestBuilder> {
  @BuiltValueField(wireName: r'refundMethod')
  PaymentMethod? get refundMethod;
  // enum refundMethodEnum {  CashOnDelivery,  VnPay,  Momo,  CashInStore,  };

  ProcessRefundRequest._();

  factory ProcessRefundRequest([void updates(ProcessRefundRequestBuilder b)]) = _$ProcessRefundRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProcessRefundRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProcessRefundRequest> get serializer => _$ProcessRefundRequestSerializer();
}

class _$ProcessRefundRequestSerializer implements PrimitiveSerializer<ProcessRefundRequest> {
  @override
  final Iterable<Type> types = const [ProcessRefundRequest, _$ProcessRefundRequest];

  @override
  final String wireName = r'ProcessRefundRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProcessRefundRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.refundMethod != null) {
      yield r'refundMethod';
      yield serializers.serialize(
        object.refundMethod,
        specifiedType: const FullType(PaymentMethod),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProcessRefundRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProcessRefundRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refundMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentMethod),
          ) as PaymentMethod;
          result.refundMethod = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProcessRefundRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProcessRefundRequestBuilder();
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

