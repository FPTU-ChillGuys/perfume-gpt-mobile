//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_voucher_response.g.dart';

/// UserVoucherResponse
///
/// Properties:
/// * [id] 
/// * [voucherId] 
/// * [code] 
/// * [discountValue] 
/// * [discountType] 
/// * [minOrderValue] 
/// * [expiryDate] 
/// * [isUsed] 
/// * [status] 
/// * [isExpired] 
/// * [redeemedAt] 
@BuiltValue()
abstract class UserVoucherResponse implements Built<UserVoucherResponse, UserVoucherResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'voucherId')
  String? get voucherId;

  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'discountValue')
  num? get discountValue;

  @BuiltValueField(wireName: r'discountType')
  String get discountType;

  @BuiltValueField(wireName: r'minOrderValue')
  num? get minOrderValue;

  @BuiltValueField(wireName: r'expiryDate')
  DateTime? get expiryDate;

  @BuiltValueField(wireName: r'isUsed')
  bool? get isUsed;

  @BuiltValueField(wireName: r'status')
  String get status;

  @BuiltValueField(wireName: r'isExpired')
  bool? get isExpired;

  @BuiltValueField(wireName: r'redeemedAt')
  DateTime? get redeemedAt;

  UserVoucherResponse._();

  factory UserVoucherResponse([void updates(UserVoucherResponseBuilder b)]) = _$UserVoucherResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserVoucherResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserVoucherResponse> get serializer => _$UserVoucherResponseSerializer();
}

class _$UserVoucherResponseSerializer implements PrimitiveSerializer<UserVoucherResponse> {
  @override
  final Iterable<Type> types = const [UserVoucherResponse, _$UserVoucherResponse];

  @override
  final String wireName = r'UserVoucherResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserVoucherResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.voucherId != null) {
      yield r'voucherId';
      yield serializers.serialize(
        object.voucherId,
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
    yield r'discountType';
    yield serializers.serialize(
      object.discountType,
      specifiedType: const FullType(String),
    );
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
    if (object.isUsed != null) {
      yield r'isUsed';
      yield serializers.serialize(
        object.isUsed,
        specifiedType: const FullType(bool),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    if (object.isExpired != null) {
      yield r'isExpired';
      yield serializers.serialize(
        object.isExpired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.redeemedAt != null) {
      yield r'redeemedAt';
      yield serializers.serialize(
        object.redeemedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserVoucherResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserVoucherResponseBuilder result,
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
        case r'voucherId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.voucherId = valueDes;
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
            specifiedType: const FullType(String),
          ) as String;
          result.discountType = valueDes;
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
        case r'isUsed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isUsed = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'isExpired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isExpired = valueDes;
          break;
        case r'redeemedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.redeemedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserVoucherResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserVoucherResponseBuilder();
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

