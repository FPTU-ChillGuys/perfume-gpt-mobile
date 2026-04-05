//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/customer_family_preference_respone.dart';
import 'package:perfumegpt_api_client/src/model/customer_note_preference_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/customer_attribute_preference_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile_response.g.dart';

/// ProfileResponse
///
/// Properties:
/// * [dateOfBirth] 
/// * [minBudget] 
/// * [maxBudget] 
/// * [notePreferences] 
/// * [familyPreferences] 
/// * [attributePreferences] 
@BuiltValue()
abstract class ProfileResponse implements Built<ProfileResponse, ProfileResponseBuilder> {
  @BuiltValueField(wireName: r'dateOfBirth')
  DateTime? get dateOfBirth;

  @BuiltValueField(wireName: r'minBudget')
  num? get minBudget;

  @BuiltValueField(wireName: r'maxBudget')
  num? get maxBudget;

  @BuiltValueField(wireName: r'notePreferences')
  BuiltList<CustomerNotePreferenceResponse> get notePreferences;

  @BuiltValueField(wireName: r'familyPreferences')
  BuiltList<CustomerFamilyPreferenceRespone> get familyPreferences;

  @BuiltValueField(wireName: r'attributePreferences')
  BuiltList<CustomerAttributePreferenceResponse> get attributePreferences;

  ProfileResponse._();

  factory ProfileResponse([void updates(ProfileResponseBuilder b)]) = _$ProfileResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProfileResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProfileResponse> get serializer => _$ProfileResponseSerializer();
}

class _$ProfileResponseSerializer implements PrimitiveSerializer<ProfileResponse> {
  @override
  final Iterable<Type> types = const [ProfileResponse, _$ProfileResponse];

  @override
  final String wireName = r'ProfileResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dateOfBirth != null) {
      yield r'dateOfBirth';
      yield serializers.serialize(
        object.dateOfBirth,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.minBudget != null) {
      yield r'minBudget';
      yield serializers.serialize(
        object.minBudget,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.maxBudget != null) {
      yield r'maxBudget';
      yield serializers.serialize(
        object.maxBudget,
        specifiedType: const FullType.nullable(num),
      );
    }
    yield r'notePreferences';
    yield serializers.serialize(
      object.notePreferences,
      specifiedType: const FullType(BuiltList, [FullType(CustomerNotePreferenceResponse)]),
    );
    yield r'familyPreferences';
    yield serializers.serialize(
      object.familyPreferences,
      specifiedType: const FullType(BuiltList, [FullType(CustomerFamilyPreferenceRespone)]),
    );
    yield r'attributePreferences';
    yield serializers.serialize(
      object.attributePreferences,
      specifiedType: const FullType(BuiltList, [FullType(CustomerAttributePreferenceResponse)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProfileResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProfileResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dateOfBirth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.dateOfBirth = valueDes;
          break;
        case r'minBudget':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.minBudget = valueDes;
          break;
        case r'maxBudget':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.maxBudget = valueDes;
          break;
        case r'notePreferences':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomerNotePreferenceResponse)]),
          ) as BuiltList<CustomerNotePreferenceResponse>;
          result.notePreferences.replace(valueDes);
          break;
        case r'familyPreferences':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomerFamilyPreferenceRespone)]),
          ) as BuiltList<CustomerFamilyPreferenceRespone>;
          result.familyPreferences.replace(valueDes);
          break;
        case r'attributePreferences':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CustomerAttributePreferenceResponse)]),
          ) as BuiltList<CustomerAttributePreferenceResponse>;
          result.attributePreferences.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProfileResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProfileResponseBuilder();
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

