//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/verify_stock_adjustment_detail_request.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_stock_adjustment_request.g.dart';

/// VerifyStockAdjustmentRequest
///
/// Properties:
/// * [adjustmentDetails] 
@BuiltValue()
abstract class VerifyStockAdjustmentRequest implements Built<VerifyStockAdjustmentRequest, VerifyStockAdjustmentRequestBuilder> {
  @BuiltValueField(wireName: r'adjustmentDetails')
  BuiltList<VerifyStockAdjustmentDetailRequest> get adjustmentDetails;

  VerifyStockAdjustmentRequest._();

  factory VerifyStockAdjustmentRequest([void updates(VerifyStockAdjustmentRequestBuilder b)]) = _$VerifyStockAdjustmentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyStockAdjustmentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyStockAdjustmentRequest> get serializer => _$VerifyStockAdjustmentRequestSerializer();
}

class _$VerifyStockAdjustmentRequestSerializer implements PrimitiveSerializer<VerifyStockAdjustmentRequest> {
  @override
  final Iterable<Type> types = const [VerifyStockAdjustmentRequest, _$VerifyStockAdjustmentRequest];

  @override
  final String wireName = r'VerifyStockAdjustmentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyStockAdjustmentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'adjustmentDetails';
    yield serializers.serialize(
      object.adjustmentDetails,
      specifiedType: const FullType(BuiltList, [FullType(VerifyStockAdjustmentDetailRequest)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VerifyStockAdjustmentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VerifyStockAdjustmentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'adjustmentDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(VerifyStockAdjustmentDetailRequest)]),
          ) as BuiltList<VerifyStockAdjustmentDetailRequest>;
          result.adjustmentDetails.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VerifyStockAdjustmentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyStockAdjustmentRequestBuilder();
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

