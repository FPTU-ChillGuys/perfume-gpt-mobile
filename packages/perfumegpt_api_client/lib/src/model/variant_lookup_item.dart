//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'variant_lookup_item.g.dart';

/// VariantLookupItem
///
/// Properties:
/// * [id] 
/// * [barcode] 
/// * [sku] 
/// * [displayName] 
/// * [volumeMl] 
/// * [concentrationName] 
/// * [basePrice] 
/// * [primaryImageUrl] 
@BuiltValue()
abstract class VariantLookupItem implements Built<VariantLookupItem, VariantLookupItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'barcode')
  String get barcode;

  @BuiltValueField(wireName: r'sku')
  String get sku;

  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @BuiltValueField(wireName: r'volumeMl')
  int? get volumeMl;

  @BuiltValueField(wireName: r'concentrationName')
  String get concentrationName;

  @BuiltValueField(wireName: r'basePrice')
  num? get basePrice;

  @BuiltValueField(wireName: r'primaryImageUrl')
  String? get primaryImageUrl;

  VariantLookupItem._();

  factory VariantLookupItem([void updates(VariantLookupItemBuilder b)]) = _$VariantLookupItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VariantLookupItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VariantLookupItem> get serializer => _$VariantLookupItemSerializer();
}

class _$VariantLookupItemSerializer implements PrimitiveSerializer<VariantLookupItem> {
  @override
  final Iterable<Type> types = const [VariantLookupItem, _$VariantLookupItem];

  @override
  final String wireName = r'VariantLookupItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VariantLookupItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'barcode';
    yield serializers.serialize(
      object.barcode,
      specifiedType: const FullType(String),
    );
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
    if (object.basePrice != null) {
      yield r'basePrice';
      yield serializers.serialize(
        object.basePrice,
        specifiedType: const FullType(num),
      );
    }
    if (object.primaryImageUrl != null) {
      yield r'primaryImageUrl';
      yield serializers.serialize(
        object.primaryImageUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VariantLookupItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VariantLookupItemBuilder result,
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
        case r'barcode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.barcode = valueDes;
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
        case r'basePrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.basePrice = valueDes;
          break;
        case r'primaryImageUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.primaryImageUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VariantLookupItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VariantLookupItemBuilder();
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

