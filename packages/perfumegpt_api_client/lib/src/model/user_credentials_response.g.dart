// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credentials_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserCredentialsResponseCWProxy {
  UserCredentialsResponse id(String? id);

  UserCredentialsResponse loyaltyPoint(int? loyaltyPoint);

  UserCredentialsResponse fullName(String? fullName);

  UserCredentialsResponse phoneNumber(String? phoneNumber);

  UserCredentialsResponse email(String? email);

  UserCredentialsResponse profilePictureUrl(String? profilePictureUrl);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserCredentialsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserCredentialsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  UserCredentialsResponse call({
    String? id,
    int? loyaltyPoint,
    String? fullName,
    String? phoneNumber,
    String? email,
    String? profilePictureUrl,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUserCredentialsResponse.copyWith(...)` or call `instanceOfUserCredentialsResponse.copyWith.fieldName(value)` for a single field.
class _$UserCredentialsResponseCWProxyImpl
    implements _$UserCredentialsResponseCWProxy {
  const _$UserCredentialsResponseCWProxyImpl(this._value);

  final UserCredentialsResponse _value;

  @override
  UserCredentialsResponse id(String? id) => call(id: id);

  @override
  UserCredentialsResponse loyaltyPoint(int? loyaltyPoint) =>
      call(loyaltyPoint: loyaltyPoint);

  @override
  UserCredentialsResponse fullName(String? fullName) =>
      call(fullName: fullName);

  @override
  UserCredentialsResponse phoneNumber(String? phoneNumber) =>
      call(phoneNumber: phoneNumber);

  @override
  UserCredentialsResponse email(String? email) => call(email: email);

  @override
  UserCredentialsResponse profilePictureUrl(String? profilePictureUrl) =>
      call(profilePictureUrl: profilePictureUrl);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserCredentialsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserCredentialsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  UserCredentialsResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? loyaltyPoint = const $CopyWithPlaceholder(),
    Object? fullName = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? profilePictureUrl = const $CopyWithPlaceholder(),
  }) {
    return UserCredentialsResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      loyaltyPoint: loyaltyPoint == const $CopyWithPlaceholder()
          ? _value.loyaltyPoint
          // ignore: cast_nullable_to_non_nullable
          : loyaltyPoint as int?,
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
      profilePictureUrl: profilePictureUrl == const $CopyWithPlaceholder()
          ? _value.profilePictureUrl
          // ignore: cast_nullable_to_non_nullable
          : profilePictureUrl as String?,
    );
  }
}

extension $UserCredentialsResponseCopyWith on UserCredentialsResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUserCredentialsResponse.copyWith(...)` or `instanceOfUserCredentialsResponse.copyWith.fieldName(...)`.
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
    loyaltyPoint: $checkedConvert('loyaltyPoint', (v) => (v as num?)?.toInt()),
    fullName: $checkedConvert('fullName', (v) => v as String?),
    phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
    email: $checkedConvert('email', (v) => v as String?),
    profilePictureUrl: $checkedConvert(
      'profilePictureUrl',
      (v) => v as String?,
    ),
  );
  return val;
});

Map<String, dynamic> _$UserCredentialsResponseToJson(
  UserCredentialsResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'loyaltyPoint': ?instance.loyaltyPoint,
  'fullName': ?instance.fullName,
  'phoneNumber': ?instance.phoneNumber,
  'email': ?instance.email,
  'profilePictureUrl': ?instance.profilePictureUrl,
};
