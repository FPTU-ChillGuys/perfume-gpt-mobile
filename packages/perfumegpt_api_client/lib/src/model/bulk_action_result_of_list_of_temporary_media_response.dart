//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/temporary_media_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/bulk_action_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_action_result_of_list_of_temporary_media_response.g.dart';

/// BulkActionResultOfListOfTemporaryMediaResponse
///
/// Properties:
/// * [data] 
/// * [metadata] 
@BuiltValue()
abstract class BulkActionResultOfListOfTemporaryMediaResponse implements Built<BulkActionResultOfListOfTemporaryMediaResponse, BulkActionResultOfListOfTemporaryMediaResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<TemporaryMediaResponse>? get data;

  @BuiltValueField(wireName: r'metadata')
  BulkActionMetadata? get metadata;

  BulkActionResultOfListOfTemporaryMediaResponse._();

  factory BulkActionResultOfListOfTemporaryMediaResponse([void updates(BulkActionResultOfListOfTemporaryMediaResponseBuilder b)]) = _$BulkActionResultOfListOfTemporaryMediaResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkActionResultOfListOfTemporaryMediaResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkActionResultOfListOfTemporaryMediaResponse> get serializer => _$BulkActionResultOfListOfTemporaryMediaResponseSerializer();
}

class _$BulkActionResultOfListOfTemporaryMediaResponseSerializer implements PrimitiveSerializer<BulkActionResultOfListOfTemporaryMediaResponse> {
  @override
  final Iterable<Type> types = const [BulkActionResultOfListOfTemporaryMediaResponse, _$BulkActionResultOfListOfTemporaryMediaResponse];

  @override
  final String wireName = r'BulkActionResultOfListOfTemporaryMediaResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkActionResultOfListOfTemporaryMediaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield object.data == null ? null : serializers.serialize(
      object.data,
      specifiedType: const FullType.nullable(BuiltList, [FullType(TemporaryMediaResponse)]),
    );
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(BulkActionMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkActionResultOfListOfTemporaryMediaResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkActionResultOfListOfTemporaryMediaResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(TemporaryMediaResponse)]),
          ) as BuiltList<TemporaryMediaResponse>?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BulkActionMetadata),
          ) as BulkActionMetadata?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkActionResultOfListOfTemporaryMediaResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkActionResultOfListOfTemporaryMediaResponseBuilder();
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

