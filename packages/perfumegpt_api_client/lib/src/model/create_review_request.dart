//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_review_request.g.dart';

/// CreateReviewRequest
///
/// Properties:
/// * [orderDetailId] 
/// * [rating] 
/// * [comment] 
/// * [temporaryMediaIds] 
@BuiltValue()
abstract class CreateReviewRequest implements Built<CreateReviewRequest, CreateReviewRequestBuilder> {
  @BuiltValueField(wireName: r'orderDetailId')
  String get orderDetailId;

  @BuiltValueField(wireName: r'rating')
  int? get rating;

  @BuiltValueField(wireName: r'comment')
  String get comment;

  @BuiltValueField(wireName: r'temporaryMediaIds')
  BuiltList<String>? get temporaryMediaIds;

  CreateReviewRequest._();

  factory CreateReviewRequest([void updates(CreateReviewRequestBuilder b)]) = _$CreateReviewRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateReviewRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateReviewRequest> get serializer => _$CreateReviewRequestSerializer();
}

class _$CreateReviewRequestSerializer implements PrimitiveSerializer<CreateReviewRequest> {
  @override
  final Iterable<Type> types = const [CreateReviewRequest, _$CreateReviewRequest];

  @override
  final String wireName = r'CreateReviewRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateReviewRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'orderDetailId';
    yield serializers.serialize(
      object.orderDetailId,
      specifiedType: const FullType(String),
    );
    if (object.rating != null) {
      yield r'rating';
      yield serializers.serialize(
        object.rating,
        specifiedType: const FullType(int),
      );
    }
    yield r'comment';
    yield serializers.serialize(
      object.comment,
      specifiedType: const FullType(String),
    );
    if (object.temporaryMediaIds != null) {
      yield r'temporaryMediaIds';
      yield serializers.serialize(
        object.temporaryMediaIds,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateReviewRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateReviewRequestBuilder result,
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
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rating = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.comment = valueDes;
          break;
        case r'temporaryMediaIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.temporaryMediaIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateReviewRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateReviewRequestBuilder();
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

