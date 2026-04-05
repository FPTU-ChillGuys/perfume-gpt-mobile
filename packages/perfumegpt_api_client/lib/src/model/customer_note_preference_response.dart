//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/note_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_note_preference_response.g.dart';

/// CustomerNotePreferenceResponse
///
/// Properties:
/// * [noteId] 
/// * [noteName] 
/// * [noteType] 
@BuiltValue()
abstract class CustomerNotePreferenceResponse implements Built<CustomerNotePreferenceResponse, CustomerNotePreferenceResponseBuilder> {
  @BuiltValueField(wireName: r'noteId')
  int? get noteId;

  @BuiltValueField(wireName: r'noteName')
  String get noteName;

  @BuiltValueField(wireName: r'noteType')
  NoteType? get noteType;
  // enum noteTypeEnum {  Top,  Heart,  Base,  };

  CustomerNotePreferenceResponse._();

  factory CustomerNotePreferenceResponse([void updates(CustomerNotePreferenceResponseBuilder b)]) = _$CustomerNotePreferenceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerNotePreferenceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerNotePreferenceResponse> get serializer => _$CustomerNotePreferenceResponseSerializer();
}

class _$CustomerNotePreferenceResponseSerializer implements PrimitiveSerializer<CustomerNotePreferenceResponse> {
  @override
  final Iterable<Type> types = const [CustomerNotePreferenceResponse, _$CustomerNotePreferenceResponse];

  @override
  final String wireName = r'CustomerNotePreferenceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerNotePreferenceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.noteId != null) {
      yield r'noteId';
      yield serializers.serialize(
        object.noteId,
        specifiedType: const FullType(int),
      );
    }
    yield r'noteName';
    yield serializers.serialize(
      object.noteName,
      specifiedType: const FullType(String),
    );
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
    CustomerNotePreferenceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerNotePreferenceResponseBuilder result,
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
        case r'noteName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.noteName = valueDes;
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
  CustomerNotePreferenceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerNotePreferenceResponseBuilder();
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

