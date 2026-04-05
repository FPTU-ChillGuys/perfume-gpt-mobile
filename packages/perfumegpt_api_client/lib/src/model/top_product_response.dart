//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'top_product_response.g.dart';

/// TopProductResponse
///
/// Properties:
/// * [productId] 
/// * [productName] 
/// * [totalUnitsSold] 
/// * [revenue] 
@BuiltValue()
abstract class TopProductResponse implements Built<TopProductResponse, TopProductResponseBuilder> {
  @BuiltValueField(wireName: r'productId')
  String? get productId;

  @BuiltValueField(wireName: r'productName')
  String get productName;

  @BuiltValueField(wireName: r'totalUnitsSold')
  int? get totalUnitsSold;

  @BuiltValueField(wireName: r'revenue')
  num? get revenue;

  TopProductResponse._();

  factory TopProductResponse([void updates(TopProductResponseBuilder b)]) = _$TopProductResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TopProductResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TopProductResponse> get serializer => _$TopProductResponseSerializer();
}

class _$TopProductResponseSerializer implements PrimitiveSerializer<TopProductResponse> {
  @override
  final Iterable<Type> types = const [TopProductResponse, _$TopProductResponse];

  @override
  final String wireName = r'TopProductResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TopProductResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(String),
      );
    }
    yield r'productName';
    yield serializers.serialize(
      object.productName,
      specifiedType: const FullType(String),
    );
    if (object.totalUnitsSold != null) {
      yield r'totalUnitsSold';
      yield serializers.serialize(
        object.totalUnitsSold,
        specifiedType: const FullType(int),
      );
    }
    if (object.revenue != null) {
      yield r'revenue';
      yield serializers.serialize(
        object.revenue,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TopProductResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TopProductResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productId = valueDes;
          break;
        case r'productName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productName = valueDes;
          break;
        case r'totalUnitsSold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalUnitsSold = valueDes;
          break;
        case r'revenue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.revenue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TopProductResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TopProductResponseBuilder();
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

