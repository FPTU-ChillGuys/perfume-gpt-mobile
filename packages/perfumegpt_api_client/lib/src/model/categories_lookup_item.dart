//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'categories_lookup_item.g.dart';

/// CategoriesLookupItem
///
/// Properties:
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class CategoriesLookupItem implements Built<CategoriesLookupItem, CategoriesLookupItemBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  CategoriesLookupItem._();

  factory CategoriesLookupItem([void updates(CategoriesLookupItemBuilder b)]) = _$CategoriesLookupItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CategoriesLookupItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CategoriesLookupItem> get serializer => _$CategoriesLookupItemSerializer();
}

class _$CategoriesLookupItemSerializer implements PrimitiveSerializer<CategoriesLookupItem> {
  @override
  final Iterable<Type> types = const [CategoriesLookupItem, _$CategoriesLookupItem];

  @override
  final String wireName = r'CategoriesLookupItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CategoriesLookupItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    CategoriesLookupItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CategoriesLookupItemBuilder result,
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
  CategoriesLookupItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CategoriesLookupItemBuilder();
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

