//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/update_note_preference_request.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_profile_request.g.dart';

/// UpdateProfileRequest
///
/// Properties:
/// * [dateOfBirth] 
/// * [minBudget] 
/// * [maxBudget] 
/// * [notePreferenceIds] 
/// * [familyPreferenceIds] 
/// * [attributePreferenceIds] 
@BuiltValue()
abstract class UpdateProfileRequest implements Built<UpdateProfileRequest, UpdateProfileRequestBuilder> {
  @BuiltValueField(wireName: r'dateOfBirth')
  DateTime? get dateOfBirth;

  @BuiltValueField(wireName: r'minBudget')
  num? get minBudget;

  @BuiltValueField(wireName: r'maxBudget')
  num? get maxBudget;

  @BuiltValueField(wireName: r'notePreferenceIds')
  BuiltList<UpdateNotePreferenceRequest>? get notePreferenceIds;

  @BuiltValueField(wireName: r'familyPreferenceIds')
  BuiltList<int>? get familyPreferenceIds;

  @BuiltValueField(wireName: r'attributePreferenceIds')
  BuiltList<int>? get attributePreferenceIds;

  UpdateProfileRequest._();

  factory UpdateProfileRequest([void updates(UpdateProfileRequestBuilder b)]) = _$UpdateProfileRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateProfileRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateProfileRequest> get serializer => _$UpdateProfileRequestSerializer();
}

class _$UpdateProfileRequestSerializer implements PrimitiveSerializer<UpdateProfileRequest> {
  @override
  final Iterable<Type> types = const [UpdateProfileRequest, _$UpdateProfileRequest];

  @override
  final String wireName = r'UpdateProfileRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateProfileRequest object, {
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
    if (object.notePreferenceIds != null) {
      yield r'notePreferenceIds';
      yield serializers.serialize(
        object.notePreferenceIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(UpdateNotePreferenceRequest)]),
      );
    }
    if (object.familyPreferenceIds != null) {
      yield r'familyPreferenceIds';
      yield serializers.serialize(
        object.familyPreferenceIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
    if (object.attributePreferenceIds != null) {
      yield r'attributePreferenceIds';
      yield serializers.serialize(
        object.attributePreferenceIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateProfileRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateProfileRequestBuilder result,
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
        case r'notePreferenceIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(UpdateNotePreferenceRequest)]),
          ) as BuiltList<UpdateNotePreferenceRequest>?;
          if (valueDes == null) continue;
          result.notePreferenceIds.replace(valueDes);
          break;
        case r'familyPreferenceIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.familyPreferenceIds.replace(valueDes);
          break;
        case r'attributePreferenceIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(int)]),
          ) as BuiltList<int>?;
          if (valueDes == null) continue;
          result.attributePreferenceIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateProfileRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateProfileRequestBuilder();
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

