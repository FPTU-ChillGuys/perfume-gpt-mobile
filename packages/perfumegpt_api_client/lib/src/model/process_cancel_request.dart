//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_method.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'process_cancel_request.g.dart';

/// ProcessCancelRequest
///
/// Properties:
/// * [isApproved] 
/// * [staffNote] 
/// * [refundMethod] 
@BuiltValue()
abstract class ProcessCancelRequest implements Built<ProcessCancelRequest, ProcessCancelRequestBuilder> {
  @BuiltValueField(wireName: r'isApproved')
  bool? get isApproved;

  @BuiltValueField(wireName: r'staffNote')
  String? get staffNote;

  @BuiltValueField(wireName: r'refundMethod')
  PaymentMethod? get refundMethod;
  // enum refundMethodEnum {  CashOnDelivery,  VnPay,  Momo,  CashInStore,  };

  ProcessCancelRequest._();

  factory ProcessCancelRequest([void updates(ProcessCancelRequestBuilder b)]) = _$ProcessCancelRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProcessCancelRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProcessCancelRequest> get serializer => _$ProcessCancelRequestSerializer();
}

class _$ProcessCancelRequestSerializer implements PrimitiveSerializer<ProcessCancelRequest> {
  @override
  final Iterable<Type> types = const [ProcessCancelRequest, _$ProcessCancelRequest];

  @override
  final String wireName = r'ProcessCancelRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProcessCancelRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isApproved != null) {
      yield r'isApproved';
      yield serializers.serialize(
        object.isApproved,
        specifiedType: const FullType(bool),
      );
    }
    if (object.staffNote != null) {
      yield r'staffNote';
      yield serializers.serialize(
        object.staffNote,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    ProcessCancelRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProcessCancelRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'isApproved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isApproved = valueDes;
          break;
        case r'staffNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staffNote = valueDes;
          break;
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
  ProcessCancelRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProcessCancelRequestBuilder();
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

