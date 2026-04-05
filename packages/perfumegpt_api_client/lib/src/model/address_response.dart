//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address_response.g.dart';

/// AddressResponse
///
/// Properties:
/// * [id] 
/// * [recipientName] 
/// * [recipientPhoneNumber] 
/// * [street] 
/// * [ward] 
/// * [district] 
/// * [city] 
/// * [wardCode] 
/// * [districtId] 
/// * [provinceId] 
/// * [isDefault] 
@BuiltValue()
abstract class AddressResponse implements Built<AddressResponse, AddressResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'recipientName')
  String get recipientName;

  @BuiltValueField(wireName: r'recipientPhoneNumber')
  String get recipientPhoneNumber;

  @BuiltValueField(wireName: r'street')
  String get street;

  @BuiltValueField(wireName: r'ward')
  String get ward;

  @BuiltValueField(wireName: r'district')
  String get district;

  @BuiltValueField(wireName: r'city')
  String get city;

  @BuiltValueField(wireName: r'wardCode')
  String get wardCode;

  @BuiltValueField(wireName: r'districtId')
  int? get districtId;

  @BuiltValueField(wireName: r'provinceId')
  int? get provinceId;

  @BuiltValueField(wireName: r'isDefault')
  bool? get isDefault;

  AddressResponse._();

  factory AddressResponse([void updates(AddressResponseBuilder b)]) = _$AddressResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddressResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddressResponse> get serializer => _$AddressResponseSerializer();
}

class _$AddressResponseSerializer implements PrimitiveSerializer<AddressResponse> {
  @override
  final Iterable<Type> types = const [AddressResponse, _$AddressResponse];

  @override
  final String wireName = r'AddressResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddressResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'recipientName';
    yield serializers.serialize(
      object.recipientName,
      specifiedType: const FullType(String),
    );
    yield r'recipientPhoneNumber';
    yield serializers.serialize(
      object.recipientPhoneNumber,
      specifiedType: const FullType(String),
    );
    yield r'street';
    yield serializers.serialize(
      object.street,
      specifiedType: const FullType(String),
    );
    yield r'ward';
    yield serializers.serialize(
      object.ward,
      specifiedType: const FullType(String),
    );
    yield r'district';
    yield serializers.serialize(
      object.district,
      specifiedType: const FullType(String),
    );
    yield r'city';
    yield serializers.serialize(
      object.city,
      specifiedType: const FullType(String),
    );
    yield r'wardCode';
    yield serializers.serialize(
      object.wardCode,
      specifiedType: const FullType(String),
    );
    if (object.districtId != null) {
      yield r'districtId';
      yield serializers.serialize(
        object.districtId,
        specifiedType: const FullType(int),
      );
    }
    if (object.provinceId != null) {
      yield r'provinceId';
      yield serializers.serialize(
        object.provinceId,
        specifiedType: const FullType(int),
      );
    }
    if (object.isDefault != null) {
      yield r'isDefault';
      yield serializers.serialize(
        object.isDefault,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddressResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddressResponseBuilder result,
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
        case r'recipientName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recipientName = valueDes;
          break;
        case r'recipientPhoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recipientPhoneNumber = valueDes;
          break;
        case r'street':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.street = valueDes;
          break;
        case r'ward':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ward = valueDes;
          break;
        case r'district':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.district = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.city = valueDes;
          break;
        case r'wardCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wardCode = valueDes;
          break;
        case r'districtId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.districtId = valueDes;
          break;
        case r'provinceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.provinceId = valueDes;
          break;
        case r'isDefault':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDefault = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddressResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddressResponseBuilder();
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

