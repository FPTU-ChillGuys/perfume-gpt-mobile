// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_olfactory_family_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateOlfactoryFamilyRequest extends CreateOlfactoryFamilyRequest {
  @override
  final String name;

  factory _$CreateOlfactoryFamilyRequest([
    void Function(CreateOlfactoryFamilyRequestBuilder)? updates,
  ]) => (CreateOlfactoryFamilyRequestBuilder()..update(updates))._build();

  _$CreateOlfactoryFamilyRequest._({required this.name}) : super._();
  @override
  CreateOlfactoryFamilyRequest rebuild(
    void Function(CreateOlfactoryFamilyRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateOlfactoryFamilyRequestBuilder toBuilder() =>
      CreateOlfactoryFamilyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateOlfactoryFamilyRequest && name == other.name;
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
      r'CreateOlfactoryFamilyRequest',
    )..add('name', name)).toString();
  }
}

class CreateOlfactoryFamilyRequestBuilder
    implements
        Builder<
          CreateOlfactoryFamilyRequest,
          CreateOlfactoryFamilyRequestBuilder
        > {
  _$CreateOlfactoryFamilyRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CreateOlfactoryFamilyRequestBuilder() {
    CreateOlfactoryFamilyRequest._defaults(this);
  }

  CreateOlfactoryFamilyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateOlfactoryFamilyRequest other) {
    _$v = other as _$CreateOlfactoryFamilyRequest;
  }

  @override
  void update(void Function(CreateOlfactoryFamilyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOlfactoryFamilyRequest build() => _build();

  _$CreateOlfactoryFamilyRequest _build() {
    final _$result =
        _$v ??
        _$CreateOlfactoryFamilyRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CreateOlfactoryFamilyRequest',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
