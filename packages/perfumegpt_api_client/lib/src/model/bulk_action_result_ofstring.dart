//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/bulk_action_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_action_result_ofstring.g.dart';

/// BulkActionResultOfstring
///
/// Properties:
/// * [data] 
/// * [metadata] 
@BuiltValue()
abstract class BulkActionResultOfstring implements Built<BulkActionResultOfstring, BulkActionResultOfstringBuilder> {
  @BuiltValueField(wireName: r'data')
  String? get data;

  @BuiltValueField(wireName: r'metadata')
  BulkActionMetadata? get metadata;

  BulkActionResultOfstring._();

  factory BulkActionResultOfstring([void updates(BulkActionResultOfstringBuilder b)]) = _$BulkActionResultOfstring;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkActionResultOfstringBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkActionResultOfstring> get serializer => _$BulkActionResultOfstringSerializer();
}

class _$BulkActionResultOfstringSerializer implements PrimitiveSerializer<BulkActionResultOfstring> {
  @override
  final Iterable<Type> types = const [BulkActionResultOfstring, _$BulkActionResultOfstring];

  @override
  final String wireName = r'BulkActionResultOfstring';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkActionResultOfstring object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield object.data == null ? null : serializers.serialize(
      object.data,
      specifiedType: const FullType.nullable(String),
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
    BulkActionResultOfstring object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkActionResultOfstringBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  BulkActionResultOfstring deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkActionResultOfstringBuilder();
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

