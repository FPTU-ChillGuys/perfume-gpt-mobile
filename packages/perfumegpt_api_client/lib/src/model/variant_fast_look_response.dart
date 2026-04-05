//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'variant_fast_look_response.g.dart';

/// VariantFastLookResponse
///
/// Properties:
/// * [id] 
/// * [sku] 
/// * [displayName] 
/// * [price] 
/// * [retailPrice] 
/// * [stockQuantity] 
/// * [media] 
@BuiltValue()
abstract class VariantFastLookResponse implements Built<VariantFastLookResponse, VariantFastLookResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'sku')
  String get sku;

  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @BuiltValueField(wireName: r'price')
  num? get price;

  @BuiltValueField(wireName: r'retailPrice')
  num? get retailPrice;

  @BuiltValueField(wireName: r'stockQuantity')
  int? get stockQuantity;

  @BuiltValueField(wireName: r'media')
  MediaResponse? get media;

  VariantFastLookResponse._();

  factory VariantFastLookResponse([void updates(VariantFastLookResponseBuilder b)]) = _$VariantFastLookResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VariantFastLookResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VariantFastLookResponse> get serializer => _$VariantFastLookResponseSerializer();
}

class _$VariantFastLookResponseSerializer implements PrimitiveSerializer<VariantFastLookResponse> {
  @override
  final Iterable<Type> types = const [VariantFastLookResponse, _$VariantFastLookResponse];

  @override
  final String wireName = r'VariantFastLookResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VariantFastLookResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'sku';
    yield serializers.serialize(
      object.sku,
      specifiedType: const FullType(String),
    );
    yield r'displayName';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(num),
      );
    }
    if (object.retailPrice != null) {
      yield r'retailPrice';
      yield serializers.serialize(
        object.retailPrice,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.stockQuantity != null) {
      yield r'stockQuantity';
      yield serializers.serialize(
        object.stockQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.media != null) {
      yield r'media';
      yield serializers.serialize(
        object.media,
        specifiedType: const FullType.nullable(MediaResponse),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VariantFastLookResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VariantFastLookResponseBuilder result,
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
        case r'sku':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sku = valueDes;
          break;
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.price = valueDes;
          break;
        case r'retailPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.retailPrice = valueDes;
          break;
        case r'stockQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.stockQuantity = valueDes;
          break;
        case r'media':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(MediaResponse),
          ) as MediaResponse?;
          if (valueDes == null) continue;
          result.media.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VariantFastLookResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VariantFastLookResponseBuilder();
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

