//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'start_inspection_dto.g.dart';

/// StartInspectionDto
///
/// Properties:
/// * [inspectionNote] 
@BuiltValue()
abstract class StartInspectionDto implements Built<StartInspectionDto, StartInspectionDtoBuilder> {
  @BuiltValueField(wireName: r'inspectionNote')
  String? get inspectionNote;

  StartInspectionDto._();

  factory StartInspectionDto([void updates(StartInspectionDtoBuilder b)]) = _$StartInspectionDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StartInspectionDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StartInspectionDto> get serializer => _$StartInspectionDtoSerializer();
}

class _$StartInspectionDtoSerializer implements PrimitiveSerializer<StartInspectionDto> {
  @override
  final Iterable<Type> types = const [StartInspectionDto, _$StartInspectionDto];

  @override
  final String wireName = r'StartInspectionDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StartInspectionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    StartInspectionDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StartInspectionDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  StartInspectionDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartInspectionDtoBuilder();
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

