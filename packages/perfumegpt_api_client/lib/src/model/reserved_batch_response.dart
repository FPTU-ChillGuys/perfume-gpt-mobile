//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reserved_batch_response.g.dart';

/// ReservedBatchResponse
///
/// Properties:
/// * [batchId] 
/// * [batchCode] 
/// * [reservedQuantity] 
/// * [expiryDate] 
@BuiltValue()
abstract class ReservedBatchResponse implements Built<ReservedBatchResponse, ReservedBatchResponseBuilder> {
  @BuiltValueField(wireName: r'batchId')
  String? get batchId;

  @BuiltValueField(wireName: r'batchCode')
  String get batchCode;

  @BuiltValueField(wireName: r'reservedQuantity')
  int? get reservedQuantity;

  @BuiltValueField(wireName: r'expiryDate')
  DateTime? get expiryDate;

  ReservedBatchResponse._();

  factory ReservedBatchResponse([void updates(ReservedBatchResponseBuilder b)]) = _$ReservedBatchResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReservedBatchResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReservedBatchResponse> get serializer => _$ReservedBatchResponseSerializer();
}

class _$ReservedBatchResponseSerializer implements PrimitiveSerializer<ReservedBatchResponse> {
  @override
  final Iterable<Type> types = const [ReservedBatchResponse, _$ReservedBatchResponse];

  @override
  final String wireName = r'ReservedBatchResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReservedBatchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.batchId != null) {
      yield r'batchId';
      yield serializers.serialize(
        object.batchId,
        specifiedType: const FullType(String),
      );
    }
    yield r'batchCode';
    yield serializers.serialize(
      object.batchCode,
      specifiedType: const FullType(String),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ReservedBatchResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReservedBatchResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'batchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.batchId = valueDes;
          break;
        case r'batchCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.batchCode = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReservedBatchResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedBatchResponseBuilder();
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

