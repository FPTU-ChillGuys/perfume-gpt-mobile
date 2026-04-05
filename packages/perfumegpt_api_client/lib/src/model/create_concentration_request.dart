//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_concentration_request.g.dart';

/// CreateConcentrationRequest
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class CreateConcentrationRequest implements Built<CreateConcentrationRequest, CreateConcentrationRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  CreateConcentrationRequest._();

  factory CreateConcentrationRequest([void updates(CreateConcentrationRequestBuilder b)]) = _$CreateConcentrationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateConcentrationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateConcentrationRequest> get serializer => _$CreateConcentrationRequestSerializer();
}

class _$CreateConcentrationRequestSerializer implements PrimitiveSerializer<CreateConcentrationRequest> {
  @override
  final Iterable<Type> types = const [CreateConcentrationRequest, _$CreateConcentrationRequest];

  @override
  final String wireName = r'CreateConcentrationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateConcentrationRequest object, {
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
    CreateConcentrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateConcentrationRequestBuilder result,
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
  CreateConcentrationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateConcentrationRequestBuilder();
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

