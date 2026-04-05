//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/order_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_order_status_request.g.dart';

/// UpdateOrderStatusRequest
///
/// Properties:
/// * [status] 
/// * [note] 
@BuiltValue()
abstract class UpdateOrderStatusRequest implements Built<UpdateOrderStatusRequest, UpdateOrderStatusRequestBuilder> {
  @BuiltValueField(wireName: r'status')
  OrderStatus? get status;
  // enum statusEnum {  Pending,  Processing,  Delivering,  Delivered,  Returning,  Cancelled,  Partial_Returned,  Returned,  };

  @BuiltValueField(wireName: r'note')
  String? get note;

  UpdateOrderStatusRequest._();

  factory UpdateOrderStatusRequest([void updates(UpdateOrderStatusRequestBuilder b)]) = _$UpdateOrderStatusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateOrderStatusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateOrderStatusRequest> get serializer => _$UpdateOrderStatusRequestSerializer();
}

class _$UpdateOrderStatusRequestSerializer implements PrimitiveSerializer<UpdateOrderStatusRequest> {
  @override
  final Iterable<Type> types = const [UpdateOrderStatusRequest, _$UpdateOrderStatusRequest];

  @override
  final String wireName = r'UpdateOrderStatusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateOrderStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(OrderStatus),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateOrderStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateOrderStatusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderStatus),
          ) as OrderStatus;
          result.status = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateOrderStatusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateOrderStatusRequestBuilder();
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

