//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_detail_response.g.dart';

/// BatchDetailResponse
///
/// Properties:
/// * [variantId] 
/// * [variantSku] 
/// * [productName] 
/// * [volumeMl] 
/// * [concentrationName] 
/// * [isExpired] 
/// * [daysUntilExpiry] 
/// * [id] 
/// * [batchCode] 
/// * [manufactureDate] 
/// * [expiryDate] 
/// * [importQuantity] 
/// * [remainingQuantity] 
/// * [createdAt] 
@BuiltValue()
abstract class BatchDetailResponse implements Built<BatchDetailResponse, BatchDetailResponseBuilder> {
  @BuiltValueField(wireName: r'variantId')
  String? get variantId;

  @BuiltValueField(wireName: r'variantSku')
  String get variantSku;

  @BuiltValueField(wireName: r'productName')
  String get productName;

  @BuiltValueField(wireName: r'volumeMl')
  int? get volumeMl;

  @BuiltValueField(wireName: r'concentrationName')
  String get concentrationName;

  @BuiltValueField(wireName: r'isExpired')
  bool? get isExpired;

  @BuiltValueField(wireName: r'daysUntilExpiry')
  int? get daysUntilExpiry;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'batchCode')
  String get batchCode;

  @BuiltValueField(wireName: r'manufactureDate')
  DateTime? get manufactureDate;

  @BuiltValueField(wireName: r'expiryDate')
  DateTime? get expiryDate;

  @BuiltValueField(wireName: r'importQuantity')
  int? get importQuantity;

  @BuiltValueField(wireName: r'remainingQuantity')
  int? get remainingQuantity;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  BatchDetailResponse._();

  factory BatchDetailResponse([void updates(BatchDetailResponseBuilder b)]) = _$BatchDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchDetailResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchDetailResponse> get serializer => _$BatchDetailResponseSerializer();
}

class _$BatchDetailResponseSerializer implements PrimitiveSerializer<BatchDetailResponse> {
  @override
  final Iterable<Type> types = const [BatchDetailResponse, _$BatchDetailResponse];

  @override
  final String wireName = r'BatchDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.variantId != null) {
      yield r'variantId';
      yield serializers.serialize(
        object.variantId,
        specifiedType: const FullType(String),
      );
    }
    yield r'variantSku';
    yield serializers.serialize(
      object.variantSku,
      specifiedType: const FullType(String),
    );
    yield r'productName';
    yield serializers.serialize(
      object.productName,
      specifiedType: const FullType(String),
    );
    if (object.volumeMl != null) {
      yield r'volumeMl';
      yield serializers.serialize(
        object.volumeMl,
        specifiedType: const FullType(int),
      );
    }
    yield r'concentrationName';
    yield serializers.serialize(
      object.concentrationName,
      specifiedType: const FullType(String),
    );
    if (object.isExpired != null) {
      yield r'isExpired';
      yield serializers.serialize(
        object.isExpired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.daysUntilExpiry != null) {
      yield r'daysUntilExpiry';
      yield serializers.serialize(
        object.daysUntilExpiry,
        specifiedType: const FullType(int),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'batchCode';
    yield serializers.serialize(
      object.batchCode,
      specifiedType: const FullType(String),
    );
    if (object.manufactureDate != null) {
      yield r'manufactureDate';
      yield serializers.serialize(
        object.manufactureDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.expiryDate != null) {
      yield r'expiryDate';
      yield serializers.serialize(
        object.expiryDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.importQuantity != null) {
      yield r'importQuantity';
      yield serializers.serialize(
        object.importQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.remainingQuantity != null) {
      yield r'remainingQuantity';
      yield serializers.serialize(
        object.remainingQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchDetailResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'variantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantId = valueDes;
          break;
        case r'variantSku':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantSku = valueDes;
          break;
        case r'productName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productName = valueDes;
          break;
        case r'volumeMl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.volumeMl = valueDes;
          break;
        case r'concentrationName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.concentrationName = valueDes;
          break;
        case r'isExpired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isExpired = valueDes;
          break;
        case r'daysUntilExpiry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.daysUntilExpiry = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'batchCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.batchCode = valueDes;
          break;
        case r'manufactureDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.manufactureDate = valueDes;
          break;
        case r'expiryDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiryDate = valueDes;
          break;
        case r'importQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.importQuantity = valueDes;
          break;
        case r'remainingQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.remainingQuantity = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchDetailResponseBuilder();
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

