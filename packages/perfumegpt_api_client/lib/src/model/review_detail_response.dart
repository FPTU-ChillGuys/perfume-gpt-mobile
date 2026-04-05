//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_detail_response.g.dart';

/// ReviewDetailResponse
///
/// Properties:
/// * [id] 
/// * [userId] 
/// * [userFullName] 
/// * [userProfilePictureUrl] 
/// * [orderDetailId] 
/// * [orderId] 
/// * [quantity] 
/// * [unitPrice] 
/// * [variantId] 
/// * [variantName] 
/// * [productName] 
/// * [volumeMl] 
/// * [concentrationName] 
/// * [rating] 
/// * [comment] 
/// * [images] 
/// * [staffFeedbackComment] 
/// * [staffFeedbackByStaffId] 
/// * [staffFeedbackAt] 
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class ReviewDetailResponse implements Built<ReviewDetailResponse, ReviewDetailResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'userFullName')
  String get userFullName;

  @BuiltValueField(wireName: r'userProfilePictureUrl')
  String? get userProfilePictureUrl;

  @BuiltValueField(wireName: r'orderDetailId')
  String? get orderDetailId;

  @BuiltValueField(wireName: r'orderId')
  String? get orderId;

  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  @BuiltValueField(wireName: r'unitPrice')
  num? get unitPrice;

  @BuiltValueField(wireName: r'variantId')
  String? get variantId;

  @BuiltValueField(wireName: r'variantName')
  String get variantName;

  @BuiltValueField(wireName: r'productName')
  String get productName;

  @BuiltValueField(wireName: r'volumeMl')
  int? get volumeMl;

  @BuiltValueField(wireName: r'concentrationName')
  String get concentrationName;

  @BuiltValueField(wireName: r'rating')
  int? get rating;

  @BuiltValueField(wireName: r'comment')
  String get comment;

  @BuiltValueField(wireName: r'images')
  BuiltList<MediaResponse> get images;

  @BuiltValueField(wireName: r'staffFeedbackComment')
  String? get staffFeedbackComment;

  @BuiltValueField(wireName: r'staffFeedbackByStaffId')
  String? get staffFeedbackByStaffId;

  @BuiltValueField(wireName: r'staffFeedbackAt')
  DateTime? get staffFeedbackAt;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  ReviewDetailResponse._();

  factory ReviewDetailResponse([void updates(ReviewDetailResponseBuilder b)]) = _$ReviewDetailResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReviewDetailResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReviewDetailResponse> get serializer => _$ReviewDetailResponseSerializer();
}

class _$ReviewDetailResponseSerializer implements PrimitiveSerializer<ReviewDetailResponse> {
  @override
  final Iterable<Type> types = const [ReviewDetailResponse, _$ReviewDetailResponse];

  @override
  final String wireName = r'ReviewDetailResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReviewDetailResponse object, {
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
    if (object.orderDetailId != null) {
      yield r'orderDetailId';
      yield serializers.serialize(
        object.orderDetailId,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderId != null) {
      yield r'orderId';
      yield serializers.serialize(
        object.orderId,
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
    if (object.unitPrice != null) {
      yield r'unitPrice';
      yield serializers.serialize(
        object.unitPrice,
        specifiedType: const FullType(num),
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
    yield r'productName';
    yield serializers.serialize(
      object.productName,
      specifiedType: const FullType(String),
    );
    if (object.volumeMl != null) {
      yield r'volumeMl';
      yield serializers.serialize(
        object.volumeMl,
        specifiedType: const FullType(int),
      );
    }
    yield r'concentrationName';
    yield serializers.serialize(
      object.concentrationName,
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
    yield r'images';
    yield serializers.serialize(
      object.images,
      specifiedType: const FullType(BuiltList, [FullType(MediaResponse)]),
    );
    if (object.staffFeedbackComment != null) {
      yield r'staffFeedbackComment';
      yield serializers.serialize(
        object.staffFeedbackComment,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.staffFeedbackByStaffId != null) {
      yield r'staffFeedbackByStaffId';
      yield serializers.serialize(
        object.staffFeedbackByStaffId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.staffFeedbackAt != null) {
      yield r'staffFeedbackAt';
      yield serializers.serialize(
        object.staffFeedbackAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReviewDetailResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReviewDetailResponseBuilder result,
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
        case r'orderDetailId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderDetailId = valueDes;
          break;
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'unitPrice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.unitPrice = valueDes;
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
        case r'productName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productName = valueDes;
          break;
        case r'volumeMl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.volumeMl = valueDes;
          break;
        case r'concentrationName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.concentrationName = valueDes;
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
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(MediaResponse)]),
          ) as BuiltList<MediaResponse>;
          result.images.replace(valueDes);
          break;
        case r'staffFeedbackComment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staffFeedbackComment = valueDes;
          break;
        case r'staffFeedbackByStaffId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staffFeedbackByStaffId = valueDes;
          break;
        case r'staffFeedbackAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.staffFeedbackAt = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReviewDetailResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReviewDetailResponseBuilder();
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

