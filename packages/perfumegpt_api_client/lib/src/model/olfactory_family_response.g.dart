// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'olfactory_family_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OlfactoryFamilyResponse extends OlfactoryFamilyResponse {
  @override
  final int? id;
  @override
  final String name;

  factory _$OlfactoryFamilyResponse([
    void Function(OlfactoryFamilyResponseBuilder)? updates,
  ]) => (OlfactoryFamilyResponseBuilder()..update(updates))._build();

  _$OlfactoryFamilyResponse._({this.id, required this.name}) : super._();
  @override
  OlfactoryFamilyResponse rebuild(
    void Function(OlfactoryFamilyResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OlfactoryFamilyResponseBuilder toBuilder() =>
      OlfactoryFamilyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OlfactoryFamilyResponse &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OlfactoryFamilyResponse')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class OlfactoryFamilyResponseBuilder
    implements
        Builder<OlfactoryFamilyResponse, OlfactoryFamilyResponseBuilder> {
  _$OlfactoryFamilyResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  OlfactoryFamilyResponseBuilder() {
    OlfactoryFamilyResponse._defaults(this);
  }

  OlfactoryFamilyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OlfactoryFamilyResponse other) {
    _$v = other as _$OlfactoryFamilyResponse;
  }

  @override
  void update(void Function(OlfactoryFamilyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OlfactoryFamilyResponse build() => _build();

  _$OlfactoryFamilyResponse _build() {
    final _$result =
        _$v ??
        _$OlfactoryFamilyResponse._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'OlfactoryFamilyResponse',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
