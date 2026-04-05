//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/bulk_action_result_of_list_of_temporary_media_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_response_of_bulk_action_result_of_list_of_temporary_media_response.g.dart';

/// BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse
///
/// Properties:
/// * [payload] 
/// * [success] 
/// * [message] 
/// * [errors] 
/// * [errorType] 
@BuiltValue()
abstract class BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse implements Built<BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse, BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  BulkActionResultOfListOfTemporaryMediaResponse? get payload;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'errors')
  BuiltList<String>? get errors;

  @BuiltValueField(wireName: r'errorType')
  int? get errorType;

  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse._();

  factory BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse([void updates(BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseBuilder b)]) = _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse> get serializer => _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseSerializer();
}

class _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseSerializer implements PrimitiveSerializer<BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse> {
  @override
  final Iterable<Type> types = const [BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse, _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse];

  @override
  final String wireName = r'BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType.nullable(BulkActionResultOfListOfTemporaryMediaResponse),
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
    BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BulkActionResultOfListOfTemporaryMediaResponse),
          ) as BulkActionResultOfListOfTemporaryMediaResponse?;
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
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseBuilder();
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

