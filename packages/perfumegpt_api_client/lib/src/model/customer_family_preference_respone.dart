//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_family_preference_respone.g.dart';

/// CustomerFamilyPreferenceRespone
///
/// Properties:
/// * [familyId] 
/// * [familyName] 
@BuiltValue()
abstract class CustomerFamilyPreferenceRespone implements Built<CustomerFamilyPreferenceRespone, CustomerFamilyPreferenceResponeBuilder> {
  @BuiltValueField(wireName: r'familyId')
  int? get familyId;

  @BuiltValueField(wireName: r'familyName')
  String get familyName;

  CustomerFamilyPreferenceRespone._();

  factory CustomerFamilyPreferenceRespone([void updates(CustomerFamilyPreferenceResponeBuilder b)]) = _$CustomerFamilyPreferenceRespone;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerFamilyPreferenceResponeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerFamilyPreferenceRespone> get serializer => _$CustomerFamilyPreferenceResponeSerializer();
}

class _$CustomerFamilyPreferenceResponeSerializer implements PrimitiveSerializer<CustomerFamilyPreferenceRespone> {
  @override
  final Iterable<Type> types = const [CustomerFamilyPreferenceRespone, _$CustomerFamilyPreferenceRespone];

  @override
  final String wireName = r'CustomerFamilyPreferenceRespone';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerFamilyPreferenceRespone object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.familyId != null) {
      yield r'familyId';
      yield serializers.serialize(
        object.familyId,
        specifiedType: const FullType(int),
      );
    }
    yield r'familyName';
    yield serializers.serialize(
      object.familyName,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerFamilyPreferenceRespone object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerFamilyPreferenceResponeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'familyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.familyId = valueDes;
          break;
        case r'familyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.familyName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerFamilyPreferenceRespone deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerFamilyPreferenceResponeBuilder();
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

