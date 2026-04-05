//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'process_initial_return_dto.g.dart';

/// ProcessInitialReturnDto
///
/// Properties:
/// * [isApproved] 
/// * [staffNote] 
@BuiltValue()
abstract class ProcessInitialReturnDto implements Built<ProcessInitialReturnDto, ProcessInitialReturnDtoBuilder> {
  @BuiltValueField(wireName: r'isApproved')
  bool? get isApproved;

  @BuiltValueField(wireName: r'staffNote')
  String? get staffNote;

  ProcessInitialReturnDto._();

  factory ProcessInitialReturnDto([void updates(ProcessInitialReturnDtoBuilder b)]) = _$ProcessInitialReturnDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProcessInitialReturnDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProcessInitialReturnDto> get serializer => _$ProcessInitialReturnDtoSerializer();
}

class _$ProcessInitialReturnDtoSerializer implements PrimitiveSerializer<ProcessInitialReturnDto> {
  @override
  final Iterable<Type> types = const [ProcessInitialReturnDto, _$ProcessInitialReturnDto];

  @override
  final String wireName = r'ProcessInitialReturnDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProcessInitialReturnDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.isApproved != null) {
      yield r'isApproved';
      yield serializers.serialize(
        object.isApproved,
        specifiedType: const FullType(bool),
      );
    }
    if (object.staffNote != null) {
      yield r'staffNote';
      yield serializers.serialize(
        object.staffNote,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProcessInitialReturnDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProcessInitialReturnDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'isApproved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isApproved = valueDes;
          break;
        case r'staffNote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staffNote = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProcessInitialReturnDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProcessInitialReturnDtoBuilder();
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

