//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_attribute_value_request.g.dart';

/// UpdateAttributeValueRequest
///
/// Properties:
/// * [value] 
@BuiltValue()
abstract class UpdateAttributeValueRequest implements Built<UpdateAttributeValueRequest, UpdateAttributeValueRequestBuilder> {
  @BuiltValueField(wireName: r'value')
  String get value;

  UpdateAttributeValueRequest._();

  factory UpdateAttributeValueRequest([void updates(UpdateAttributeValueRequestBuilder b)]) = _$UpdateAttributeValueRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAttributeValueRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAttributeValueRequest> get serializer => _$UpdateAttributeValueRequestSerializer();
}

class _$UpdateAttributeValueRequestSerializer implements PrimitiveSerializer<UpdateAttributeValueRequest> {
  @override
  final Iterable<Type> types = const [UpdateAttributeValueRequest, _$UpdateAttributeValueRequest];

  @override
  final String wireName = r'UpdateAttributeValueRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAttributeValueRequest object, {
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
    UpdateAttributeValueRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateAttributeValueRequestBuilder result,
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
  UpdateAttributeValueRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAttributeValueRequestBuilder();
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

