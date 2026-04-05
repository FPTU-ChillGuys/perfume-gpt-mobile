//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_stock_adjustment_detail_request.g.dart';

/// CreateStockAdjustmentDetailRequest
///
/// Properties:
/// * [variantId] 
/// * [batchId] 
/// * [adjustmentQuantity] 
/// * [note] 
@BuiltValue()
abstract class CreateStockAdjustmentDetailRequest implements Built<CreateStockAdjustmentDetailRequest, CreateStockAdjustmentDetailRequestBuilder> {
  @BuiltValueField(wireName: r'variantId')
  String get variantId;

  @BuiltValueField(wireName: r'batchId')
  String get batchId;

  @BuiltValueField(wireName: r'adjustmentQuantity')
  int? get adjustmentQuantity;

  @BuiltValueField(wireName: r'note')
  String? get note;

  CreateStockAdjustmentDetailRequest._();

  factory CreateStockAdjustmentDetailRequest([void updates(CreateStockAdjustmentDetailRequestBuilder b)]) = _$CreateStockAdjustmentDetailRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateStockAdjustmentDetailRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateStockAdjustmentDetailRequest> get serializer => _$CreateStockAdjustmentDetailRequestSerializer();
}

class _$CreateStockAdjustmentDetailRequestSerializer implements PrimitiveSerializer<CreateStockAdjustmentDetailRequest> {
  @override
  final Iterable<Type> types = const [CreateStockAdjustmentDetailRequest, _$CreateStockAdjustmentDetailRequest];

  @override
  final String wireName = r'CreateStockAdjustmentDetailRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateStockAdjustmentDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'variantId';
    yield serializers.serialize(
      object.variantId,
      specifiedType: const FullType(String),
    );
    yield r'batchId';
    yield serializers.serialize(
      object.batchId,
      specifiedType: const FullType(String),
    );
    if (object.adjustmentQuantity != null) {
      yield r'adjustmentQuantity';
      yield serializers.serialize(
        object.adjustmentQuantity,
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
    CreateStockAdjustmentDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateStockAdjustmentDetailRequestBuilder result,
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
        case r'batchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.batchId = valueDes;
          break;
        case r'adjustmentQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.adjustmentQuantity = valueDes;
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
  CreateStockAdjustmentDetailRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateStockAdjustmentDetailRequestBuilder();
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

