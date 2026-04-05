//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_olfactory_family_request.g.dart';

/// CreateOlfactoryFamilyRequest
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class CreateOlfactoryFamilyRequest implements Built<CreateOlfactoryFamilyRequest, CreateOlfactoryFamilyRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  CreateOlfactoryFamilyRequest._();

  factory CreateOlfactoryFamilyRequest([void updates(CreateOlfactoryFamilyRequestBuilder b)]) = _$CreateOlfactoryFamilyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateOlfactoryFamilyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateOlfactoryFamilyRequest> get serializer => _$CreateOlfactoryFamilyRequestSerializer();
}

class _$CreateOlfactoryFamilyRequestSerializer implements PrimitiveSerializer<CreateOlfactoryFamilyRequest> {
  @override
  final Iterable<Type> types = const [CreateOlfactoryFamilyRequest, _$CreateOlfactoryFamilyRequest];

  @override
  final String wireName = r'CreateOlfactoryFamilyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateOlfactoryFamilyRequest object, {
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
    CreateOlfactoryFamilyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateOlfactoryFamilyRequestBuilder result,
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
  CreateOlfactoryFamilyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateOlfactoryFamilyRequestBuilder();
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

