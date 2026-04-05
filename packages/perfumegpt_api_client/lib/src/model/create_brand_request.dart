//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_brand_request.g.dart';

/// CreateBrandRequest
///
/// Properties:
/// * [name] 
@BuiltValue()
abstract class CreateBrandRequest implements Built<CreateBrandRequest, CreateBrandRequestBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  CreateBrandRequest._();

  factory CreateBrandRequest([void updates(CreateBrandRequestBuilder b)]) = _$CreateBrandRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateBrandRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateBrandRequest> get serializer => _$CreateBrandRequestSerializer();
}

class _$CreateBrandRequestSerializer implements PrimitiveSerializer<CreateBrandRequest> {
  @override
  final Iterable<Type> types = const [CreateBrandRequest, _$CreateBrandRequest];

  @override
  final String wireName = r'CreateBrandRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateBrandRequest object, {
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
    CreateBrandRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateBrandRequestBuilder result,
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
  CreateBrandRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBrandRequestBuilder();
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

