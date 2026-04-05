//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/stock_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stock_response.g.dart';

/// StockResponse
///
/// Properties:
/// * [id] 
/// * [variantId] 
/// * [variantSku] 
/// * [productName] 
/// * [variantImageUrl] 
/// * [volumeMl] 
/// * [concentrationName] 
/// * [totalQuantity] 
/// * [availableQuantity] 
/// * [lowStockThreshold] 
/// * [status] 
@BuiltValue()
abstract class StockResponse implements Built<StockResponse, StockResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'variantId')
  String? get variantId;

  @BuiltValueField(wireName: r'variantSku')
  String get variantSku;

  @BuiltValueField(wireName: r'productName')
  String get productName;

  @BuiltValueField(wireName: r'variantImageUrl')
  String get variantImageUrl;

  @BuiltValueField(wireName: r'volumeMl')
  int? get volumeMl;

  @BuiltValueField(wireName: r'concentrationName')
  String get concentrationName;

  @BuiltValueField(wireName: r'totalQuantity')
  int? get totalQuantity;

  @BuiltValueField(wireName: r'availableQuantity')
  int? get availableQuantity;

  @BuiltValueField(wireName: r'lowStockThreshold')
  int? get lowStockThreshold;

  @BuiltValueField(wireName: r'status')
  StockStatus? get status;
  // enum statusEnum {  OutOfStock,  LowStock,  Normal,  };

  StockResponse._();

  factory StockResponse([void updates(StockResponseBuilder b)]) = _$StockResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StockResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StockResponse> get serializer => _$StockResponseSerializer();
}

class _$StockResponseSerializer implements PrimitiveSerializer<StockResponse> {
  @override
  final Iterable<Type> types = const [StockResponse, _$StockResponse];

  @override
  final String wireName = r'StockResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StockResponse object, {
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
    yield r'variantSku';
    yield serializers.serialize(
      object.variantSku,
      specifiedType: const FullType(String),
    );
    yield r'productName';
    yield serializers.serialize(
      object.productName,
      specifiedType: const FullType(String),
    );
    yield r'variantImageUrl';
    yield serializers.serialize(
      object.variantImageUrl,
      specifiedType: const FullType(String),
    );
    if (object.volumeMl != null) {
      yield r'volumeMl';
      yield serializers.serialize(
        object.volumeMl,
        specifiedType: const FullType(int),
      );
    }
    yield r'concentrationName';
    yield serializers.serialize(
      object.concentrationName,
      specifiedType: const FullType(String),
    );
    if (object.totalQuantity != null) {
      yield r'totalQuantity';
      yield serializers.serialize(
        object.totalQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.availableQuantity != null) {
      yield r'availableQuantity';
      yield serializers.serialize(
        object.availableQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.lowStockThreshold != null) {
      yield r'lowStockThreshold';
      yield serializers.serialize(
        object.lowStockThreshold,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(StockStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StockResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StockResponseBuilder result,
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
        case r'variantSku':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantSku = valueDes;
          break;
        case r'productName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productName = valueDes;
          break;
        case r'variantImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantImageUrl = valueDes;
          break;
        case r'volumeMl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.volumeMl = valueDes;
          break;
        case r'concentrationName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.concentrationName = valueDes;
          break;
        case r'totalQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalQuantity = valueDes;
          break;
        case r'availableQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.availableQuantity = valueDes;
          break;
        case r'lowStockThreshold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lowStockThreshold = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StockStatus),
          ) as StockStatus;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StockResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StockResponseBuilder();
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

