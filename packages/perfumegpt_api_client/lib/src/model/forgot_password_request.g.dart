// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ForgotPasswordRequestCWProxy {
  ForgotPasswordRequest email(String email);

  ForgotPasswordRequest clientUri(String clientUri);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ForgotPasswordRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ForgotPasswordRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ForgotPasswordRequest call({String email, String clientUri});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfForgotPasswordRequest.copyWith(...)` or call `instanceOfForgotPasswordRequest.copyWith.fieldName(value)` for a single field.
class _$ForgotPasswordRequestCWProxyImpl
    implements _$ForgotPasswordRequestCWProxy {
  const _$ForgotPasswordRequestCWProxyImpl(this._value);

  final ForgotPasswordRequest _value;

  @override
  ForgotPasswordRequest email(String email) => call(email: email);

  @override
  ForgotPasswordRequest clientUri(String clientUri) =>
      call(clientUri: clientUri);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ForgotPasswordRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ForgotPasswordRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ForgotPasswordRequest call({
    Object? email = const $CopyWithPlaceholder(),
    Object? clientUri = const $CopyWithPlaceholder(),
  }) {
    return ForgotPasswordRequest(
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      clientUri: clientUri == const $CopyWithPlaceholder() || clientUri == null
          ? _value.clientUri
          // ignore: cast_nullable_to_non_nullable
          : clientUri as String,
    );
  }
}

extension $ForgotPasswordRequestCopyWith on ForgotPasswordRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfForgotPasswordRequest.copyWith(...)` or `instanceOfForgotPasswordRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ForgotPasswordRequestCWProxy get copyWith =>
      _$ForgotPasswordRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotPasswordRequest _$ForgotPasswordRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ForgotPasswordRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['email', 'clientUri']);
  final val = ForgotPasswordRequest(
    email: $checkedConvert('email', (v) => v as String),
    clientUri: $checkedConvert('clientUri', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ForgotPasswordRequestToJson(
  ForgotPasswordRequest instance,
) => <String, dynamic>{
  'email': instance.email,
  'clientUri': instance.clientUri,
};
