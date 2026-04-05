//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contact_address_information.g.dart';

/// ContactAddressInformation
///
/// Properties:
/// * [contactName] 
/// * [contactPhoneNumber] 
/// * [districtId] 
/// * [districtName] 
/// * [wardCode] 
/// * [wardName] 
/// * [provinceId] 
/// * [provinceName] 
/// * [fullAddress] 
@BuiltValue()
abstract class ContactAddressInformation implements Built<ContactAddressInformation, ContactAddressInformationBuilder> {
  @BuiltValueField(wireName: r'contactName')
  String get contactName;

  @BuiltValueField(wireName: r'contactPhoneNumber')
  String get contactPhoneNumber;

  @BuiltValueField(wireName: r'districtId')
  int? get districtId;

  @BuiltValueField(wireName: r'districtName')
  String get districtName;

  @BuiltValueField(wireName: r'wardCode')
  String get wardCode;

  @BuiltValueField(wireName: r'wardName')
  String get wardName;

  @BuiltValueField(wireName: r'provinceId')
  int? get provinceId;

  @BuiltValueField(wireName: r'provinceName')
  String get provinceName;

  @BuiltValueField(wireName: r'fullAddress')
  String get fullAddress;

  ContactAddressInformation._();

  factory ContactAddressInformation([void updates(ContactAddressInformationBuilder b)]) = _$ContactAddressInformation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContactAddressInformationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContactAddressInformation> get serializer => _$ContactAddressInformationSerializer();
}

class _$ContactAddressInformationSerializer implements PrimitiveSerializer<ContactAddressInformation> {
  @override
  final Iterable<Type> types = const [ContactAddressInformation, _$ContactAddressInformation];

  @override
  final String wireName = r'ContactAddressInformation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContactAddressInformation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'contactName';
    yield serializers.serialize(
      object.contactName,
      specifiedType: const FullType(String),
    );
    yield r'contactPhoneNumber';
    yield serializers.serialize(
      object.contactPhoneNumber,
      specifiedType: const FullType(String),
    );
    if (object.districtId != null) {
      yield r'districtId';
      yield serializers.serialize(
        object.districtId,
        specifiedType: const FullType(int),
      );
    }
    yield r'districtName';
    yield serializers.serialize(
      object.districtName,
      specifiedType: const FullType(String),
    );
    yield r'wardCode';
    yield serializers.serialize(
      object.wardCode,
      specifiedType: const FullType(String),
    );
    yield r'wardName';
    yield serializers.serialize(
      object.wardName,
      specifiedType: const FullType(String),
    );
    if (object.provinceId != null) {
      yield r'provinceId';
      yield serializers.serialize(
        object.provinceId,
        specifiedType: const FullType(int),
      );
    }
    yield r'provinceName';
    yield serializers.serialize(
      object.provinceName,
      specifiedType: const FullType(String),
    );
    yield r'fullAddress';
    yield serializers.serialize(
      object.fullAddress,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ContactAddressInformation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ContactAddressInformationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contactName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contactName = valueDes;
          break;
        case r'contactPhoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contactPhoneNumber = valueDes;
          break;
        case r'districtId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.districtId = valueDes;
          break;
        case r'districtName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.districtName = valueDes;
          break;
        case r'wardCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wardCode = valueDes;
          break;
        case r'wardName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wardName = valueDes;
          break;
        case r'provinceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.provinceId = valueDes;
          break;
        case r'provinceName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provinceName = valueDes;
          break;
        case r'fullAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullAddress = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContactAddressInformation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContactAddressInformationBuilder();
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

