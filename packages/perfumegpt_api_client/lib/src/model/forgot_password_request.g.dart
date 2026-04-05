// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForgotPasswordRequest extends ForgotPasswordRequest {
  @override
  final String email;
  @override
  final String clientUri;

  factory _$ForgotPasswordRequest([
    void Function(ForgotPasswordRequestBuilder)? updates,
  ]) => (ForgotPasswordRequestBuilder()..update(updates))._build();

  _$ForgotPasswordRequest._({required this.email, required this.clientUri})
    : super._();
  @override
  ForgotPasswordRequest rebuild(
    void Function(ForgotPasswordRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForgotPasswordRequestBuilder toBuilder() =>
      ForgotPasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForgotPasswordRequest &&
        email == other.email &&
        clientUri == other.clientUri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, clientUri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForgotPasswordRequest')
          ..add('email', email)
          ..add('clientUri', clientUri))
        .toString();
  }
}

class ForgotPasswordRequestBuilder
    implements Builder<ForgotPasswordRequest, ForgotPasswordRequestBuilder> {
  _$ForgotPasswordRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _clientUri;
  String? get clientUri => _$this._clientUri;
  set clientUri(String? clientUri) => _$this._clientUri = clientUri;

  ForgotPasswordRequestBuilder() {
    ForgotPasswordRequest._defaults(this);
  }

  ForgotPasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _clientUri = $v.clientUri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForgotPasswordRequest other) {
    _$v = other as _$ForgotPasswordRequest;
  }

  @override
  void update(void Function(ForgotPasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForgotPasswordRequest build() => _build();

  _$ForgotPasswordRequest _build() {
    final _$result =
        _$v ??
        _$ForgotPasswordRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'ForgotPasswordRequest',
            'email',
          ),
          clientUri: BuiltValueNullFieldError.checkNotNull(
            clientUri,
            r'ForgotPasswordRequest',
            'clientUri',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
