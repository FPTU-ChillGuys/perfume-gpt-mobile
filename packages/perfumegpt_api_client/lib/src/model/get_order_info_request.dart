//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_order_info_request.g.dart';

/// GetOrderInfoRequest
///
/// Properties:
/// * [trackingNumbers] 
@BuiltValue()
abstract class GetOrderInfoRequest implements Built<GetOrderInfoRequest, GetOrderInfoRequestBuilder> {
  @BuiltValueField(wireName: r'trackingNumbers')
  BuiltList<String> get trackingNumbers;

  GetOrderInfoRequest._();

  factory GetOrderInfoRequest([void updates(GetOrderInfoRequestBuilder b)]) = _$GetOrderInfoRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetOrderInfoRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetOrderInfoRequest> get serializer => _$GetOrderInfoRequestSerializer();
}

class _$GetOrderInfoRequestSerializer implements PrimitiveSerializer<GetOrderInfoRequest> {
  @override
  final Iterable<Type> types = const [GetOrderInfoRequest, _$GetOrderInfoRequest];

  @override
  final String wireName = r'GetOrderInfoRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetOrderInfoRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'trackingNumbers';
    yield serializers.serialize(
      object.trackingNumbers,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetOrderInfoRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetOrderInfoRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'trackingNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.trackingNumbers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetOrderInfoRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrderInfoRequestBuilder();
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

