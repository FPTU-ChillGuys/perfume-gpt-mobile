//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'swap_damaged_stock_response.g.dart';

/// SwapDamagedStockResponse
///
/// Properties:
/// * [newReservationId] 
/// * [newBatchId] 
/// * [newBatchCode] 
/// * [newLocation] 
/// * [reservedQuantity] 
/// * [expiryDate] 
/// * [message] 
@BuiltValue()
abstract class SwapDamagedStockResponse implements Built<SwapDamagedStockResponse, SwapDamagedStockResponseBuilder> {
  @BuiltValueField(wireName: r'newReservationId')
  String? get newReservationId;

  @BuiltValueField(wireName: r'newBatchId')
  String? get newBatchId;

  @BuiltValueField(wireName: r'newBatchCode')
  String get newBatchCode;

  @BuiltValueField(wireName: r'newLocation')
  String? get newLocation;

  @BuiltValueField(wireName: r'reservedQuantity')
  int? get reservedQuantity;

  @BuiltValueField(wireName: r'expiryDate')
  DateTime? get expiryDate;

  @BuiltValueField(wireName: r'message')
  String get message;

  SwapDamagedStockResponse._();

  factory SwapDamagedStockResponse([void updates(SwapDamagedStockResponseBuilder b)]) = _$SwapDamagedStockResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SwapDamagedStockResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SwapDamagedStockResponse> get serializer => _$SwapDamagedStockResponseSerializer();
}

class _$SwapDamagedStockResponseSerializer implements PrimitiveSerializer<SwapDamagedStockResponse> {
  @override
  final Iterable<Type> types = const [SwapDamagedStockResponse, _$SwapDamagedStockResponse];

  @override
  final String wireName = r'SwapDamagedStockResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SwapDamagedStockResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.newReservationId != null) {
      yield r'newReservationId';
      yield serializers.serialize(
        object.newReservationId,
        specifiedType: const FullType(String),
      );
    }
    if (object.newBatchId != null) {
      yield r'newBatchId';
      yield serializers.serialize(
        object.newBatchId,
        specifiedType: const FullType(String),
      );
    }
    yield r'newBatchCode';
    yield serializers.serialize(
      object.newBatchCode,
      specifiedType: const FullType(String),
    );
    if (object.newLocation != null) {
      yield r'newLocation';
      yield serializers.serialize(
        object.newLocation,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.reservedQuantity != null) {
      yield r'reservedQuantity';
      yield serializers.serialize(
        object.reservedQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.expiryDate != null) {
      yield r'expiryDate';
      yield serializers.serialize(
        object.expiryDate,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SwapDamagedStockResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SwapDamagedStockResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'newReservationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newReservationId = valueDes;
          break;
        case r'newBatchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newBatchId = valueDes;
          break;
        case r'newBatchCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newBatchCode = valueDes;
          break;
        case r'newLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.newLocation = valueDes;
          break;
        case r'reservedQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.reservedQuantity = valueDes;
          break;
        case r'expiryDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiryDate = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SwapDamagedStockResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SwapDamagedStockResponseBuilder();
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

