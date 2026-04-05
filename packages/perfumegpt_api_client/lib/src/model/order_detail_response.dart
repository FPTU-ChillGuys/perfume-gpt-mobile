//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/reserved_batch_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_detail_response.g.dart';

/// OrderDetailResponse
///
/// Properties:
/// * [id] 
/// * [variantId] 
/// * [variantName] 
/// * [imageUrl] 
/// * [quantity] 
/// * [unitPrice] 
/// * [refunablePrice] 
/// * [total] 
/// * [reservedBatches] 
@BuiltValue()
abstract class OrderDetailResponse implements Built<OrderDetailResponse, OrderDetailResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'variantId')
  String? get variantId;

  @BuiltValueField(wireName: r'variantName')
  String get variantName;

  @BuiltValueField(wireName: r'imageUrl')
  String? get imageUrl;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  @BuiltValueField(wireName: r'unitPrice')
  num? get unitPrice;

  @BuiltValueField(wireName: r'refunablePrice')
  num? get refunablePrice;

  @BuiltValueField(wireName: r'total')
  num? get total;

  @BuiltValueField(wireName: r'reservedBatches')
  BuiltList<ReservedBatchResponse> get reservedBatches;

  OrderDetailResponse._();

  factory OrderDetailResponse([void updates(OrderDetailResponseBuilder b)]) = _$OrderDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderDetailResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderDetailResponse> get serializer => _$OrderDetailResponseSerializer();
}

class _$OrderDetailResponseSerializer implements PrimitiveSerializer<OrderDetailResponse> {
  @override
  final Iterable<Type> types = const [OrderDetailResponse, _$OrderDetailResponse];

  @override
  final String wireName = r'OrderDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.imageUrl != null) {
      yield r'imageUrl';
      yield serializers.serialize(
        object.imageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.unitPrice != null) {
      yield r'unitPrice';
      yield serializers.serialize(
        object.unitPrice,
        specifiedType: const FullType(num),
      );
    }
    if (object.refunablePrice != null) {
      yield r'refunablePrice';
      yield serializers.serialize(
        object.refunablePrice,
        specifiedType: const FullType(num),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(num),
      );
    }
    yield r'reservedBatches';
    yield serializers.serialize(
      object.reservedBatches,
      specifiedType: const FullType(BuiltList, [FullType(ReservedBatchResponse)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderDetailResponseBuilder result,
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
        case r'imageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.imageUrl = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'unitPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.unitPrice = valueDes;
          break;
        case r'refunablePrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.refunablePrice = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'reservedBatches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ReservedBatchResponse)]),
          ) as BuiltList<ReservedBatchResponse>;
          result.reservedBatches.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderDetailResponseBuilder();
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

