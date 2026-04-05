//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address_level4_response.g.dart';

/// AddressLevel4Response
///
/// Properties:
/// * [data] 
@BuiltValue()
abstract class AddressLevel4Response implements Built<AddressLevel4Response, AddressLevel4ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<String> get data;

  AddressLevel4Response._();

  factory AddressLevel4Response([void updates(AddressLevel4ResponseBuilder b)]) = _$AddressLevel4Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddressLevel4ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddressLevel4Response> get serializer => _$AddressLevel4ResponseSerializer();
}

class _$AddressLevel4ResponseSerializer implements PrimitiveSerializer<AddressLevel4Response> {
  @override
  final Iterable<Type> types = const [AddressLevel4Response, _$AddressLevel4Response];

  @override
  final String wireName = r'AddressLevel4Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddressLevel4Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AddressLevel4Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddressLevel4ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddressLevel4Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddressLevel4ResponseBuilder();
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

