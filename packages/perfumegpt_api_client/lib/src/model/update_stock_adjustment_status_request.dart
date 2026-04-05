//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/stock_adjustment_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_stock_adjustment_status_request.g.dart';

/// UpdateStockAdjustmentStatusRequest
///
/// Properties:
/// * [status] 
/// * [note] 
@BuiltValue()
abstract class UpdateStockAdjustmentStatusRequest implements Built<UpdateStockAdjustmentStatusRequest, UpdateStockAdjustmentStatusRequestBuilder> {
  @BuiltValueField(wireName: r'status')
  StockAdjustmentStatus? get status;
  // enum statusEnum {  Pending,  InProgress,  Completed,  Cancelled,  };

  @BuiltValueField(wireName: r'note')
  String? get note;

  UpdateStockAdjustmentStatusRequest._();

  factory UpdateStockAdjustmentStatusRequest([void updates(UpdateStockAdjustmentStatusRequestBuilder b)]) = _$UpdateStockAdjustmentStatusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateStockAdjustmentStatusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateStockAdjustmentStatusRequest> get serializer => _$UpdateStockAdjustmentStatusRequestSerializer();
}

class _$UpdateStockAdjustmentStatusRequestSerializer implements PrimitiveSerializer<UpdateStockAdjustmentStatusRequest> {
  @override
  final Iterable<Type> types = const [UpdateStockAdjustmentStatusRequest, _$UpdateStockAdjustmentStatusRequest];

  @override
  final String wireName = r'UpdateStockAdjustmentStatusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateStockAdjustmentStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(StockAdjustmentStatus),
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
    UpdateStockAdjustmentStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateStockAdjustmentStatusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StockAdjustmentStatus),
          ) as StockAdjustmentStatus;
          result.status = valueDes;
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
  UpdateStockAdjustmentStatusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateStockAdjustmentStatusRequestBuilder();
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

