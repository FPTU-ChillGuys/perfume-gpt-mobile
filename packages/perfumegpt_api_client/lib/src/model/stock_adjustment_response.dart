//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/stock_adjustment_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/stock_adjustment_status.dart';
import 'package:perfumegpt_api_client/src/model/stock_adjustment_reason.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stock_adjustment_response.g.dart';

/// StockAdjustmentResponse
///
/// Properties:
/// * [id] 
/// * [createdById] 
/// * [createdByName] 
/// * [verifiedById] 
/// * [verifiedByName] 
/// * [adjustmentDate] 
/// * [reason] 
/// * [note] 
/// * [status] 
/// * [adjustmentDetails] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class StockAdjustmentResponse implements Built<StockAdjustmentResponse, StockAdjustmentResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'createdById')
  String? get createdById;

  @BuiltValueField(wireName: r'createdByName')
  String get createdByName;

  @BuiltValueField(wireName: r'verifiedById')
  String? get verifiedById;

  @BuiltValueField(wireName: r'verifiedByName')
  String? get verifiedByName;

  @BuiltValueField(wireName: r'adjustmentDate')
  DateTime? get adjustmentDate;

  @BuiltValueField(wireName: r'reason')
  StockAdjustmentReason? get reason;
  // enum reasonEnum {  Damage,  Expired,  Theft,  Loss,  Found,  Correction,  Return,  Other,  };

  @BuiltValueField(wireName: r'note')
  String? get note;

  @BuiltValueField(wireName: r'status')
  StockAdjustmentStatus? get status;
  // enum statusEnum {  Pending,  InProgress,  Completed,  Cancelled,  };

  @BuiltValueField(wireName: r'adjustmentDetails')
  BuiltList<StockAdjustmentDetailResponse> get adjustmentDetails;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  StockAdjustmentResponse._();

  factory StockAdjustmentResponse([void updates(StockAdjustmentResponseBuilder b)]) = _$StockAdjustmentResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StockAdjustmentResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StockAdjustmentResponse> get serializer => _$StockAdjustmentResponseSerializer();
}

class _$StockAdjustmentResponseSerializer implements PrimitiveSerializer<StockAdjustmentResponse> {
  @override
  final Iterable<Type> types = const [StockAdjustmentResponse, _$StockAdjustmentResponse];

  @override
  final String wireName = r'StockAdjustmentResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StockAdjustmentResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdById != null) {
      yield r'createdById';
      yield serializers.serialize(
        object.createdById,
        specifiedType: const FullType(String),
      );
    }
    yield r'createdByName';
    yield serializers.serialize(
      object.createdByName,
      specifiedType: const FullType(String),
    );
    if (object.verifiedById != null) {
      yield r'verifiedById';
      yield serializers.serialize(
        object.verifiedById,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.verifiedByName != null) {
      yield r'verifiedByName';
      yield serializers.serialize(
        object.verifiedByName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.adjustmentDate != null) {
      yield r'adjustmentDate';
      yield serializers.serialize(
        object.adjustmentDate,
        specifiedType: const FullType(DateTime),
      );
    }
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(StockAdjustmentStatus),
      );
    }
    yield r'adjustmentDetails';
    yield serializers.serialize(
      object.adjustmentDetails,
      specifiedType: const FullType(BuiltList, [FullType(StockAdjustmentDetailResponse)]),
    );
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StockAdjustmentResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StockAdjustmentResponseBuilder result,
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
        case r'createdById':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdById = valueDes;
          break;
        case r'createdByName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdByName = valueDes;
          break;
        case r'verifiedById':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.verifiedById = valueDes;
          break;
        case r'verifiedByName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.verifiedByName = valueDes;
          break;
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StockAdjustmentStatus),
          ) as StockAdjustmentStatus;
          result.status = valueDes;
          break;
        case r'adjustmentDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StockAdjustmentDetailResponse)]),
          ) as BuiltList<StockAdjustmentDetailResponse>;
          result.adjustmentDetails.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StockAdjustmentResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StockAdjustmentResponseBuilder();
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

