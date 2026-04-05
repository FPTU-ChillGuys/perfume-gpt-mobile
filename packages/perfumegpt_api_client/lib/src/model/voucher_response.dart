//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/discount_type.dart';
import 'package:perfumegpt_api_client/src/model/voucher_type.dart';
import 'package:perfumegpt_api_client/src/model/promotion_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'voucher_response.g.dart';

/// VoucherResponse
///
/// Properties:
/// * [id] 
/// * [code] 
/// * [discountValue] 
/// * [discountType] 
/// * [campaignId] 
/// * [applyType] 
/// * [targetItemType] 
/// * [requiredPoints] 
/// * [minOrderValue] 
/// * [expiryDate] 
/// * [isExpired] 
/// * [totalQuantity] 
/// * [remainingQuantity] 
/// * [isPublic] 
/// * [createdAt] 
@BuiltValue()
abstract class VoucherResponse implements Built<VoucherResponse, VoucherResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'discountValue')
  num? get discountValue;

  @BuiltValueField(wireName: r'discountType')
  DiscountType? get discountType;
  // enum discountTypeEnum {  Percentage,  FixedAmount,  };

  @BuiltValueField(wireName: r'campaignId')
  String? get campaignId;

  @BuiltValueField(wireName: r'applyType')
  VoucherType? get applyType;
  // enum applyTypeEnum {  Order,  Product,  };

  @BuiltValueField(wireName: r'targetItemType')
  PromotionType? get targetItemType;
  // enum targetItemTypeEnum {  Clearance,  NewArrival,  Regular,  };

  @BuiltValueField(wireName: r'requiredPoints')
  int? get requiredPoints;

  @BuiltValueField(wireName: r'minOrderValue')
  num? get minOrderValue;

  @BuiltValueField(wireName: r'expiryDate')
  DateTime? get expiryDate;

  @BuiltValueField(wireName: r'isExpired')
  bool? get isExpired;

  @BuiltValueField(wireName: r'totalQuantity')
  int? get totalQuantity;

  @BuiltValueField(wireName: r'remainingQuantity')
  int? get remainingQuantity;

  @BuiltValueField(wireName: r'isPublic')
  bool? get isPublic;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  VoucherResponse._();

  factory VoucherResponse([void updates(VoucherResponseBuilder b)]) = _$VoucherResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VoucherResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VoucherResponse> get serializer => _$VoucherResponseSerializer();
}

class _$VoucherResponseSerializer implements PrimitiveSerializer<VoucherResponse> {
  @override
  final Iterable<Type> types = const [VoucherResponse, _$VoucherResponse];

  @override
  final String wireName = r'VoucherResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VoucherResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    if (object.discountValue != null) {
      yield r'discountValue';
      yield serializers.serialize(
        object.discountValue,
        specifiedType: const FullType(num),
      );
    }
    if (object.discountType != null) {
      yield r'discountType';
      yield serializers.serialize(
        object.discountType,
        specifiedType: const FullType(DiscountType),
      );
    }
    if (object.campaignId != null) {
      yield r'campaignId';
      yield serializers.serialize(
        object.campaignId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.applyType != null) {
      yield r'applyType';
      yield serializers.serialize(
        object.applyType,
        specifiedType: const FullType(VoucherType),
      );
    }
    if (object.targetItemType != null) {
      yield r'targetItemType';
      yield serializers.serialize(
        object.targetItemType,
        specifiedType: const FullType(PromotionType),
      );
    }
    if (object.requiredPoints != null) {
      yield r'requiredPoints';
      yield serializers.serialize(
        object.requiredPoints,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.minOrderValue != null) {
      yield r'minOrderValue';
      yield serializers.serialize(
        object.minOrderValue,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.expiryDate != null) {
      yield r'expiryDate';
      yield serializers.serialize(
        object.expiryDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.isExpired != null) {
      yield r'isExpired';
      yield serializers.serialize(
        object.isExpired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.totalQuantity != null) {
      yield r'totalQuantity';
      yield serializers.serialize(
        object.totalQuantity,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.remainingQuantity != null) {
      yield r'remainingQuantity';
      yield serializers.serialize(
        object.remainingQuantity,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.isPublic != null) {
      yield r'isPublic';
      yield serializers.serialize(
        object.isPublic,
        specifiedType: const FullType(bool),
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
    VoucherResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VoucherResponseBuilder result,
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
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'discountValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.discountValue = valueDes;
          break;
        case r'discountType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DiscountType),
          ) as DiscountType;
          result.discountType = valueDes;
          break;
        case r'campaignId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.campaignId = valueDes;
          break;
        case r'applyType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VoucherType),
          ) as VoucherType;
          result.applyType = valueDes;
          break;
        case r'targetItemType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PromotionType),
          ) as PromotionType;
          result.targetItemType = valueDes;
          break;
        case r'requiredPoints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.requiredPoints = valueDes;
          break;
        case r'minOrderValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.minOrderValue = valueDes;
          break;
        case r'expiryDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiryDate = valueDes;
          break;
        case r'isExpired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isExpired = valueDes;
          break;
        case r'totalQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.totalQuantity = valueDes;
          break;
        case r'remainingQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.remainingQuantity = valueDes;
          break;
        case r'isPublic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPublic = valueDes;
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
  VoucherResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VoucherResponseBuilder();
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

