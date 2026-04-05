//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_import_detail_request.g.dart';

/// CreateImportDetailRequest
///
/// Properties:
/// * [variantId] 
/// * [expectedQuantity] 
/// * [unitPrice] 
@BuiltValue()
abstract class CreateImportDetailRequest implements Built<CreateImportDetailRequest, CreateImportDetailRequestBuilder> {
  @BuiltValueField(wireName: r'variantId')
  String get variantId;

  @BuiltValueField(wireName: r'expectedQuantity')
  int? get expectedQuantity;

  @BuiltValueField(wireName: r'unitPrice')
  num? get unitPrice;

  CreateImportDetailRequest._();

  factory CreateImportDetailRequest([void updates(CreateImportDetailRequestBuilder b)]) = _$CreateImportDetailRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateImportDetailRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateImportDetailRequest> get serializer => _$CreateImportDetailRequestSerializer();
}

class _$CreateImportDetailRequestSerializer implements PrimitiveSerializer<CreateImportDetailRequest> {
  @override
  final Iterable<Type> types = const [CreateImportDetailRequest, _$CreateImportDetailRequest];

  @override
  final String wireName = r'CreateImportDetailRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateImportDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    CreateImportDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateImportDetailRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  CreateImportDetailRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateImportDetailRequestBuilder();
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

