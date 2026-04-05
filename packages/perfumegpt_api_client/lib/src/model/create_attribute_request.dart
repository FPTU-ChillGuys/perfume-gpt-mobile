//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_attribute_request.g.dart';

/// CreateAttributeRequest
///
/// Properties:
/// * [internalCode] 
/// * [name] 
/// * [description] 
/// * [isVariantLevel] 
@BuiltValue()
abstract class CreateAttributeRequest implements Built<CreateAttributeRequest, CreateAttributeRequestBuilder> {
  @BuiltValueField(wireName: r'internalCode')
  String? get internalCode;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'isVariantLevel')
  bool get isVariantLevel;

  CreateAttributeRequest._();

  factory CreateAttributeRequest([void updates(CreateAttributeRequestBuilder b)]) = _$CreateAttributeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAttributeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAttributeRequest> get serializer => _$CreateAttributeRequestSerializer();
}

class _$CreateAttributeRequestSerializer implements PrimitiveSerializer<CreateAttributeRequest> {
  @override
  final Iterable<Type> types = const [CreateAttributeRequest, _$CreateAttributeRequest];

  @override
  final String wireName = r'CreateAttributeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.internalCode != null) {
      yield r'internalCode';
      yield serializers.serialize(
        object.internalCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'isVariantLevel';
    yield serializers.serialize(
      object.isVariantLevel,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateAttributeRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'internalCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.internalCode = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'isVariantLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isVariantLevel = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateAttributeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAttributeRequestBuilder();
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

