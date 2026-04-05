//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_statistics_response.g.dart';

/// ReviewStatisticsResponse
///
/// Properties:
/// * [variantId] 
/// * [totalReviews] 
/// * [averageRating] 
/// * [fiveStarCount] 
/// * [fourStarCount] 
/// * [threeStarCount] 
/// * [twoStarCount] 
/// * [oneStarCount] 
@BuiltValue()
abstract class ReviewStatisticsResponse implements Built<ReviewStatisticsResponse, ReviewStatisticsResponseBuilder> {
  @BuiltValueField(wireName: r'variantId')
  String? get variantId;

  @BuiltValueField(wireName: r'totalReviews')
  int? get totalReviews;

  @BuiltValueField(wireName: r'averageRating')
  double? get averageRating;

  @BuiltValueField(wireName: r'fiveStarCount')
  int? get fiveStarCount;

  @BuiltValueField(wireName: r'fourStarCount')
  int? get fourStarCount;

  @BuiltValueField(wireName: r'threeStarCount')
  int? get threeStarCount;

  @BuiltValueField(wireName: r'twoStarCount')
  int? get twoStarCount;

  @BuiltValueField(wireName: r'oneStarCount')
  int? get oneStarCount;

  ReviewStatisticsResponse._();

  factory ReviewStatisticsResponse([void updates(ReviewStatisticsResponseBuilder b)]) = _$ReviewStatisticsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReviewStatisticsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReviewStatisticsResponse> get serializer => _$ReviewStatisticsResponseSerializer();
}

class _$ReviewStatisticsResponseSerializer implements PrimitiveSerializer<ReviewStatisticsResponse> {
  @override
  final Iterable<Type> types = const [ReviewStatisticsResponse, _$ReviewStatisticsResponse];

  @override
  final String wireName = r'ReviewStatisticsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReviewStatisticsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.variantId != null) {
      yield r'variantId';
      yield serializers.serialize(
        object.variantId,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalReviews != null) {
      yield r'totalReviews';
      yield serializers.serialize(
        object.totalReviews,
        specifiedType: const FullType(int),
      );
    }
    if (object.averageRating != null) {
      yield r'averageRating';
      yield serializers.serialize(
        object.averageRating,
        specifiedType: const FullType(double),
      );
    }
    if (object.fiveStarCount != null) {
      yield r'fiveStarCount';
      yield serializers.serialize(
        object.fiveStarCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.fourStarCount != null) {
      yield r'fourStarCount';
      yield serializers.serialize(
        object.fourStarCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.threeStarCount != null) {
      yield r'threeStarCount';
      yield serializers.serialize(
        object.threeStarCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.twoStarCount != null) {
      yield r'twoStarCount';
      yield serializers.serialize(
        object.twoStarCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.oneStarCount != null) {
      yield r'oneStarCount';
      yield serializers.serialize(
        object.oneStarCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReviewStatisticsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReviewStatisticsResponseBuilder result,
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
        case r'totalReviews':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalReviews = valueDes;
          break;
        case r'averageRating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.averageRating = valueDes;
          break;
        case r'fiveStarCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fiveStarCount = valueDes;
          break;
        case r'fourStarCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fourStarCount = valueDes;
          break;
        case r'threeStarCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.threeStarCount = valueDes;
          break;
        case r'twoStarCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.twoStarCount = valueDes;
          break;
        case r'oneStarCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.oneStarCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReviewStatisticsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReviewStatisticsResponseBuilder();
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

