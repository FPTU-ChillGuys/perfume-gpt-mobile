//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stock_adjustment_detail_response.g.dart';

/// StockAdjustmentDetailResponse
///
/// Properties:
/// * [id] 
/// * [productVariantId] 
/// * [productName] 
/// * [variantSku] 
/// * [batchId] 
/// * [batchCode] 
/// * [adjustmentQuantity] 
/// * [approvedQuantity] 
/// * [note] 
@BuiltValue()
abstract class StockAdjustmentDetailResponse implements Built<StockAdjustmentDetailResponse, StockAdjustmentDetailResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'productVariantId')
  String? get productVariantId;

  @BuiltValueField(wireName: r'productName')
  String get productName;

  @BuiltValueField(wireName: r'variantSku')
  String get variantSku;

  @BuiltValueField(wireName: r'batchId')
  String? get batchId;

  @BuiltValueField(wireName: r'batchCode')
  String get batchCode;

  @BuiltValueField(wireName: r'adjustmentQuantity')
  int? get adjustmentQuantity;

  @BuiltValueField(wireName: r'approvedQuantity')
  int? get approvedQuantity;

  @BuiltValueField(wireName: r'note')
  String? get note;

  StockAdjustmentDetailResponse._();

  factory StockAdjustmentDetailResponse([void updates(StockAdjustmentDetailResponseBuilder b)]) = _$StockAdjustmentDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StockAdjustmentDetailResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StockAdjustmentDetailResponse> get serializer => _$StockAdjustmentDetailResponseSerializer();
}

class _$StockAdjustmentDetailResponseSerializer implements PrimitiveSerializer<StockAdjustmentDetailResponse> {
  @override
  final Iterable<Type> types = const [StockAdjustmentDetailResponse, _$StockAdjustmentDetailResponse];

  @override
  final String wireName = r'StockAdjustmentDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StockAdjustmentDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.productVariantId != null) {
      yield r'productVariantId';
      yield serializers.serialize(
        object.productVariantId,
        specifiedType: const FullType(String),
      );
    }
    yield r'productName';
    yield serializers.serialize(
      object.productName,
      specifiedType: const FullType(String),
    );
    yield r'variantSku';
    yield serializers.serialize(
      object.variantSku,
      specifiedType: const FullType(String),
    );
    if (object.batchId != null) {
      yield r'batchId';
      yield serializers.serialize(
        object.batchId,
        specifiedType: const FullType(String),
      );
    }
    yield r'batchCode';
    yield serializers.serialize(
      object.batchCode,
      specifiedType: const FullType(String),
    );
    if (object.adjustmentQuantity != null) {
      yield r'adjustmentQuantity';
      yield serializers.serialize(
        object.adjustmentQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.approvedQuantity != null) {
      yield r'approvedQuantity';
      yield serializers.serialize(
        object.approvedQuantity,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    StockAdjustmentDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StockAdjustmentDetailResponseBuilder result,
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
        case r'productVariantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productVariantId = valueDes;
          break;
        case r'productName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productName = valueDes;
          break;
        case r'variantSku':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantSku = valueDes;
          break;
        case r'batchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.batchId = valueDes;
          break;
        case r'batchCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.batchCode = valueDes;
          break;
        case r'adjustmentQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.adjustmentQuantity = valueDes;
          break;
        case r'approvedQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.approvedQuantity = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StockAdjustmentDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StockAdjustmentDetailResponseBuilder();
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

