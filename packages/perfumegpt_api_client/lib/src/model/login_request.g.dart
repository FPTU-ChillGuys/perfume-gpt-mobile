// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LoginRequestCWProxy {
  LoginRequest credential(String credential);

  LoginRequest password(String password);

  LoginRequest fcmToken(String? fcmToken);

  LoginRequest deviceType(String? deviceType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LoginRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LoginRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  LoginRequest call({
    String credential,
    String password,
    String? fcmToken,
    String? deviceType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLoginRequest.copyWith(...)` or call `instanceOfLoginRequest.copyWith.fieldName(value)` for a single field.
class _$LoginRequestCWProxyImpl implements _$LoginRequestCWProxy {
  const _$LoginRequestCWProxyImpl(this._value);

  final LoginRequest _value;

  @override
  LoginRequest credential(String credential) => call(credential: credential);

  @override
  LoginRequest password(String password) => call(password: password);

  @override
  LoginRequest fcmToken(String? fcmToken) => call(fcmToken: fcmToken);

  @override
  LoginRequest deviceType(String? deviceType) => call(deviceType: deviceType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LoginRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LoginRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  LoginRequest call({
    Object? credential = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? fcmToken = const $CopyWithPlaceholder(),
    Object? deviceType = const $CopyWithPlaceholder(),
  }) {
    return LoginRequest(
      credential:
          credential == const $CopyWithPlaceholder() || credential == null
          ? _value.credential
          // ignore: cast_nullable_to_non_nullable
          : credential as String,
      password: password == const $CopyWithPlaceholder() || password == null
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String,
      fcmToken: fcmToken == const $CopyWithPlaceholder()
          ? _value.fcmToken
          // ignore: cast_nullable_to_non_nullable
          : fcmToken as String?,
      deviceType: deviceType == const $CopyWithPlaceholder()
          ? _value.deviceType
          // ignore: cast_nullable_to_non_nullable
          : deviceType as String?,
    );
  }
}

extension $LoginRequestCopyWith on LoginRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLoginRequest.copyWith(...)` or `instanceOfLoginRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LoginRequestCWProxy get copyWith => _$LoginRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LoginRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['credential', 'password']);
      final val = LoginRequest(
        credential: $checkedConvert('credential', (v) => v as String),
        password: $checkedConvert('password', (v) => v as String),
        fcmToken: $checkedConvert('fcmToken', (v) => v as String?),
        deviceType: $checkedConvert('deviceType', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      'credential': instance.credential,
      'password': instance.password,
      'fcmToken': ?instance.fcmToken,
      'deviceType': ?instance.deviceType,
    };
