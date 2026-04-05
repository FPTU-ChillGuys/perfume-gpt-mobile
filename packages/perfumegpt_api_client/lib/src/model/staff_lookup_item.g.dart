// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_lookup_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StaffLookupItem extends StaffLookupItem {
  @override
  final String? id;
  @override
  final String userName;
  @override
  final String fullName;
  @override
  final String email;

  factory _$StaffLookupItem([void Function(StaffLookupItemBuilder)? updates]) =>
      (StaffLookupItemBuilder()..update(updates))._build();

  _$StaffLookupItem._({
    this.id,
    required this.userName,
    required this.fullName,
    required this.email,
  }) : super._();
  @override
  StaffLookupItem rebuild(void Function(StaffLookupItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StaffLookupItemBuilder toBuilder() => StaffLookupItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StaffLookupItem &&
        id == other.id &&
        userName == other.userName &&
        fullName == other.fullName &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, fullName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StaffLookupItem')
          ..add('id', id)
          ..add('userName', userName)
          ..add('fullName', fullName)
          ..add('email', email))
        .toString();
  }
}

class StaffLookupItemBuilder
    implements Builder<StaffLookupItem, StaffLookupItemBuilder> {
  _$StaffLookupItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  StaffLookupItemBuilder() {
    StaffLookupItem._defaults(this);
  }

  StaffLookupItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userName = $v.userName;
      _fullName = $v.fullName;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StaffLookupItem other) {
    _$v = other as _$StaffLookupItem;
  }

  @override
  void update(void Function(StaffLookupItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StaffLookupItem build() => _build();

  _$StaffLookupItem _build() {
    final _$result =
        _$v ??
        _$StaffLookupItem._(
          id: id,
          userName: BuiltValueNullFieldError.checkNotNull(
            userName,
            r'StaffLookupItem',
            'userName',
          ),
          fullName: BuiltValueNullFieldError.checkNotNull(
            fullName,
            r'StaffLookupItem',
            'fullName',
          ),
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'StaffLookupItem',
            'email',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
