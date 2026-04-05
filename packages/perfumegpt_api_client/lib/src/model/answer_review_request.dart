//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'answer_review_request.g.dart';

/// AnswerReviewRequest
///
/// Properties:
/// * [staffFeedbackComment] 
@BuiltValue()
abstract class AnswerReviewRequest implements Built<AnswerReviewRequest, AnswerReviewRequestBuilder> {
  @BuiltValueField(wireName: r'staffFeedbackComment')
  String get staffFeedbackComment;

  AnswerReviewRequest._();

  factory AnswerReviewRequest([void updates(AnswerReviewRequestBuilder b)]) = _$AnswerReviewRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnswerReviewRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnswerReviewRequest> get serializer => _$AnswerReviewRequestSerializer();
}

class _$AnswerReviewRequestSerializer implements PrimitiveSerializer<AnswerReviewRequest> {
  @override
  final Iterable<Type> types = const [AnswerReviewRequest, _$AnswerReviewRequest];

  @override
  final String wireName = r'AnswerReviewRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnswerReviewRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'staffFeedbackComment';
    yield serializers.serialize(
      object.staffFeedbackComment,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnswerReviewRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnswerReviewRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'staffFeedbackComment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.staffFeedbackComment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnswerReviewRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnswerReviewRequestBuilder();
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

