//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/batch_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_detail_response.g.dart';

/// ImportDetailResponse
///
/// Properties:
/// * [id] 
/// * [variantId] 
/// * [variantName] 
/// * [variantSku] 
/// * [expectedQuantity] 
/// * [unitPrice] 
/// * [totalPrice] 
/// * [rejectedQuantity] 
/// * [note] 
/// * [batches] 
@BuiltValue()
abstract class ImportDetailResponse implements Built<ImportDetailResponse, ImportDetailResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'variantId')
  String? get variantId;

  @BuiltValueField(wireName: r'variantName')
  String get variantName;

  @BuiltValueField(wireName: r'variantSku')
  String get variantSku;

  @BuiltValueField(wireName: r'expectedQuantity')
  int? get expectedQuantity;

  @BuiltValueField(wireName: r'unitPrice')
  num? get unitPrice;

  @BuiltValueField(wireName: r'totalPrice')
  num? get totalPrice;

  @BuiltValueField(wireName: r'rejectedQuantity')
  int? get rejectedQuantity;

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'batches')
  BuiltList<BatchResponse> get batches;

  ImportDetailResponse._();

  factory ImportDetailResponse([void updates(ImportDetailResponseBuilder b)]) = _$ImportDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportDetailResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportDetailResponse> get serializer => _$ImportDetailResponseSerializer();
}

class _$ImportDetailResponseSerializer implements PrimitiveSerializer<ImportDetailResponse> {
  @override
  final Iterable<Type> types = const [ImportDetailResponse, _$ImportDetailResponse];

  @override
  final String wireName = r'ImportDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.variantId != null) {
      yield r'variantId';
      yield serializers.serialize(
        object.variantId,
        specifiedType: const FullType(String),
      );
    }
    yield r'variantName';
    yield serializers.serialize(
      object.variantName,
      specifiedType: const FullType(String),
    );
    yield r'variantSku';
    yield serializers.serialize(
      object.variantSku,
      specifiedType: const FullType(String),
    );
    if (object.expectedQuantity != null) {
      yield r'expectedQuantity';
      yield serializers.serialize(
        object.expectedQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.unitPrice != null) {
      yield r'unitPrice';
      yield serializers.serialize(
        object.unitPrice,
        specifiedType: const FullType(num),
      );
    }
    if (object.totalPrice != null) {
      yield r'totalPrice';
      yield serializers.serialize(
        object.totalPrice,
        specifiedType: const FullType(num),
      );
    }
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
      specifiedType: const FullType(BuiltList, [FullType(BatchResponse)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ImportDetailResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'variantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantId = valueDes;
          break;
        case r'variantName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantName = valueDes;
          break;
        case r'variantSku':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantSku = valueDes;
          break;
        case r'expectedQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expectedQuantity = valueDes;
          break;
        case r'unitPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.unitPrice = valueDes;
          break;
        case r'totalPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalPrice = valueDes;
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
            specifiedType: const FullType(BuiltList, [FullType(BatchResponse)]),
          ) as BuiltList<BatchResponse>;
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
  ImportDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportDetailResponseBuilder();
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

