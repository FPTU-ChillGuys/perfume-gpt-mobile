// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_credentials_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserCredentialsResponse extends UserCredentialsResponse {
  @override
  final String? id;
  @override
  final int? loyaltyPoint;
  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String? profilePictureUrl;

  factory _$UserCredentialsResponse([
    void Function(UserCredentialsResponseBuilder)? updates,
  ]) => (UserCredentialsResponseBuilder()..update(updates))._build();

  _$UserCredentialsResponse._({
    this.id,
    this.loyaltyPoint,
    required this.fullName,
    required this.phoneNumber,
    required this.email,
    this.profilePictureUrl,
  }) : super._();
  @override
  UserCredentialsResponse rebuild(
    void Function(UserCredentialsResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserCredentialsResponseBuilder toBuilder() =>
      UserCredentialsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCredentialsResponse &&
        id == other.id &&
        loyaltyPoint == other.loyaltyPoint &&
        fullName == other.fullName &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        profilePictureUrl == other.profilePictureUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, loyaltyPoint.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, profilePictureUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserCredentialsResponse')
          ..add('id', id)
          ..add('loyaltyPoint', loyaltyPoint)
          ..add('fullName', fullName)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('profilePictureUrl', profilePictureUrl))
        .toString();
  }
}

class UserCredentialsResponseBuilder
    implements
        Builder<UserCredentialsResponse, UserCredentialsResponseBuilder> {
  _$UserCredentialsResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _loyaltyPoint;
  int? get loyaltyPoint => _$this._loyaltyPoint;
  set loyaltyPoint(int? loyaltyPoint) => _$this._loyaltyPoint = loyaltyPoint;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _profilePictureUrl;
  String? get profilePictureUrl => _$this._profilePictureUrl;
  set profilePictureUrl(String? profilePictureUrl) =>
      _$this._profilePictureUrl = profilePictureUrl;

  UserCredentialsResponseBuilder() {
    UserCredentialsResponse._defaults(this);
  }

  UserCredentialsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _loyaltyPoint = $v.loyaltyPoint;
      _fullName = $v.fullName;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _profilePictureUrl = $v.profilePictureUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCredentialsResponse other) {
    _$v = other as _$UserCredentialsResponse;
  }

  @override
  void update(void Function(UserCredentialsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCredentialsResponse build() => _build();

  _$UserCredentialsResponse _build() {
    final _$result =
        _$v ??
        _$UserCredentialsResponse._(
          id: id,
          loyaltyPoint: loyaltyPoint,
          fullName: BuiltValueNullFieldError.checkNotNull(
            fullName,
            r'UserCredentialsResponse',
            'fullName',
          ),
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
            phoneNumber,
            r'UserCredentialsResponse',
            'phoneNumber',
          ),
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'UserCredentialsResponse',
            'email',
          ),
          profilePictureUrl: profilePictureUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
