//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'record_inspection_dto.g.dart';

/// RecordInspectionDto
///
/// Properties:
/// * [approvedRefundAmount] 
/// * [isRestocked] 
/// * [inspectionNote] 
@BuiltValue()
abstract class RecordInspectionDto implements Built<RecordInspectionDto, RecordInspectionDtoBuilder> {
  @BuiltValueField(wireName: r'approvedRefundAmount')
  num? get approvedRefundAmount;

  @BuiltValueField(wireName: r'isRestocked')
  bool? get isRestocked;

  @BuiltValueField(wireName: r'inspectionNote')
  String? get inspectionNote;

  RecordInspectionDto._();

  factory RecordInspectionDto([void updates(RecordInspectionDtoBuilder b)]) = _$RecordInspectionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RecordInspectionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RecordInspectionDto> get serializer => _$RecordInspectionDtoSerializer();
}

class _$RecordInspectionDtoSerializer implements PrimitiveSerializer<RecordInspectionDto> {
  @override
  final Iterable<Type> types = const [RecordInspectionDto, _$RecordInspectionDto];

  @override
  final String wireName = r'RecordInspectionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RecordInspectionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.approvedRefundAmount != null) {
      yield r'approvedRefundAmount';
      yield serializers.serialize(
        object.approvedRefundAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.isRestocked != null) {
      yield r'isRestocked';
      yield serializers.serialize(
        object.isRestocked,
        specifiedType: const FullType(bool),
      );
    }
    if (object.inspectionNote != null) {
      yield r'inspectionNote';
      yield serializers.serialize(
        object.inspectionNote,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RecordInspectionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RecordInspectionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'approvedRefundAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.approvedRefundAmount = valueDes;
          break;
        case r'isRestocked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRestocked = valueDes;
          break;
        case r'inspectionNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inspectionNote = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RecordInspectionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordInspectionDtoBuilder();
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

