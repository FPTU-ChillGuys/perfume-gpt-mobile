// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credentials_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserCredentialsResponseCWProxy {
  UserCredentialsResponse id(String? id);

  UserCredentialsResponse fullName(String? fullName);

  UserCredentialsResponse phoneNumber(String? phoneNumber);

  UserCredentialsResponse email(String? email);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserCredentialsResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserCredentialsResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UserCredentialsResponse call({
    String? id,
    String? fullName,
    String? phoneNumber,
    String? email,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserCredentialsResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserCredentialsResponse.copyWith.fieldName(...)`
class _$UserCredentialsResponseCWProxyImpl
    implements _$UserCredentialsResponseCWProxy {
  const _$UserCredentialsResponseCWProxyImpl(this._value);

  final UserCredentialsResponse _value;

  @override
  UserCredentialsResponse id(String? id) => this(id: id);

  @override
  UserCredentialsResponse fullName(String? fullName) =>
      this(fullName: fullName);

  @override
  UserCredentialsResponse phoneNumber(String? phoneNumber) =>
      this(phoneNumber: phoneNumber);

  @override
  UserCredentialsResponse email(String? email) => this(email: email);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserCredentialsResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserCredentialsResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UserCredentialsResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? fullName = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
  }) {
    return UserCredentialsResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      fullName: fullName == const $CopyWithPlaceholder()
          ? _value.fullName
          // ignore: cast_nullable_to_non_nullable
          : fullName as String?,
      phoneNumber: phoneNumber == const $CopyWithPlaceholder()
          ? _value.phoneNumber
          // ignore: cast_nullable_to_non_nullable
          : phoneNumber as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
    );
  }
}

extension $UserCredentialsResponseCopyWith on UserCredentialsResponse {
  /// Returns a callable class that can be used as follows: `instanceOfUserCredentialsResponse.copyWith(...)` or like so:`instanceOfUserCredentialsResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserCredentialsResponseCWProxy get copyWith =>
      _$UserCredentialsResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCredentialsResponse _$UserCredentialsResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserCredentialsResponse', json, ($checkedConvert) {
  final val = UserCredentialsResponse(
    id: $checkedConvert('id', (v) => v as String?),
    fullName: $checkedConvert('fullName', (v) => v as String?),
    phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
    email: $checkedConvert('email', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$UserCredentialsResponseToJson(
  UserCredentialsResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'fullName': ?instance.fullName,
  'phoneNumber': ?instance.phoneNumber,
  'email': ?instance.email,
};
