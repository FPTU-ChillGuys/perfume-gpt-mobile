// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RegisterRequestCWProxy {
  RegisterRequest fullName(String? fullName);

  RegisterRequest phoneNumber(String phoneNumber);

  RegisterRequest email(String email);

  RegisterRequest password(String? password);

  RegisterRequest clientUri(String? clientUri);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RegisterRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RegisterRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  RegisterRequest call({
    String? fullName,
    String phoneNumber,
    String email,
    String? password,
    String? clientUri,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRegisterRequest.copyWith(...)` or call `instanceOfRegisterRequest.copyWith.fieldName(value)` for a single field.
class _$RegisterRequestCWProxyImpl implements _$RegisterRequestCWProxy {
  const _$RegisterRequestCWProxyImpl(this._value);

  final RegisterRequest _value;

  @override
  RegisterRequest fullName(String? fullName) => call(fullName: fullName);

  @override
  RegisterRequest phoneNumber(String phoneNumber) =>
      call(phoneNumber: phoneNumber);

  @override
  RegisterRequest email(String email) => call(email: email);

  @override
  RegisterRequest password(String? password) => call(password: password);

  @override
  RegisterRequest clientUri(String? clientUri) => call(clientUri: clientUri);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RegisterRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RegisterRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  RegisterRequest call({
    Object? fullName = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? clientUri = const $CopyWithPlaceholder(),
  }) {
    return RegisterRequest(
      fullName: fullName == const $CopyWithPlaceholder()
          ? _value.fullName
          // ignore: cast_nullable_to_non_nullable
          : fullName as String?,
      phoneNumber:
          phoneNumber == const $CopyWithPlaceholder() || phoneNumber == null
          ? _value.phoneNumber
          // ignore: cast_nullable_to_non_nullable
          : phoneNumber as String,
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String?,
      clientUri: clientUri == const $CopyWithPlaceholder()
          ? _value.clientUri
          // ignore: cast_nullable_to_non_nullable
          : clientUri as String?,
    );
  }
}

extension $RegisterRequestCopyWith on RegisterRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRegisterRequest.copyWith(...)` or `instanceOfRegisterRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RegisterRequestCWProxy get copyWith => _$RegisterRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RegisterRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['phoneNumber', 'email']);
      final val = RegisterRequest(
        fullName: $checkedConvert('fullName', (v) => v as String?),
        phoneNumber: $checkedConvert('phoneNumber', (v) => v as String),
        email: $checkedConvert('email', (v) => v as String),
        password: $checkedConvert('password', (v) => v as String?),
        clientUri: $checkedConvert('clientUri', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'fullName': ?instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'password': ?instance.password,
      'clientUri': ?instance.clientUri,
    };
