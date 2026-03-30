// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ResetPasswordRequestCWProxy {
  ResetPasswordRequest password(String password);

  ResetPasswordRequest confirmPassword(String confirmPassword);

  ResetPasswordRequest email(String email);

  ResetPasswordRequest token(String token);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ResetPasswordRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ResetPasswordRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ResetPasswordRequest call({
    String password,
    String confirmPassword,
    String email,
    String token,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfResetPasswordRequest.copyWith(...)` or call `instanceOfResetPasswordRequest.copyWith.fieldName(value)` for a single field.
class _$ResetPasswordRequestCWProxyImpl
    implements _$ResetPasswordRequestCWProxy {
  const _$ResetPasswordRequestCWProxyImpl(this._value);

  final ResetPasswordRequest _value;

  @override
  ResetPasswordRequest password(String password) => call(password: password);

  @override
  ResetPasswordRequest confirmPassword(String confirmPassword) =>
      call(confirmPassword: confirmPassword);

  @override
  ResetPasswordRequest email(String email) => call(email: email);

  @override
  ResetPasswordRequest token(String token) => call(token: token);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ResetPasswordRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ResetPasswordRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ResetPasswordRequest call({
    Object? password = const $CopyWithPlaceholder(),
    Object? confirmPassword = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? token = const $CopyWithPlaceholder(),
  }) {
    return ResetPasswordRequest(
      password: password == const $CopyWithPlaceholder() || password == null
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String,
      confirmPassword:
          confirmPassword == const $CopyWithPlaceholder() ||
              confirmPassword == null
          ? _value.confirmPassword
          // ignore: cast_nullable_to_non_nullable
          : confirmPassword as String,
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      token: token == const $CopyWithPlaceholder() || token == null
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String,
    );
  }
}

extension $ResetPasswordRequestCopyWith on ResetPasswordRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfResetPasswordRequest.copyWith(...)` or `instanceOfResetPasswordRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ResetPasswordRequestCWProxy get copyWith =>
      _$ResetPasswordRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordRequest _$ResetPasswordRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ResetPasswordRequest', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['password', 'confirmPassword', 'email', 'token'],
  );
  final val = ResetPasswordRequest(
    password: $checkedConvert('password', (v) => v as String),
    confirmPassword: $checkedConvert('confirmPassword', (v) => v as String),
    email: $checkedConvert('email', (v) => v as String),
    token: $checkedConvert('token', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ResetPasswordRequestToJson(
  ResetPasswordRequest instance,
) => <String, dynamic>{
  'password': instance.password,
  'confirmPassword': instance.confirmPassword,
  'email': instance.email,
  'token': instance.token,
};
