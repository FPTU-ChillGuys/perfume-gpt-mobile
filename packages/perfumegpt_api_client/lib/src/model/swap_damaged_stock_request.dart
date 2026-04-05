//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'swap_damaged_stock_request.g.dart';

/// SwapDamagedStockRequest
///
/// Properties:
/// * [damagedReservationId] 
/// * [damageNote] 
@BuiltValue()
abstract class SwapDamagedStockRequest implements Built<SwapDamagedStockRequest, SwapDamagedStockRequestBuilder> {
  @BuiltValueField(wireName: r'damagedReservationId')
  String get damagedReservationId;

  @BuiltValueField(wireName: r'damageNote')
  String? get damageNote;

  SwapDamagedStockRequest._();

  factory SwapDamagedStockRequest([void updates(SwapDamagedStockRequestBuilder b)]) = _$SwapDamagedStockRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SwapDamagedStockRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SwapDamagedStockRequest> get serializer => _$SwapDamagedStockRequestSerializer();
}

class _$SwapDamagedStockRequestSerializer implements PrimitiveSerializer<SwapDamagedStockRequest> {
  @override
  final Iterable<Type> types = const [SwapDamagedStockRequest, _$SwapDamagedStockRequest];

  @override
  final String wireName = r'SwapDamagedStockRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SwapDamagedStockRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'damagedReservationId';
    yield serializers.serialize(
      object.damagedReservationId,
      specifiedType: const FullType(String),
    );
    if (object.damageNote != null) {
      yield r'damageNote';
      yield serializers.serialize(
        object.damageNote,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SwapDamagedStockRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SwapDamagedStockRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'damagedReservationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.damagedReservationId = valueDes;
          break;
        case r'damageNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.damageNote = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SwapDamagedStockRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SwapDamagedStockRequestBuilder();
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

