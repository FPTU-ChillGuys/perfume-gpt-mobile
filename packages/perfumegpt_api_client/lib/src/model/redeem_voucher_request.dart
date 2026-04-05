//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'redeem_voucher_request.g.dart';

/// RedeemVoucherRequest
///
/// Properties:
/// * [voucherId] 
/// * [receiverEmailOrPhone] 
@BuiltValue()
abstract class RedeemVoucherRequest implements Built<RedeemVoucherRequest, RedeemVoucherRequestBuilder> {
  @BuiltValueField(wireName: r'voucherId')
  String? get voucherId;

  @BuiltValueField(wireName: r'receiverEmailOrPhone')
  String? get receiverEmailOrPhone;

  RedeemVoucherRequest._();

  factory RedeemVoucherRequest([void updates(RedeemVoucherRequestBuilder b)]) = _$RedeemVoucherRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RedeemVoucherRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RedeemVoucherRequest> get serializer => _$RedeemVoucherRequestSerializer();
}

class _$RedeemVoucherRequestSerializer implements PrimitiveSerializer<RedeemVoucherRequest> {
  @override
  final Iterable<Type> types = const [RedeemVoucherRequest, _$RedeemVoucherRequest];

  @override
  final String wireName = r'RedeemVoucherRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RedeemVoucherRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.voucherId != null) {
      yield r'voucherId';
      yield serializers.serialize(
        object.voucherId,
        specifiedType: const FullType(String),
      );
    }
    if (object.receiverEmailOrPhone != null) {
      yield r'receiverEmailOrPhone';
      yield serializers.serialize(
        object.receiverEmailOrPhone,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RedeemVoucherRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RedeemVoucherRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'voucherId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.voucherId = valueDes;
          break;
        case r'receiverEmailOrPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.receiverEmailOrPhone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RedeemVoucherRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RedeemVoucherRequestBuilder();
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

