//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/olfactory_lookup_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_response_of_list_of_olfactory_lookup_response.g.dart';

/// BaseResponseOfListOfOlfactoryLookupResponse
///
/// Properties:
/// * [payload] 
/// * [success] 
/// * [message] 
/// * [errors] 
/// * [errorType] 
@BuiltValue()
abstract class BaseResponseOfListOfOlfactoryLookupResponse implements Built<BaseResponseOfListOfOlfactoryLookupResponse, BaseResponseOfListOfOlfactoryLookupResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  BuiltList<OlfactoryLookupResponse>? get payload;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'errors')
  BuiltList<String>? get errors;

  @BuiltValueField(wireName: r'errorType')
  int? get errorType;

  BaseResponseOfListOfOlfactoryLookupResponse._();

  factory BaseResponseOfListOfOlfactoryLookupResponse([void updates(BaseResponseOfListOfOlfactoryLookupResponseBuilder b)]) = _$BaseResponseOfListOfOlfactoryLookupResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseResponseOfListOfOlfactoryLookupResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseResponseOfListOfOlfactoryLookupResponse> get serializer => _$BaseResponseOfListOfOlfactoryLookupResponseSerializer();
}

class _$BaseResponseOfListOfOlfactoryLookupResponseSerializer implements PrimitiveSerializer<BaseResponseOfListOfOlfactoryLookupResponse> {
  @override
  final Iterable<Type> types = const [BaseResponseOfListOfOlfactoryLookupResponse, _$BaseResponseOfListOfOlfactoryLookupResponse];

  @override
  final String wireName = r'BaseResponseOfListOfOlfactoryLookupResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseResponseOfListOfOlfactoryLookupResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType.nullable(BuiltList, [FullType(OlfactoryLookupResponse)]),
      );
    }
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.errorType != null) {
      yield r'errorType';
      yield serializers.serialize(
        object.errorType,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseResponseOfListOfOlfactoryLookupResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BaseResponseOfListOfOlfactoryLookupResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(OlfactoryLookupResponse)]),
          ) as BuiltList<OlfactoryLookupResponse>?;
          if (valueDes == null) continue;
          result.payload.replace(valueDes);
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.errors.replace(valueDes);
          break;
        case r'errorType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.errorType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BaseResponseOfListOfOlfactoryLookupResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseResponseOfListOfOlfactoryLookupResponseBuilder();
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

