// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_olfactory_family_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateOlfactoryFamilyRequest extends UpdateOlfactoryFamilyRequest {
  @override
  final String name;

  factory _$UpdateOlfactoryFamilyRequest([
    void Function(UpdateOlfactoryFamilyRequestBuilder)? updates,
  ]) => (UpdateOlfactoryFamilyRequestBuilder()..update(updates))._build();

  _$UpdateOlfactoryFamilyRequest._({required this.name}) : super._();
  @override
  UpdateOlfactoryFamilyRequest rebuild(
    void Function(UpdateOlfactoryFamilyRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateOlfactoryFamilyRequestBuilder toBuilder() =>
      UpdateOlfactoryFamilyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateOlfactoryFamilyRequest && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'UpdateOlfactoryFamilyRequest',
    )..add('name', name)).toString();
  }
}

class UpdateOlfactoryFamilyRequestBuilder
    implements
        Builder<
          UpdateOlfactoryFamilyRequest,
          UpdateOlfactoryFamilyRequestBuilder
        > {
  _$UpdateOlfactoryFamilyRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UpdateOlfactoryFamilyRequestBuilder() {
    UpdateOlfactoryFamilyRequest._defaults(this);
  }

  UpdateOlfactoryFamilyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateOlfactoryFamilyRequest other) {
    _$v = other as _$UpdateOlfactoryFamilyRequest;
  }

  @override
  void update(void Function(UpdateOlfactoryFamilyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateOlfactoryFamilyRequest build() => _build();

  _$UpdateOlfactoryFamilyRequest _build() {
    final _$result =
        _$v ??
        _$UpdateOlfactoryFamilyRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'UpdateOlfactoryFamilyRequest',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
