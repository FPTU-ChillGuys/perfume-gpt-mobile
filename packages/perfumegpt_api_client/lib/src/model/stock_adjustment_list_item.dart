//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/stock_adjustment_status.dart';
import 'package:perfumegpt_api_client/src/model/stock_adjustment_reason.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stock_adjustment_list_item.g.dart';

/// StockAdjustmentListItem
///
/// Properties:
/// * [id] 
/// * [createdByName] 
/// * [adjustmentDate] 
/// * [reason] 
/// * [status] 
/// * [totalItems] 
/// * [createdAt] 
@BuiltValue()
abstract class StockAdjustmentListItem implements Built<StockAdjustmentListItem, StockAdjustmentListItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'createdByName')
  String get createdByName;

  @BuiltValueField(wireName: r'adjustmentDate')
  DateTime? get adjustmentDate;

  @BuiltValueField(wireName: r'reason')
  StockAdjustmentReason? get reason;
  // enum reasonEnum {  Damage,  Expired,  Theft,  Loss,  Found,  Correction,  Return,  Other,  };

  @BuiltValueField(wireName: r'status')
  StockAdjustmentStatus? get status;
  // enum statusEnum {  Pending,  InProgress,  Completed,  Cancelled,  };

  @BuiltValueField(wireName: r'totalItems')
  int? get totalItems;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  StockAdjustmentListItem._();

  factory StockAdjustmentListItem([void updates(StockAdjustmentListItemBuilder b)]) = _$StockAdjustmentListItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StockAdjustmentListItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StockAdjustmentListItem> get serializer => _$StockAdjustmentListItemSerializer();
}

class _$StockAdjustmentListItemSerializer implements PrimitiveSerializer<StockAdjustmentListItem> {
  @override
  final Iterable<Type> types = const [StockAdjustmentListItem, _$StockAdjustmentListItem];

  @override
  final String wireName = r'StockAdjustmentListItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StockAdjustmentListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'createdByName';
    yield serializers.serialize(
      object.createdByName,
      specifiedType: const FullType(String),
    );
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(StockAdjustmentStatus),
      );
    }
    if (object.totalItems != null) {
      yield r'totalItems';
      yield serializers.serialize(
        object.totalItems,
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
    StockAdjustmentListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StockAdjustmentListItemBuilder result,
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
        case r'createdByName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdByName = valueDes;
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StockAdjustmentStatus),
          ) as StockAdjustmentStatus;
          result.status = valueDes;
          break;
        case r'totalItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalItems = valueDes;
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
  StockAdjustmentListItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StockAdjustmentListItemBuilder();
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

