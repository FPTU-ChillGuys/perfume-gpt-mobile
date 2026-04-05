//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'variant_image_upload_item.g.dart';

/// VariantImageUploadItem
///
/// Properties:
/// * [imageFile] 
/// * [altText] 
/// * [displayOrder] 
/// * [isPrimary] 
@BuiltValue()
abstract class VariantImageUploadItem implements Built<VariantImageUploadItem, VariantImageUploadItemBuilder> {
  @BuiltValueField(wireName: r'imageFile')
  Uint8List get imageFile;

  @BuiltValueField(wireName: r'altText')
  String? get altText;

  @BuiltValueField(wireName: r'displayOrder')
  int? get displayOrder;

  @BuiltValueField(wireName: r'isPrimary')
  bool? get isPrimary;

  VariantImageUploadItem._();

  factory VariantImageUploadItem([void updates(VariantImageUploadItemBuilder b)]) = _$VariantImageUploadItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VariantImageUploadItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VariantImageUploadItem> get serializer => _$VariantImageUploadItemSerializer();
}

class _$VariantImageUploadItemSerializer implements PrimitiveSerializer<VariantImageUploadItem> {
  @override
  final Iterable<Type> types = const [VariantImageUploadItem, _$VariantImageUploadItem];

  @override
  final String wireName = r'VariantImageUploadItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VariantImageUploadItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'imageFile';
    yield serializers.serialize(
      object.imageFile,
      specifiedType: const FullType(Uint8List),
    );
    if (object.altText != null) {
      yield r'altText';
      yield serializers.serialize(
        object.altText,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.displayOrder != null) {
      yield r'displayOrder';
      yield serializers.serialize(
        object.displayOrder,
        specifiedType: const FullType(int),
      );
    }
    if (object.isPrimary != null) {
      yield r'isPrimary';
      yield serializers.serialize(
        object.isPrimary,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VariantImageUploadItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VariantImageUploadItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'imageFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Uint8List),
          ) as Uint8List;
          result.imageFile = valueDes;
          break;
        case r'altText':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.altText = valueDes;
          break;
        case r'displayOrder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.displayOrder = valueDes;
          break;
        case r'isPrimary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPrimary = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VariantImageUploadItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VariantImageUploadItemBuilder();
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

