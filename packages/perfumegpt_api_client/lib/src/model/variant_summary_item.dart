//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'variant_summary_item.g.dart';

/// VariantSummaryItem
///
/// Properties:
/// * [id] 
/// * [displayName] 
/// * [concentrationName] 
@BuiltValue()
abstract class VariantSummaryItem implements Built<VariantSummaryItem, VariantSummaryItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'displayName')
  String get displayName;

  @BuiltValueField(wireName: r'concentrationName')
  String get concentrationName;

  VariantSummaryItem._();

  factory VariantSummaryItem([void updates(VariantSummaryItemBuilder b)]) = _$VariantSummaryItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VariantSummaryItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VariantSummaryItem> get serializer => _$VariantSummaryItemSerializer();
}

class _$VariantSummaryItemSerializer implements PrimitiveSerializer<VariantSummaryItem> {
  @override
  final Iterable<Type> types = const [VariantSummaryItem, _$VariantSummaryItem];

  @override
  final String wireName = r'VariantSummaryItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VariantSummaryItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'displayName';
    yield serializers.serialize(
      object.displayName,
      specifiedType: const FullType(String),
    );
    yield r'concentrationName';
    yield serializers.serialize(
      object.concentrationName,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VariantSummaryItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VariantSummaryItemBuilder result,
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
        case r'displayName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.displayName = valueDes;
          break;
        case r'concentrationName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.concentrationName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VariantSummaryItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VariantSummaryItemBuilder();
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

