//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/bulk_action_error.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_operation_result.g.dart';

/// BulkOperationResult
///
/// Properties:
/// * [operationName] 
/// * [succeededCount] 
/// * [failedCount] 
/// * [errors] 
/// * [totalProcessed] 
/// * [hasError] 
@BuiltValue()
abstract class BulkOperationResult implements Built<BulkOperationResult, BulkOperationResultBuilder> {
  @BuiltValueField(wireName: r'operationName')
  String get operationName;

  @BuiltValueField(wireName: r'succeededCount')
  int? get succeededCount;

  @BuiltValueField(wireName: r'failedCount')
  int? get failedCount;

  @BuiltValueField(wireName: r'errors')
  BuiltList<BulkActionError> get errors;

  @BuiltValueField(wireName: r'totalProcessed')
  int? get totalProcessed;

  @BuiltValueField(wireName: r'hasError')
  bool? get hasError;

  BulkOperationResult._();

  factory BulkOperationResult([void updates(BulkOperationResultBuilder b)]) = _$BulkOperationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkOperationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkOperationResult> get serializer => _$BulkOperationResultSerializer();
}

class _$BulkOperationResultSerializer implements PrimitiveSerializer<BulkOperationResult> {
  @override
  final Iterable<Type> types = const [BulkOperationResult, _$BulkOperationResult];

  @override
  final String wireName = r'BulkOperationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkOperationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'operationName';
    yield serializers.serialize(
      object.operationName,
      specifiedType: const FullType(String),
    );
    if (object.succeededCount != null) {
      yield r'succeededCount';
      yield serializers.serialize(
        object.succeededCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.failedCount != null) {
      yield r'failedCount';
      yield serializers.serialize(
        object.failedCount,
        specifiedType: const FullType(int),
      );
    }
    yield r'errors';
    yield serializers.serialize(
      object.errors,
      specifiedType: const FullType(BuiltList, [FullType(BulkActionError)]),
    );
    if (object.totalProcessed != null) {
      yield r'totalProcessed';
      yield serializers.serialize(
        object.totalProcessed,
        specifiedType: const FullType(int),
      );
    }
    if (object.hasError != null) {
      yield r'hasError';
      yield serializers.serialize(
        object.hasError,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkOperationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkOperationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'operationName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operationName = valueDes;
          break;
        case r'succeededCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.succeededCount = valueDes;
          break;
        case r'failedCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.failedCount = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BulkActionError)]),
          ) as BuiltList<BulkActionError>;
          result.errors.replace(valueDes);
          break;
        case r'totalProcessed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalProcessed = valueDes;
          break;
        case r'hasError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasError = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkOperationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkOperationResultBuilder();
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

