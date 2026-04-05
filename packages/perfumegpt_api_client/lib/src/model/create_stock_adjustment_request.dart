//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/create_stock_adjustment_detail_request.dart';
import 'package:perfumegpt_api_client/src/model/stock_adjustment_reason.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_stock_adjustment_request.g.dart';

/// CreateStockAdjustmentRequest
///
/// Properties:
/// * [adjustmentDate] 
/// * [reason] 
/// * [note] 
/// * [adjustmentDetails] 
@BuiltValue()
abstract class CreateStockAdjustmentRequest implements Built<CreateStockAdjustmentRequest, CreateStockAdjustmentRequestBuilder> {
  @BuiltValueField(wireName: r'adjustmentDate')
  DateTime get adjustmentDate;

  @BuiltValueField(wireName: r'reason')
  StockAdjustmentReason? get reason;
  // enum reasonEnum {  Damage,  Expired,  Theft,  Loss,  Found,  Correction,  Return,  Other,  };

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'adjustmentDetails')
  BuiltList<CreateStockAdjustmentDetailRequest> get adjustmentDetails;

  CreateStockAdjustmentRequest._();

  factory CreateStockAdjustmentRequest([void updates(CreateStockAdjustmentRequestBuilder b)]) = _$CreateStockAdjustmentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateStockAdjustmentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateStockAdjustmentRequest> get serializer => _$CreateStockAdjustmentRequestSerializer();
}

class _$CreateStockAdjustmentRequestSerializer implements PrimitiveSerializer<CreateStockAdjustmentRequest> {
  @override
  final Iterable<Type> types = const [CreateStockAdjustmentRequest, _$CreateStockAdjustmentRequest];

  @override
  final String wireName = r'CreateStockAdjustmentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateStockAdjustmentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'adjustmentDate';
    yield serializers.serialize(
      object.adjustmentDate,
      specifiedType: const FullType(DateTime),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(StockAdjustmentReason),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'adjustmentDetails';
    yield serializers.serialize(
      object.adjustmentDetails,
      specifiedType: const FullType(BuiltList, [FullType(CreateStockAdjustmentDetailRequest)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateStockAdjustmentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateStockAdjustmentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'adjustmentDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.adjustmentDate = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StockAdjustmentReason),
          ) as StockAdjustmentReason;
          result.reason = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        case r'adjustmentDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CreateStockAdjustmentDetailRequest)]),
          ) as BuiltList<CreateStockAdjustmentDetailRequest>;
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
  CreateStockAdjustmentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateStockAdjustmentRequestBuilder();
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

