//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/create_batch_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_import_detail_request.g.dart';

/// VerifyImportDetailRequest
///
/// Properties:
/// * [importDetailId] 
/// * [rejectedQuantity] 
/// * [note] 
/// * [batches] 
@BuiltValue()
abstract class VerifyImportDetailRequest implements Built<VerifyImportDetailRequest, VerifyImportDetailRequestBuilder> {
  @BuiltValueField(wireName: r'importDetailId')
  String get importDetailId;

  @BuiltValueField(wireName: r'rejectedQuantity')
  int? get rejectedQuantity;

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'batches')
  BuiltList<CreateBatchRequest> get batches;

  VerifyImportDetailRequest._();

  factory VerifyImportDetailRequest([void updates(VerifyImportDetailRequestBuilder b)]) = _$VerifyImportDetailRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyImportDetailRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyImportDetailRequest> get serializer => _$VerifyImportDetailRequestSerializer();
}

class _$VerifyImportDetailRequestSerializer implements PrimitiveSerializer<VerifyImportDetailRequest> {
  @override
  final Iterable<Type> types = const [VerifyImportDetailRequest, _$VerifyImportDetailRequest];

  @override
  final String wireName = r'VerifyImportDetailRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyImportDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'importDetailId';
    yield serializers.serialize(
      object.importDetailId,
      specifiedType: const FullType(String),
    );
    if (object.rejectedQuantity != null) {
      yield r'rejectedQuantity';
      yield serializers.serialize(
        object.rejectedQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'batches';
    yield serializers.serialize(
      object.batches,
      specifiedType: const FullType(BuiltList, [FullType(CreateBatchRequest)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VerifyImportDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VerifyImportDetailRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'importDetailId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.importDetailId = valueDes;
          break;
        case r'rejectedQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rejectedQuantity = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'batches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CreateBatchRequest)]),
          ) as BuiltList<CreateBatchRequest>;
          result.batches.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VerifyImportDetailRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyImportDetailRequestBuilder();
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

