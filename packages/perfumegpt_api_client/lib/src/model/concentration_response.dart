//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'concentration_response.g.dart';

/// ConcentrationResponse
///
/// Properties:
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class ConcentrationResponse implements Built<ConcentrationResponse, ConcentrationResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  ConcentrationResponse._();

  factory ConcentrationResponse([void updates(ConcentrationResponseBuilder b)]) = _$ConcentrationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConcentrationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConcentrationResponse> get serializer => _$ConcentrationResponseSerializer();
}

class _$ConcentrationResponseSerializer implements PrimitiveSerializer<ConcentrationResponse> {
  @override
  final Iterable<Type> types = const [ConcentrationResponse, _$ConcentrationResponse];

  @override
  final String wireName = r'ConcentrationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConcentrationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ConcentrationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConcentrationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
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
  ConcentrationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConcentrationResponseBuilder();
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

