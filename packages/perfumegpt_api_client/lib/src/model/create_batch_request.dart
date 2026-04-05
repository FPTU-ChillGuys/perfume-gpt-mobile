//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_batch_request.g.dart';

/// CreateBatchRequest
///
/// Properties:
/// * [batchCode] 
/// * [manufactureDate] 
/// * [expiryDate] 
/// * [quantity] 
@BuiltValue()
abstract class CreateBatchRequest implements Built<CreateBatchRequest, CreateBatchRequestBuilder> {
  @BuiltValueField(wireName: r'batchCode')
  String get batchCode;

  @BuiltValueField(wireName: r'manufactureDate')
  DateTime get manufactureDate;

  @BuiltValueField(wireName: r'expiryDate')
  DateTime get expiryDate;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  CreateBatchRequest._();

  factory CreateBatchRequest([void updates(CreateBatchRequestBuilder b)]) = _$CreateBatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateBatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateBatchRequest> get serializer => _$CreateBatchRequestSerializer();
}

class _$CreateBatchRequestSerializer implements PrimitiveSerializer<CreateBatchRequest> {
  @override
  final Iterable<Type> types = const [CreateBatchRequest, _$CreateBatchRequest];

  @override
  final String wireName = r'CreateBatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateBatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'batchCode';
    yield serializers.serialize(
      object.batchCode,
      specifiedType: const FullType(String),
    );
    yield r'manufactureDate';
    yield serializers.serialize(
      object.manufactureDate,
      specifiedType: const FullType(DateTime),
    );
    yield r'expiryDate';
    yield serializers.serialize(
      object.expiryDate,
      specifiedType: const FullType(DateTime),
    );
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateBatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateBatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'batchCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.batchCode = valueDes;
          break;
        case r'manufactureDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.manufactureDate = valueDes;
          break;
        case r'expiryDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiryDate = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateBatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBatchRequestBuilder();
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

