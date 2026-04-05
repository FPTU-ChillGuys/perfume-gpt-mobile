//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'return_item_dto.g.dart';

/// ReturnItemDto
///
/// Properties:
/// * [orderDetailId] 
/// * [quantity] 
@BuiltValue()
abstract class ReturnItemDto implements Built<ReturnItemDto, ReturnItemDtoBuilder> {
  @BuiltValueField(wireName: r'orderDetailId')
  String? get orderDetailId;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  ReturnItemDto._();

  factory ReturnItemDto([void updates(ReturnItemDtoBuilder b)]) = _$ReturnItemDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReturnItemDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReturnItemDto> get serializer => _$ReturnItemDtoSerializer();
}

class _$ReturnItemDtoSerializer implements PrimitiveSerializer<ReturnItemDto> {
  @override
  final Iterable<Type> types = const [ReturnItemDto, _$ReturnItemDto];

  @override
  final String wireName = r'ReturnItemDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReturnItemDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.orderDetailId != null) {
      yield r'orderDetailId';
      yield serializers.serialize(
        object.orderDetailId,
        specifiedType: const FullType(String),
      );
    }
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
    ReturnItemDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReturnItemDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'orderDetailId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderDetailId = valueDes;
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
  ReturnItemDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReturnItemDtoBuilder();
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

