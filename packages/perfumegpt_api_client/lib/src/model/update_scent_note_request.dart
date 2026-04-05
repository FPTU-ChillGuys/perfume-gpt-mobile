//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_scent_note_request.g.dart';

/// UpdateScentNoteRequest
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class UpdateScentNoteRequest implements Built<UpdateScentNoteRequest, UpdateScentNoteRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  UpdateScentNoteRequest._();

  factory UpdateScentNoteRequest([void updates(UpdateScentNoteRequestBuilder b)]) = _$UpdateScentNoteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateScentNoteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateScentNoteRequest> get serializer => _$UpdateScentNoteRequestSerializer();
}

class _$UpdateScentNoteRequestSerializer implements PrimitiveSerializer<UpdateScentNoteRequest> {
  @override
  final Iterable<Type> types = const [UpdateScentNoteRequest, _$UpdateScentNoteRequest];

  @override
  final String wireName = r'UpdateScentNoteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateScentNoteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateScentNoteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateScentNoteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateScentNoteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateScentNoteRequestBuilder();
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

