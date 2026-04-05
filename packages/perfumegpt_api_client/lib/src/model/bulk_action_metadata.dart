//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/bulk_operation_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_action_metadata.g.dart';

/// BulkActionMetadata
///
/// Properties:
/// * [operations] 
/// * [hasPartialFailure] 
/// * [allSucceeded] 
/// * [totalOperations] 
/// * [totalSucceeded] 
/// * [totalFailed] 
@BuiltValue()
abstract class BulkActionMetadata implements Built<BulkActionMetadata, BulkActionMetadataBuilder> {
  @BuiltValueField(wireName: r'operations')
  BuiltList<BulkOperationResult> get operations;

  @BuiltValueField(wireName: r'hasPartialFailure')
  bool? get hasPartialFailure;

  @BuiltValueField(wireName: r'allSucceeded')
  bool? get allSucceeded;

  @BuiltValueField(wireName: r'totalOperations')
  int? get totalOperations;

  @BuiltValueField(wireName: r'totalSucceeded')
  int? get totalSucceeded;

  @BuiltValueField(wireName: r'totalFailed')
  int? get totalFailed;

  BulkActionMetadata._();

  factory BulkActionMetadata([void updates(BulkActionMetadataBuilder b)]) = _$BulkActionMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkActionMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkActionMetadata> get serializer => _$BulkActionMetadataSerializer();
}

class _$BulkActionMetadataSerializer implements PrimitiveSerializer<BulkActionMetadata> {
  @override
  final Iterable<Type> types = const [BulkActionMetadata, _$BulkActionMetadata];

  @override
  final String wireName = r'BulkActionMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkActionMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operations';
    yield serializers.serialize(
      object.operations,
      specifiedType: const FullType(BuiltList, [FullType(BulkOperationResult)]),
    );
    if (object.hasPartialFailure != null) {
      yield r'hasPartialFailure';
      yield serializers.serialize(
        object.hasPartialFailure,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allSucceeded != null) {
      yield r'allSucceeded';
      yield serializers.serialize(
        object.allSucceeded,
        specifiedType: const FullType(bool),
      );
    }
    if (object.totalOperations != null) {
      yield r'totalOperations';
      yield serializers.serialize(
        object.totalOperations,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalSucceeded != null) {
      yield r'totalSucceeded';
      yield serializers.serialize(
        object.totalSucceeded,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalFailed != null) {
      yield r'totalFailed';
      yield serializers.serialize(
        object.totalFailed,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkActionMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkActionMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BulkOperationResult)]),
          ) as BuiltList<BulkOperationResult>;
          result.operations.replace(valueDes);
          break;
        case r'hasPartialFailure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasPartialFailure = valueDes;
          break;
        case r'allSucceeded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allSucceeded = valueDes;
          break;
        case r'totalOperations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalOperations = valueDes;
          break;
        case r'totalSucceeded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalSucceeded = valueDes;
          break;
        case r'totalFailed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalFailed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkActionMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkActionMetadataBuilder();
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

