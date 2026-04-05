//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attribute_value_lookup_item.g.dart';

/// AttributeValueLookupItem
///
/// Properties:
/// * [id] 
/// * [value] 
@BuiltValue()
abstract class AttributeValueLookupItem implements Built<AttributeValueLookupItem, AttributeValueLookupItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'value')
  String get value;

  AttributeValueLookupItem._();

  factory AttributeValueLookupItem([void updates(AttributeValueLookupItemBuilder b)]) = _$AttributeValueLookupItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttributeValueLookupItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttributeValueLookupItem> get serializer => _$AttributeValueLookupItemSerializer();
}

class _$AttributeValueLookupItemSerializer implements PrimitiveSerializer<AttributeValueLookupItem> {
  @override
  final Iterable<Type> types = const [AttributeValueLookupItem, _$AttributeValueLookupItem];

  @override
  final String wireName = r'AttributeValueLookupItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttributeValueLookupItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AttributeValueLookupItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AttributeValueLookupItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AttributeValueLookupItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributeValueLookupItemBuilder();
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

