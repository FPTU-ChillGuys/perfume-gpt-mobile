//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/note_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'scent_note_dto.g.dart';

/// ScentNoteDto
///
/// Properties:
/// * [noteId] 
/// * [type] 
@BuiltValue()
abstract class ScentNoteDto implements Built<ScentNoteDto, ScentNoteDtoBuilder> {
  @BuiltValueField(wireName: r'noteId')
  int? get noteId;

  @BuiltValueField(wireName: r'type')
  NoteType? get type;
  // enum typeEnum {  Top,  Heart,  Base,  };

  ScentNoteDto._();

  factory ScentNoteDto([void updates(ScentNoteDtoBuilder b)]) = _$ScentNoteDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScentNoteDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScentNoteDto> get serializer => _$ScentNoteDtoSerializer();
}

class _$ScentNoteDtoSerializer implements PrimitiveSerializer<ScentNoteDto> {
  @override
  final Iterable<Type> types = const [ScentNoteDto, _$ScentNoteDto];

  @override
  final String wireName = r'ScentNoteDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScentNoteDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.noteId != null) {
      yield r'noteId';
      yield serializers.serialize(
        object.noteId,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(NoteType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ScentNoteDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ScentNoteDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'noteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.noteId = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NoteType),
          ) as NoteType;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScentNoteDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScentNoteDtoBuilder();
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

