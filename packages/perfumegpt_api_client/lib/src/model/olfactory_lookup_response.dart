//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'olfactory_lookup_response.g.dart';

/// OlfactoryLookupResponse
///
/// Properties:
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class OlfactoryLookupResponse implements Built<OlfactoryLookupResponse, OlfactoryLookupResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  OlfactoryLookupResponse._();

  factory OlfactoryLookupResponse([void updates(OlfactoryLookupResponseBuilder b)]) = _$OlfactoryLookupResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OlfactoryLookupResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OlfactoryLookupResponse> get serializer => _$OlfactoryLookupResponseSerializer();
}

class _$OlfactoryLookupResponseSerializer implements PrimitiveSerializer<OlfactoryLookupResponse> {
  @override
  final Iterable<Type> types = const [OlfactoryLookupResponse, _$OlfactoryLookupResponse];

  @override
  final String wireName = r'OlfactoryLookupResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OlfactoryLookupResponse object, {
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
    OlfactoryLookupResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OlfactoryLookupResponseBuilder result,
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
  OlfactoryLookupResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OlfactoryLookupResponseBuilder();
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

