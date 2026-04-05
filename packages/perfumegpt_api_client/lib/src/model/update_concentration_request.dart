//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_concentration_request.g.dart';

/// UpdateConcentrationRequest
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class UpdateConcentrationRequest implements Built<UpdateConcentrationRequest, UpdateConcentrationRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  UpdateConcentrationRequest._();

  factory UpdateConcentrationRequest([void updates(UpdateConcentrationRequestBuilder b)]) = _$UpdateConcentrationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateConcentrationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateConcentrationRequest> get serializer => _$UpdateConcentrationRequestSerializer();
}

class _$UpdateConcentrationRequestSerializer implements PrimitiveSerializer<UpdateConcentrationRequest> {
  @override
  final Iterable<Type> types = const [UpdateConcentrationRequest, _$UpdateConcentrationRequest];

  @override
  final String wireName = r'UpdateConcentrationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateConcentrationRequest object, {
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
    UpdateConcentrationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateConcentrationRequestBuilder result,
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
  UpdateConcentrationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateConcentrationRequestBuilder();
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

