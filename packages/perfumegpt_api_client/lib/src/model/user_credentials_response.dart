//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_credentials_response.g.dart';

/// UserCredentialsResponse
///
/// Properties:
/// * [id] 
/// * [loyaltyPoint] 
/// * [fullName] 
/// * [phoneNumber] 
/// * [email] 
/// * [profilePictureUrl] 
@BuiltValue()
abstract class UserCredentialsResponse implements Built<UserCredentialsResponse, UserCredentialsResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'loyaltyPoint')
  int? get loyaltyPoint;

  @BuiltValueField(wireName: r'fullName')
  String get fullName;

  @BuiltValueField(wireName: r'phoneNumber')
  String get phoneNumber;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'profilePictureUrl')
  String? get profilePictureUrl;

  UserCredentialsResponse._();

  factory UserCredentialsResponse([void updates(UserCredentialsResponseBuilder b)]) = _$UserCredentialsResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserCredentialsResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserCredentialsResponse> get serializer => _$UserCredentialsResponseSerializer();
}

class _$UserCredentialsResponseSerializer implements PrimitiveSerializer<UserCredentialsResponse> {
  @override
  final Iterable<Type> types = const [UserCredentialsResponse, _$UserCredentialsResponse];

  @override
  final String wireName = r'UserCredentialsResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserCredentialsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.loyaltyPoint != null) {
      yield r'loyaltyPoint';
      yield serializers.serialize(
        object.loyaltyPoint,
        specifiedType: const FullType(int),
      );
    }
    yield r'fullName';
    yield serializers.serialize(
      object.fullName,
      specifiedType: const FullType(String),
    );
    yield r'phoneNumber';
    yield serializers.serialize(
      object.phoneNumber,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    if (object.profilePictureUrl != null) {
      yield r'profilePictureUrl';
      yield serializers.serialize(
        object.profilePictureUrl,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserCredentialsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserCredentialsResponseBuilder result,
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
        case r'loyaltyPoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.loyaltyPoint = valueDes;
          break;
        case r'fullName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullName = valueDes;
          break;
        case r'phoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumber = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'profilePictureUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.profilePictureUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserCredentialsResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserCredentialsResponseBuilder();
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

