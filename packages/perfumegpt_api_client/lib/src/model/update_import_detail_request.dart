//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_import_detail_request.g.dart';

/// UpdateImportDetailRequest
///
/// Properties:
/// * [id] 
/// * [variantId] 
/// * [expectedQuantity] 
/// * [unitPrice] 
@BuiltValue()
abstract class UpdateImportDetailRequest implements Built<UpdateImportDetailRequest, UpdateImportDetailRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'variantId')
  String get variantId;

  @BuiltValueField(wireName: r'expectedQuantity')
  int? get expectedQuantity;

  @BuiltValueField(wireName: r'unitPrice')
  num? get unitPrice;

  UpdateImportDetailRequest._();

  factory UpdateImportDetailRequest([void updates(UpdateImportDetailRequestBuilder b)]) = _$UpdateImportDetailRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateImportDetailRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateImportDetailRequest> get serializer => _$UpdateImportDetailRequestSerializer();
}

class _$UpdateImportDetailRequestSerializer implements PrimitiveSerializer<UpdateImportDetailRequest> {
  @override
  final Iterable<Type> types = const [UpdateImportDetailRequest, _$UpdateImportDetailRequest];

  @override
  final String wireName = r'UpdateImportDetailRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateImportDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'variantId';
    yield serializers.serialize(
      object.variantId,
      specifiedType: const FullType(String),
    );
    if (object.expectedQuantity != null) {
      yield r'expectedQuantity';
      yield serializers.serialize(
        object.expectedQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.unitPrice != null) {
      yield r'unitPrice';
      yield serializers.serialize(
        object.unitPrice,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateImportDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateImportDetailRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'variantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantId = valueDes;
          break;
        case r'expectedQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expectedQuantity = valueDes;
          break;
        case r'unitPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.unitPrice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateImportDetailRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateImportDetailRequestBuilder();
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

