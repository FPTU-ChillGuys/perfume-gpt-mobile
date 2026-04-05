//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_olfactory_family_response.g.dart';

/// ProductOlfactoryFamilyResponse
///
/// Properties:
/// * [olfactoryFamilyId] 
/// * [name] 
@BuiltValue()
abstract class ProductOlfactoryFamilyResponse implements Built<ProductOlfactoryFamilyResponse, ProductOlfactoryFamilyResponseBuilder> {
  @BuiltValueField(wireName: r'olfactoryFamilyId')
  int? get olfactoryFamilyId;

  @BuiltValueField(wireName: r'name')
  String get name;

  ProductOlfactoryFamilyResponse._();

  factory ProductOlfactoryFamilyResponse([void updates(ProductOlfactoryFamilyResponseBuilder b)]) = _$ProductOlfactoryFamilyResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductOlfactoryFamilyResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductOlfactoryFamilyResponse> get serializer => _$ProductOlfactoryFamilyResponseSerializer();
}

class _$ProductOlfactoryFamilyResponseSerializer implements PrimitiveSerializer<ProductOlfactoryFamilyResponse> {
  @override
  final Iterable<Type> types = const [ProductOlfactoryFamilyResponse, _$ProductOlfactoryFamilyResponse];

  @override
  final String wireName = r'ProductOlfactoryFamilyResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductOlfactoryFamilyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.olfactoryFamilyId != null) {
      yield r'olfactoryFamilyId';
      yield serializers.serialize(
        object.olfactoryFamilyId,
        specifiedType: const FullType(int),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductOlfactoryFamilyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductOlfactoryFamilyResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'olfactoryFamilyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.olfactoryFamilyId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductOlfactoryFamilyResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductOlfactoryFamilyResponseBuilder();
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

