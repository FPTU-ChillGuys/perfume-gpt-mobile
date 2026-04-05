//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inventory_summary_response.g.dart';

/// InventorySummaryResponse
///
/// Properties:
/// * [totalVariants] 
/// * [totalStockQuantity] 
/// * [lowStockVariantsCount] 
/// * [totalBatches] 
/// * [expiredBatchesCount] 
/// * [expiringSoonCount] 
@BuiltValue()
abstract class InventorySummaryResponse implements Built<InventorySummaryResponse, InventorySummaryResponseBuilder> {
  @BuiltValueField(wireName: r'totalVariants')
  int? get totalVariants;

  @BuiltValueField(wireName: r'totalStockQuantity')
  int? get totalStockQuantity;

  @BuiltValueField(wireName: r'lowStockVariantsCount')
  int? get lowStockVariantsCount;

  @BuiltValueField(wireName: r'totalBatches')
  int? get totalBatches;

  @BuiltValueField(wireName: r'expiredBatchesCount')
  int? get expiredBatchesCount;

  @BuiltValueField(wireName: r'expiringSoonCount')
  int? get expiringSoonCount;

  InventorySummaryResponse._();

  factory InventorySummaryResponse([void updates(InventorySummaryResponseBuilder b)]) = _$InventorySummaryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InventorySummaryResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InventorySummaryResponse> get serializer => _$InventorySummaryResponseSerializer();
}

class _$InventorySummaryResponseSerializer implements PrimitiveSerializer<InventorySummaryResponse> {
  @override
  final Iterable<Type> types = const [InventorySummaryResponse, _$InventorySummaryResponse];

  @override
  final String wireName = r'InventorySummaryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InventorySummaryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.totalVariants != null) {
      yield r'totalVariants';
      yield serializers.serialize(
        object.totalVariants,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalStockQuantity != null) {
      yield r'totalStockQuantity';
      yield serializers.serialize(
        object.totalStockQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.lowStockVariantsCount != null) {
      yield r'lowStockVariantsCount';
      yield serializers.serialize(
        object.lowStockVariantsCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.totalBatches != null) {
      yield r'totalBatches';
      yield serializers.serialize(
        object.totalBatches,
        specifiedType: const FullType(int),
      );
    }
    if (object.expiredBatchesCount != null) {
      yield r'expiredBatchesCount';
      yield serializers.serialize(
        object.expiredBatchesCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.expiringSoonCount != null) {
      yield r'expiringSoonCount';
      yield serializers.serialize(
        object.expiringSoonCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InventorySummaryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InventorySummaryResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'totalVariants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalVariants = valueDes;
          break;
        case r'totalStockQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalStockQuantity = valueDes;
          break;
        case r'lowStockVariantsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lowStockVariantsCount = valueDes;
          break;
        case r'totalBatches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalBatches = valueDes;
          break;
        case r'expiredBatchesCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiredBatchesCount = valueDes;
          break;
        case r'expiringSoonCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiringSoonCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InventorySummaryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InventorySummaryResponseBuilder();
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

