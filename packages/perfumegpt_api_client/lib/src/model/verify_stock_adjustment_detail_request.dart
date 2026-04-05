//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_stock_adjustment_detail_request.g.dart';

/// VerifyStockAdjustmentDetailRequest
///
/// Properties:
/// * [detailId] 
/// * [approvedQuantity] 
/// * [note] 
@BuiltValue()
abstract class VerifyStockAdjustmentDetailRequest implements Built<VerifyStockAdjustmentDetailRequest, VerifyStockAdjustmentDetailRequestBuilder> {
  @BuiltValueField(wireName: r'detailId')
  String get detailId;

  @BuiltValueField(wireName: r'approvedQuantity')
  int? get approvedQuantity;

  @BuiltValueField(wireName: r'note')
  String? get note;

  VerifyStockAdjustmentDetailRequest._();

  factory VerifyStockAdjustmentDetailRequest([void updates(VerifyStockAdjustmentDetailRequestBuilder b)]) = _$VerifyStockAdjustmentDetailRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyStockAdjustmentDetailRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyStockAdjustmentDetailRequest> get serializer => _$VerifyStockAdjustmentDetailRequestSerializer();
}

class _$VerifyStockAdjustmentDetailRequestSerializer implements PrimitiveSerializer<VerifyStockAdjustmentDetailRequest> {
  @override
  final Iterable<Type> types = const [VerifyStockAdjustmentDetailRequest, _$VerifyStockAdjustmentDetailRequest];

  @override
  final String wireName = r'VerifyStockAdjustmentDetailRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyStockAdjustmentDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'detailId';
    yield serializers.serialize(
      object.detailId,
      specifiedType: const FullType(String),
    );
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
    VerifyStockAdjustmentDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VerifyStockAdjustmentDetailRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'detailId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.detailId = valueDes;
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
  VerifyStockAdjustmentDetailRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyStockAdjustmentDetailRequestBuilder();
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

