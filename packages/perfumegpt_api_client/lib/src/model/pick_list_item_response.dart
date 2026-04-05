//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/pick_list_batch_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pick_list_item_response.g.dart';

/// PickListItemResponse
///
/// Properties:
/// * [orderDetailId] 
/// * [variantId] 
/// * [variantName] 
/// * [quantity] 
/// * [batches] 
@BuiltValue()
abstract class PickListItemResponse implements Built<PickListItemResponse, PickListItemResponseBuilder> {
  @BuiltValueField(wireName: r'orderDetailId')
  String? get orderDetailId;

  @BuiltValueField(wireName: r'variantId')
  String? get variantId;

  @BuiltValueField(wireName: r'variantName')
  String get variantName;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  @BuiltValueField(wireName: r'batches')
  BuiltList<PickListBatchInfo> get batches;

  PickListItemResponse._();

  factory PickListItemResponse([void updates(PickListItemResponseBuilder b)]) = _$PickListItemResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PickListItemResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PickListItemResponse> get serializer => _$PickListItemResponseSerializer();
}

class _$PickListItemResponseSerializer implements PrimitiveSerializer<PickListItemResponse> {
  @override
  final Iterable<Type> types = const [PickListItemResponse, _$PickListItemResponse];

  @override
  final String wireName = r'PickListItemResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PickListItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.orderDetailId != null) {
      yield r'orderDetailId';
      yield serializers.serialize(
        object.orderDetailId,
        specifiedType: const FullType(String),
      );
    }
    if (object.variantId != null) {
      yield r'variantId';
      yield serializers.serialize(
        object.variantId,
        specifiedType: const FullType(String),
      );
    }
    yield r'variantName';
    yield serializers.serialize(
      object.variantName,
      specifiedType: const FullType(String),
    );
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
      );
    }
    yield r'batches';
    yield serializers.serialize(
      object.batches,
      specifiedType: const FullType(BuiltList, [FullType(PickListBatchInfo)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PickListItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PickListItemResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'orderDetailId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderDetailId = valueDes;
          break;
        case r'variantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantId = valueDes;
          break;
        case r'variantName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantName = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'batches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PickListBatchInfo)]),
          ) as BuiltList<PickListBatchInfo>;
          result.batches.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PickListItemResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PickListItemResponseBuilder();
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

