//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_method.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_information.g.dart';

/// PaymentInformation
///
/// Properties:
/// * [method] 
@BuiltValue()
abstract class PaymentInformation implements Built<PaymentInformation, PaymentInformationBuilder> {
  @BuiltValueField(wireName: r'method')
  PaymentMethod? get method;
  // enum methodEnum {  CashOnDelivery,  VnPay,  Momo,  CashInStore,  };

  PaymentInformation._();

  factory PaymentInformation([void updates(PaymentInformationBuilder b)]) = _$PaymentInformation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentInformationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentInformation> get serializer => _$PaymentInformationSerializer();
}

class _$PaymentInformationSerializer implements PrimitiveSerializer<PaymentInformation> {
  @override
  final Iterable<Type> types = const [PaymentInformation, _$PaymentInformation];

  @override
  final String wireName = r'PaymentInformation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentInformation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(PaymentMethod),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentInformation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentInformationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentMethod),
          ) as PaymentMethod;
          result.method = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaymentInformation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentInformationBuilder();
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

