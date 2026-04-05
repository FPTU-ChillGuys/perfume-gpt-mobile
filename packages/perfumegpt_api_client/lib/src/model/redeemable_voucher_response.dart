//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/discount_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'redeemable_voucher_response.g.dart';

/// RedeemableVoucherResponse
///
/// Properties:
/// * [id] 
/// * [code] 
/// * [discountValue] 
/// * [discountType] 
/// * [requiredPoints] 
/// * [minOrderValue] 
/// * [expiryDate] 
/// * [isExpired] 
/// * [remainingQuantity] 
/// * [createdAt] 
@BuiltValue()
abstract class RedeemableVoucherResponse implements Built<RedeemableVoucherResponse, RedeemableVoucherResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'discountValue')
  num? get discountValue;

  @BuiltValueField(wireName: r'discountType')
  DiscountType? get discountType;
  // enum discountTypeEnum {  Percentage,  FixedAmount,  };

  @BuiltValueField(wireName: r'requiredPoints')
  int? get requiredPoints;

  @BuiltValueField(wireName: r'minOrderValue')
  num? get minOrderValue;

  @BuiltValueField(wireName: r'expiryDate')
  DateTime? get expiryDate;

  @BuiltValueField(wireName: r'isExpired')
  bool? get isExpired;

  @BuiltValueField(wireName: r'remainingQuantity')
  int? get remainingQuantity;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  RedeemableVoucherResponse._();

  factory RedeemableVoucherResponse([void updates(RedeemableVoucherResponseBuilder b)]) = _$RedeemableVoucherResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RedeemableVoucherResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RedeemableVoucherResponse> get serializer => _$RedeemableVoucherResponseSerializer();
}

class _$RedeemableVoucherResponseSerializer implements PrimitiveSerializer<RedeemableVoucherResponse> {
  @override
  final Iterable<Type> types = const [RedeemableVoucherResponse, _$RedeemableVoucherResponse];

  @override
  final String wireName = r'RedeemableVoucherResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RedeemableVoucherResponse object, {
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
    if (object.remainingQuantity != null) {
      yield r'remainingQuantity';
      yield serializers.serialize(
        object.remainingQuantity,
        specifiedType: const FullType.nullable(int),
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
    RedeemableVoucherResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RedeemableVoucherResponseBuilder result,
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
        case r'remainingQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.remainingQuantity = valueDes;
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
  RedeemableVoucherResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RedeemableVoucherResponseBuilder();
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

