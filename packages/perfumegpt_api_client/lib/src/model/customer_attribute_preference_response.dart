//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_attribute_preference_response.g.dart';

/// CustomerAttributePreferenceResponse
///
/// Properties:
/// * [attributeValueId] 
/// * [attributeValueName] 
@BuiltValue()
abstract class CustomerAttributePreferenceResponse implements Built<CustomerAttributePreferenceResponse, CustomerAttributePreferenceResponseBuilder> {
  @BuiltValueField(wireName: r'attributeValueId')
  int? get attributeValueId;

  @BuiltValueField(wireName: r'attributeValueName')
  String get attributeValueName;

  CustomerAttributePreferenceResponse._();

  factory CustomerAttributePreferenceResponse([void updates(CustomerAttributePreferenceResponseBuilder b)]) = _$CustomerAttributePreferenceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerAttributePreferenceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerAttributePreferenceResponse> get serializer => _$CustomerAttributePreferenceResponseSerializer();
}

class _$CustomerAttributePreferenceResponseSerializer implements PrimitiveSerializer<CustomerAttributePreferenceResponse> {
  @override
  final Iterable<Type> types = const [CustomerAttributePreferenceResponse, _$CustomerAttributePreferenceResponse];

  @override
  final String wireName = r'CustomerAttributePreferenceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerAttributePreferenceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.attributeValueId != null) {
      yield r'attributeValueId';
      yield serializers.serialize(
        object.attributeValueId,
        specifiedType: const FullType(int),
      );
    }
    yield r'attributeValueName';
    yield serializers.serialize(
      object.attributeValueName,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerAttributePreferenceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerAttributePreferenceResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'attributeValueId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.attributeValueId = valueDes;
          break;
        case r'attributeValueName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.attributeValueName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerAttributePreferenceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerAttributePreferenceResponseBuilder();
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

