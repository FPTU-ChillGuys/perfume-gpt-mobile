//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/variant_daily_sale_figure.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_daily_sale_figure_response.g.dart';

/// ProductDailySaleFigureResponse
///
/// Properties:
/// * [productId] 
/// * [productName] 
/// * [dailySaleFigures] 
@BuiltValue()
abstract class ProductDailySaleFigureResponse implements Built<ProductDailySaleFigureResponse, ProductDailySaleFigureResponseBuilder> {
  @BuiltValueField(wireName: r'productId')
  String? get productId;

  @BuiltValueField(wireName: r'productName')
  String get productName;

  @BuiltValueField(wireName: r'dailySaleFigures')
  BuiltList<VariantDailySaleFigure> get dailySaleFigures;

  ProductDailySaleFigureResponse._();

  factory ProductDailySaleFigureResponse([void updates(ProductDailySaleFigureResponseBuilder b)]) = _$ProductDailySaleFigureResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductDailySaleFigureResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductDailySaleFigureResponse> get serializer => _$ProductDailySaleFigureResponseSerializer();
}

class _$ProductDailySaleFigureResponseSerializer implements PrimitiveSerializer<ProductDailySaleFigureResponse> {
  @override
  final Iterable<Type> types = const [ProductDailySaleFigureResponse, _$ProductDailySaleFigureResponse];

  @override
  final String wireName = r'ProductDailySaleFigureResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductDailySaleFigureResponse object, {
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
    yield r'dailySaleFigures';
    yield serializers.serialize(
      object.dailySaleFigures,
      specifiedType: const FullType(BuiltList, [FullType(VariantDailySaleFigure)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductDailySaleFigureResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductDailySaleFigureResponseBuilder result,
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
        case r'dailySaleFigures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(VariantDailySaleFigure)]),
          ) as BuiltList<VariantDailySaleFigure>;
          result.dailySaleFigures.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductDailySaleFigureResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductDailySaleFigureResponseBuilder();
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

