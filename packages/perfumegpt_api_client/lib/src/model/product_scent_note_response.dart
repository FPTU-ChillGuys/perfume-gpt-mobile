//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/note_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_scent_note_response.g.dart';

/// ProductScentNoteResponse
///
/// Properties:
/// * [noteId] 
/// * [name] 
/// * [type] 
@BuiltValue()
abstract class ProductScentNoteResponse implements Built<ProductScentNoteResponse, ProductScentNoteResponseBuilder> {
  @BuiltValueField(wireName: r'noteId')
  int? get noteId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'type')
  NoteType? get type;
  // enum typeEnum {  Top,  Heart,  Base,  };

  ProductScentNoteResponse._();

  factory ProductScentNoteResponse([void updates(ProductScentNoteResponseBuilder b)]) = _$ProductScentNoteResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductScentNoteResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductScentNoteResponse> get serializer => _$ProductScentNoteResponseSerializer();
}

class _$ProductScentNoteResponseSerializer implements PrimitiveSerializer<ProductScentNoteResponse> {
  @override
  final Iterable<Type> types = const [ProductScentNoteResponse, _$ProductScentNoteResponse];

  @override
  final String wireName = r'ProductScentNoteResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductScentNoteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.noteId != null) {
      yield r'noteId';
      yield serializers.serialize(
        object.noteId,
        specifiedType: const FullType(int),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
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
    ProductScentNoteResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductScentNoteResponseBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
  ProductScentNoteResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductScentNoteResponseBuilder();
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

