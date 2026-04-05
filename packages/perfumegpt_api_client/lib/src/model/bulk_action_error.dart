//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_action_error.g.dart';

/// BulkActionError
///
/// Properties:
/// * [id] 
/// * [errorMessage] 
@BuiltValue()
abstract class BulkActionError implements Built<BulkActionError, BulkActionErrorBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'errorMessage')
  String get errorMessage;

  BulkActionError._();

  factory BulkActionError([void updates(BulkActionErrorBuilder b)]) = _$BulkActionError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkActionErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkActionError> get serializer => _$BulkActionErrorSerializer();
}

class _$BulkActionErrorSerializer implements PrimitiveSerializer<BulkActionError> {
  @override
  final Iterable<Type> types = const [BulkActionError, _$BulkActionError];

  @override
  final String wireName = r'BulkActionError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkActionError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'errorMessage';
    yield serializers.serialize(
      object.errorMessage,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkActionError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BulkActionErrorBuilder result,
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
        case r'errorMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.errorMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkActionError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkActionErrorBuilder();
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

