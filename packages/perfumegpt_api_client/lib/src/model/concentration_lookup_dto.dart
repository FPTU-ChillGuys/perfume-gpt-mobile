//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'concentration_lookup_dto.g.dart';

/// ConcentrationLookupDto
///
/// Properties:
/// * [id] 
/// * [name] 
@BuiltValue()
abstract class ConcentrationLookupDto implements Built<ConcentrationLookupDto, ConcentrationLookupDtoBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  ConcentrationLookupDto._();

  factory ConcentrationLookupDto([void updates(ConcentrationLookupDtoBuilder b)]) = _$ConcentrationLookupDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConcentrationLookupDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConcentrationLookupDto> get serializer => _$ConcentrationLookupDtoSerializer();
}

class _$ConcentrationLookupDtoSerializer implements PrimitiveSerializer<ConcentrationLookupDto> {
  @override
  final Iterable<Type> types = const [ConcentrationLookupDto, _$ConcentrationLookupDto];

  @override
  final String wireName = r'ConcentrationLookupDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConcentrationLookupDto object, {
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
    ConcentrationLookupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConcentrationLookupDtoBuilder result,
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
  ConcentrationLookupDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConcentrationLookupDtoBuilder();
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

