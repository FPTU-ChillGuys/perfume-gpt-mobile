//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/discount_type.dart';
import 'package:perfumegpt_api_client/src/model/voucher_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_voucher_request.g.dart';

/// CreateVoucherRequest
///
/// Properties:
/// * [code] 
/// * [discountValue] 
/// * [discountType] 
/// * [applyType] 
/// * [requiredPoints] 
/// * [minOrderValue] 
/// * [expiryDate] 
/// * [totalQuantity] 
/// * [isPublic] 
@BuiltValue()
abstract class CreateVoucherRequest implements Built<CreateVoucherRequest, CreateVoucherRequestBuilder> {
  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'discountValue')
  num? get discountValue;

  @BuiltValueField(wireName: r'discountType')
  DiscountType? get discountType;
  // enum discountTypeEnum {  Percentage,  FixedAmount,  };

  @BuiltValueField(wireName: r'applyType')
  VoucherType? get applyType;
  // enum applyTypeEnum {  Order,  Product,  };

  @BuiltValueField(wireName: r'requiredPoints')
  int? get requiredPoints;

  @BuiltValueField(wireName: r'minOrderValue')
  num? get minOrderValue;

  @BuiltValueField(wireName: r'expiryDate')
  DateTime? get expiryDate;

  @BuiltValueField(wireName: r'totalQuantity')
  int? get totalQuantity;

  @BuiltValueField(wireName: r'isPublic')
  bool? get isPublic;

  CreateVoucherRequest._();

  factory CreateVoucherRequest([void updates(CreateVoucherRequestBuilder b)]) = _$CreateVoucherRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateVoucherRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateVoucherRequest> get serializer => _$CreateVoucherRequestSerializer();
}

class _$CreateVoucherRequestSerializer implements PrimitiveSerializer<CreateVoucherRequest> {
  @override
  final Iterable<Type> types = const [CreateVoucherRequest, _$CreateVoucherRequest];

  @override
  final String wireName = r'CreateVoucherRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateVoucherRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.applyType != null) {
      yield r'applyType';
      yield serializers.serialize(
        object.applyType,
        specifiedType: const FullType(VoucherType),
      );
    }
    if (object.requiredPoints != null) {
      yield r'requiredPoints';
      yield serializers.serialize(
        object.requiredPoints,
        specifiedType: const FullType(int),
      );
    }
    if (object.minOrderValue != null) {
      yield r'minOrderValue';
      yield serializers.serialize(
        object.minOrderValue,
        specifiedType: const FullType(num),
      );
    }
    if (object.expiryDate != null) {
      yield r'expiryDate';
      yield serializers.serialize(
        object.expiryDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.totalQuantity != null) {
      yield r'totalQuantity';
      yield serializers.serialize(
        object.totalQuantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.isPublic != null) {
      yield r'isPublic';
      yield serializers.serialize(
        object.isPublic,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateVoucherRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateVoucherRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'applyType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VoucherType),
          ) as VoucherType;
          result.applyType = valueDes;
          break;
        case r'requiredPoints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.requiredPoints = valueDes;
          break;
        case r'minOrderValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.minOrderValue = valueDes;
          break;
        case r'expiryDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expiryDate = valueDes;
          break;
        case r'totalQuantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalQuantity = valueDes;
          break;
        case r'isPublic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isPublic = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateVoucherRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVoucherRequestBuilder();
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

