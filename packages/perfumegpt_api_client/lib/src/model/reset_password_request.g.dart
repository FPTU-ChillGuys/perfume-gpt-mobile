// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetPasswordRequest extends ResetPasswordRequest {
  @override
  final String password;
  @override
  final String confirmPassword;
  @override
  final String email;
  @override
  final String token;

  factory _$ResetPasswordRequest([
    void Function(ResetPasswordRequestBuilder)? updates,
  ]) => (ResetPasswordRequestBuilder()..update(updates))._build();

  _$ResetPasswordRequest._({
    required this.password,
    required this.confirmPassword,
    required this.email,
    required this.token,
  }) : super._();
  @override
  ResetPasswordRequest rebuild(
    void Function(ResetPasswordRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResetPasswordRequestBuilder toBuilder() =>
      ResetPasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetPasswordRequest &&
        password == other.password &&
        confirmPassword == other.confirmPassword &&
        email == other.email &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, confirmPassword.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResetPasswordRequest')
          ..add('password', password)
          ..add('confirmPassword', confirmPassword)
          ..add('email', email)
          ..add('token', token))
        .toString();
  }
}

class ResetPasswordRequestBuilder
    implements Builder<ResetPasswordRequest, ResetPasswordRequestBuilder> {
  _$ResetPasswordRequest? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _confirmPassword;
  String? get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String? confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  ResetPasswordRequestBuilder() {
    ResetPasswordRequest._defaults(this);
  }

  ResetPasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _confirmPassword = $v.confirmPassword;
      _email = $v.email;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetPasswordRequest other) {
    _$v = other as _$ResetPasswordRequest;
  }

  @override
  void update(void Function(ResetPasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetPasswordRequest build() => _build();

  _$ResetPasswordRequest _build() {
    final _$result =
        _$v ??
        _$ResetPasswordRequest._(
          password: BuiltValueNullFieldError.checkNotNull(
            password,
            r'ResetPasswordRequest',
            'password',
          ),
          confirmPassword: BuiltValueNullFieldError.checkNotNull(
            confirmPassword,
            r'ResetPasswordRequest',
            'confirmPassword',
          ),
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'ResetPasswordRequest',
            'email',
          ),
          token: BuiltValueNullFieldError.checkNotNull(
            token,
            r'ResetPasswordRequest',
            'token',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
