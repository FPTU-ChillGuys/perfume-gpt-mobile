//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/bulk_action_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_action_result_of_guid.g.dart';

/// BulkActionResultOfGuid
///
/// Properties:
/// * [data] 
/// * [metadata] 
@BuiltValue()
abstract class BulkActionResultOfGuid implements Built<BulkActionResultOfGuid, BulkActionResultOfGuidBuilder> {
  @BuiltValueField(wireName: r'data')
  String get data;

  @BuiltValueField(wireName: r'metadata')
  BulkActionMetadata? get metadata;

  BulkActionResultOfGuid._();

  factory BulkActionResultOfGuid([void updates(BulkActionResultOfGuidBuilder b)]) = _$BulkActionResultOfGuid;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkActionResultOfGuidBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkActionResultOfGuid> get serializer => _$BulkActionResultOfGuidSerializer();
}

class _$BulkActionResultOfGuidSerializer implements PrimitiveSerializer<BulkActionResultOfGuid> {
  @override
  final Iterable<Type> types = const [BulkActionResultOfGuid, _$BulkActionResultOfGuid];

  @override
  final String wireName = r'BulkActionResultOfGuid';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkActionResultOfGuid object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(String),
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
    BulkActionResultOfGuid object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkActionResultOfGuidBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.data = valueDes;
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
  BulkActionResultOfGuid deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkActionResultOfGuidBuilder();
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

