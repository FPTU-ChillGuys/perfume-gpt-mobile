//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pick_list_batch_info.g.dart';

/// PickListBatchInfo
///
/// Properties:
/// * [reservationId] 
/// * [batchId] 
/// * [batchCode] 
/// * [note] 
/// * [reservedQuantity] 
/// * [expiryDate] 
@BuiltValue()
abstract class PickListBatchInfo implements Built<PickListBatchInfo, PickListBatchInfoBuilder> {
  @BuiltValueField(wireName: r'reservationId')
  String? get reservationId;

  @BuiltValueField(wireName: r'batchId')
  String? get batchId;

  @BuiltValueField(wireName: r'batchCode')
  String get batchCode;

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'reservedQuantity')
  int? get reservedQuantity;

  @BuiltValueField(wireName: r'expiryDate')
  DateTime? get expiryDate;

  PickListBatchInfo._();

  factory PickListBatchInfo([void updates(PickListBatchInfoBuilder b)]) = _$PickListBatchInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PickListBatchInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PickListBatchInfo> get serializer => _$PickListBatchInfoSerializer();
}

class _$PickListBatchInfoSerializer implements PrimitiveSerializer<PickListBatchInfo> {
  @override
  final Iterable<Type> types = const [PickListBatchInfo, _$PickListBatchInfo];

  @override
  final String wireName = r'PickListBatchInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PickListBatchInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reservationId != null) {
      yield r'reservationId';
      yield serializers.serialize(
        object.reservationId,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    PickListBatchInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PickListBatchInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reservationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reservationId = valueDes;
          break;
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
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
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
  PickListBatchInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PickListBatchInfoBuilder();
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

