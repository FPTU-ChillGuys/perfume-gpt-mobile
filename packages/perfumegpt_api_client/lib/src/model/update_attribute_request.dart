//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_attribute_request.g.dart';

/// UpdateAttributeRequest
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [isVariantLevel] 
@BuiltValue()
abstract class UpdateAttributeRequest implements Built<UpdateAttributeRequest, UpdateAttributeRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'isVariantLevel')
  bool get isVariantLevel;

  UpdateAttributeRequest._();

  factory UpdateAttributeRequest([void updates(UpdateAttributeRequestBuilder b)]) = _$UpdateAttributeRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAttributeRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAttributeRequest> get serializer => _$UpdateAttributeRequestSerializer();
}

class _$UpdateAttributeRequestSerializer implements PrimitiveSerializer<UpdateAttributeRequest> {
  @override
  final Iterable<Type> types = const [UpdateAttributeRequest, _$UpdateAttributeRequest];

  @override
  final String wireName = r'UpdateAttributeRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    UpdateAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateAttributeRequestBuilder result,
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
  UpdateAttributeRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAttributeRequestBuilder();
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

