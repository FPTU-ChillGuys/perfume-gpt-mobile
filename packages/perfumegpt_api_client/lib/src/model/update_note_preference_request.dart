//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/note_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_note_preference_request.g.dart';

/// UpdateNotePreferenceRequest
///
/// Properties:
/// * [noteId] 
/// * [noteType] 
@BuiltValue()
abstract class UpdateNotePreferenceRequest implements Built<UpdateNotePreferenceRequest, UpdateNotePreferenceRequestBuilder> {
  @BuiltValueField(wireName: r'noteId')
  int? get noteId;

  @BuiltValueField(wireName: r'noteType')
  NoteType? get noteType;
  // enum noteTypeEnum {  Top,  Heart,  Base,  };

  UpdateNotePreferenceRequest._();

  factory UpdateNotePreferenceRequest([void updates(UpdateNotePreferenceRequestBuilder b)]) = _$UpdateNotePreferenceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateNotePreferenceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateNotePreferenceRequest> get serializer => _$UpdateNotePreferenceRequestSerializer();
}

class _$UpdateNotePreferenceRequestSerializer implements PrimitiveSerializer<UpdateNotePreferenceRequest> {
  @override
  final Iterable<Type> types = const [UpdateNotePreferenceRequest, _$UpdateNotePreferenceRequest];

  @override
  final String wireName = r'UpdateNotePreferenceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateNotePreferenceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.noteId != null) {
      yield r'noteId';
      yield serializers.serialize(
        object.noteId,
        specifiedType: const FullType(int),
      );
    }
    if (object.noteType != null) {
      yield r'noteType';
      yield serializers.serialize(
        object.noteType,
        specifiedType: const FullType(NoteType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateNotePreferenceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateNotePreferenceRequestBuilder result,
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
        case r'noteType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NoteType),
          ) as NoteType;
          result.noteType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateNotePreferenceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateNotePreferenceRequestBuilder();
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

