//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_attribute_value_request.g.dart';

/// CreateAttributeValueRequest
///
/// Properties:
/// * [value] 
@BuiltValue()
abstract class CreateAttributeValueRequest implements Built<CreateAttributeValueRequest, CreateAttributeValueRequestBuilder> {
  @BuiltValueField(wireName: r'value')
  String get value;

  CreateAttributeValueRequest._();

  factory CreateAttributeValueRequest([void updates(CreateAttributeValueRequestBuilder b)]) = _$CreateAttributeValueRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAttributeValueRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAttributeValueRequest> get serializer => _$CreateAttributeValueRequestSerializer();
}

class _$CreateAttributeValueRequestSerializer implements PrimitiveSerializer<CreateAttributeValueRequest> {
  @override
  final Iterable<Type> types = const [CreateAttributeValueRequest, _$CreateAttributeValueRequest];

  @override
  final String wireName = r'CreateAttributeValueRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAttributeValueRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateAttributeValueRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateAttributeValueRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateAttributeValueRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAttributeValueRequestBuilder();
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

