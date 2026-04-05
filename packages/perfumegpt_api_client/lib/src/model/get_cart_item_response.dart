//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/variant_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_cart_item_response.g.dart';

/// GetCartItemResponse
///
/// Properties:
/// * [cartItemId] 
/// * [variantId] 
/// * [variantName] 
/// * [imageUrl] 
/// * [volumeMl] 
/// * [type] 
/// * [variantPrice] 
/// * [quantity] 
/// * [isAvailable] 
/// * [subTotal] 
@BuiltValue()
abstract class GetCartItemResponse implements Built<GetCartItemResponse, GetCartItemResponseBuilder> {
  @BuiltValueField(wireName: r'cartItemId')
  String? get cartItemId;

  @BuiltValueField(wireName: r'variantId')
  String? get variantId;

  @BuiltValueField(wireName: r'variantName')
  String get variantName;

  @BuiltValueField(wireName: r'imageUrl')
  String get imageUrl;

  @BuiltValueField(wireName: r'volumeMl')
  int? get volumeMl;

  @BuiltValueField(wireName: r'type')
  VariantType? get type;
  // enum typeEnum {  Standard,  FullBox,  Tester,  Mini,  };

  @BuiltValueField(wireName: r'variantPrice')
  num? get variantPrice;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  @BuiltValueField(wireName: r'isAvailable')
  bool? get isAvailable;

  @BuiltValueField(wireName: r'subTotal')
  num? get subTotal;

  GetCartItemResponse._();

  factory GetCartItemResponse([void updates(GetCartItemResponseBuilder b)]) = _$GetCartItemResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetCartItemResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetCartItemResponse> get serializer => _$GetCartItemResponseSerializer();
}

class _$GetCartItemResponseSerializer implements PrimitiveSerializer<GetCartItemResponse> {
  @override
  final Iterable<Type> types = const [GetCartItemResponse, _$GetCartItemResponse];

  @override
  final String wireName = r'GetCartItemResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetCartItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cartItemId != null) {
      yield r'cartItemId';
      yield serializers.serialize(
        object.cartItemId,
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
    yield r'imageUrl';
    yield serializers.serialize(
      object.imageUrl,
      specifiedType: const FullType(String),
    );
    if (object.volumeMl != null) {
      yield r'volumeMl';
      yield serializers.serialize(
        object.volumeMl,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(VariantType),
      );
    }
    if (object.variantPrice != null) {
      yield r'variantPrice';
      yield serializers.serialize(
        object.variantPrice,
        specifiedType: const FullType(num),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.isAvailable != null) {
      yield r'isAvailable';
      yield serializers.serialize(
        object.isAvailable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.subTotal != null) {
      yield r'subTotal';
      yield serializers.serialize(
        object.subTotal,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetCartItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetCartItemResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cartItemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cartItemId = valueDes;
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
            specifiedType: const FullType(String),
          ) as String;
          result.imageUrl = valueDes;
          break;
        case r'volumeMl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.volumeMl = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VariantType),
          ) as VariantType;
          result.type = valueDes;
          break;
        case r'variantPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.variantPrice = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'isAvailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isAvailable = valueDes;
          break;
        case r'subTotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.subTotal = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetCartItemResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCartItemResponseBuilder();
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

