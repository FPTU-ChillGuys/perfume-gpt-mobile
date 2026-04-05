//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inventory_levels_response.g.dart';

/// InventoryLevelsResponse
///
/// Properties:
/// * [totalVariants] 
/// * [totalStockQuantity] 
/// * [totalAvailableQuantity] 
/// * [lowStockVariantsCount] 
/// * [outOfStockVariantsCount] 
/// * [totalBatches] 
/// * [expiredBatchesCount] 
/// * [expiringSoonCount] 
@BuiltValue()
abstract class InventoryLevelsResponse implements Built<InventoryLevelsResponse, InventoryLevelsResponseBuilder> {
  @BuiltValueField(wireName: r'totalVariants')
  int? get totalVariants;

  @BuiltValueField(wireName: r'totalStockQuantity')
  int? get totalStockQuantity;

  @BuiltValueField(wireName: r'totalAvailableQuantity')
  int? get totalAvailableQuantity;

  @BuiltValueField(wireName: r'lowStockVariantsCount')
  int? get lowStockVariantsCount;

  @BuiltValueField(wireName: r'outOfStockVariantsCount')
  int? get outOfStockVariantsCount;

  @BuiltValueField(wireName: r'totalBatches')
  int? get totalBatches;

  @BuiltValueField(wireName: r'expiredBatchesCount')
  int? get expiredBatchesCount;

  @BuiltValueField(wireName: r'expiringSoonCount')
  int? get expiringSoonCount;

  InventoryLevelsResponse._();

  factory InventoryLevelsResponse([void updates(InventoryLevelsResponseBuilder b)]) = _$InventoryLevelsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InventoryLevelsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InventoryLevelsResponse> get serializer => _$InventoryLevelsResponseSerializer();
}

class _$InventoryLevelsResponseSerializer implements PrimitiveSerializer<InventoryLevelsResponse> {
  @override
  final Iterable<Type> types = const [InventoryLevelsResponse, _$InventoryLevelsResponse];

  @override
  final String wireName = r'InventoryLevelsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InventoryLevelsResponse object, {
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
    if (object.totalAvailableQuantity != null) {
      yield r'totalAvailableQuantity';
      yield serializers.serialize(
        object.totalAvailableQuantity,
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
    if (object.outOfStockVariantsCount != null) {
      yield r'outOfStockVariantsCount';
      yield serializers.serialize(
        object.outOfStockVariantsCount,
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
    InventoryLevelsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InventoryLevelsResponseBuilder result,
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
        case r'totalAvailableQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalAvailableQuantity = valueDes;
          break;
        case r'lowStockVariantsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lowStockVariantsCount = valueDes;
          break;
        case r'outOfStockVariantsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.outOfStockVariantsCount = valueDes;
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
  InventoryLevelsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InventoryLevelsResponseBuilder();
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

