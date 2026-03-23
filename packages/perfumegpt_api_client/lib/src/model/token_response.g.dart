// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TokenResponseCWProxy {
  TokenResponse accessToken(String accessToken);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TokenResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TokenResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  TokenResponse call({String accessToken});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfTokenResponse.copyWith(...)` or call `instanceOfTokenResponse.copyWith.fieldName(value)` for a single field.
class _$TokenResponseCWProxyImpl implements _$TokenResponseCWProxy {
  const _$TokenResponseCWProxyImpl(this._value);

  final TokenResponse _value;

  @override
  TokenResponse accessToken(String accessToken) =>
      call(accessToken: accessToken);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TokenResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TokenResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  TokenResponse call({Object? accessToken = const $CopyWithPlaceholder()}) {
    return TokenResponse(
      accessToken:
          accessToken == const $CopyWithPlaceholder() || accessToken == null
          ? _value.accessToken
          // ignore: cast_nullable_to_non_nullable
          : accessToken as String,
    );
  }
}

extension $TokenResponseCopyWith on TokenResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfTokenResponse.copyWith(...)` or `instanceOfTokenResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TokenResponseCWProxy get copyWith => _$TokenResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TokenResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['accessToken']);
      final val = TokenResponse(
        accessToken: $checkedConvert('accessToken', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$TokenResponseToJson(TokenResponse instance) =>
    <String, dynamic>{'accessToken': instance.accessToken};
