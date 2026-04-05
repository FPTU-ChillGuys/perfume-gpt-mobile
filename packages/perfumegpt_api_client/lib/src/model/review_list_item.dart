//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_list_item.g.dart';

/// ReviewListItem
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [userFullName] 
/// * [userProfilePictureUrl] 
/// * [variantId] 
/// * [variantName] 
/// * [rating] 
/// * [commentPreview] 
/// * [imageCount] 
/// * [createdAt] 
@BuiltValue()
abstract class ReviewListItem implements Built<ReviewListItem, ReviewListItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'userFullName')
  String get userFullName;

  @BuiltValueField(wireName: r'userProfilePictureUrl')
  String? get userProfilePictureUrl;

  @BuiltValueField(wireName: r'variantId')
  String? get variantId;

  @BuiltValueField(wireName: r'variantName')
  String get variantName;

  @BuiltValueField(wireName: r'rating')
  int? get rating;

  @BuiltValueField(wireName: r'commentPreview')
  String get commentPreview;

  @BuiltValueField(wireName: r'imageCount')
  int? get imageCount;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  ReviewListItem._();

  factory ReviewListItem([void updates(ReviewListItemBuilder b)]) = _$ReviewListItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReviewListItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReviewListItem> get serializer => _$ReviewListItemSerializer();
}

class _$ReviewListItemSerializer implements PrimitiveSerializer<ReviewListItem> {
  @override
  final Iterable<Type> types = const [ReviewListItem, _$ReviewListItem];

  @override
  final String wireName = r'ReviewListItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReviewListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    yield r'userFullName';
    yield serializers.serialize(
      object.userFullName,
      specifiedType: const FullType(String),
    );
    if (object.userProfilePictureUrl != null) {
      yield r'userProfilePictureUrl';
      yield serializers.serialize(
        object.userProfilePictureUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.variantId != null) {
      yield r'variantId';
      yield serializers.serialize(
        object.variantId,
        specifiedType: const FullType(String),
      );
    }
    yield r'variantName';
    yield serializers.serialize(
      object.variantName,
      specifiedType: const FullType(String),
    );
    if (object.rating != null) {
      yield r'rating';
      yield serializers.serialize(
        object.rating,
        specifiedType: const FullType(int),
      );
    }
    yield r'commentPreview';
    yield serializers.serialize(
      object.commentPreview,
      specifiedType: const FullType(String),
    );
    if (object.imageCount != null) {
      yield r'imageCount';
      yield serializers.serialize(
        object.imageCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReviewListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReviewListItemBuilder result,
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
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'userFullName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userFullName = valueDes;
          break;
        case r'userProfilePictureUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userProfilePictureUrl = valueDes;
          break;
        case r'variantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantId = valueDes;
          break;
        case r'variantName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantName = valueDes;
          break;
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.rating = valueDes;
          break;
        case r'commentPreview':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.commentPreview = valueDes;
          break;
        case r'imageCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.imageCount = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReviewListItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReviewListItemBuilder();
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

