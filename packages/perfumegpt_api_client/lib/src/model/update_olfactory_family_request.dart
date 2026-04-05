//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_olfactory_family_request.g.dart';

/// UpdateOlfactoryFamilyRequest
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class UpdateOlfactoryFamilyRequest implements Built<UpdateOlfactoryFamilyRequest, UpdateOlfactoryFamilyRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  UpdateOlfactoryFamilyRequest._();

  factory UpdateOlfactoryFamilyRequest([void updates(UpdateOlfactoryFamilyRequestBuilder b)]) = _$UpdateOlfactoryFamilyRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateOlfactoryFamilyRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateOlfactoryFamilyRequest> get serializer => _$UpdateOlfactoryFamilyRequestSerializer();
}

class _$UpdateOlfactoryFamilyRequestSerializer implements PrimitiveSerializer<UpdateOlfactoryFamilyRequest> {
  @override
  final Iterable<Type> types = const [UpdateOlfactoryFamilyRequest, _$UpdateOlfactoryFamilyRequest];

  @override
  final String wireName = r'UpdateOlfactoryFamilyRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateOlfactoryFamilyRequest object, {
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
    UpdateOlfactoryFamilyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateOlfactoryFamilyRequestBuilder result,
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
  UpdateOlfactoryFamilyRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateOlfactoryFamilyRequestBuilder();
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

