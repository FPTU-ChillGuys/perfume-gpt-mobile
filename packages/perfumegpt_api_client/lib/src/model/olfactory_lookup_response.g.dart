// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'olfactory_lookup_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OlfactoryLookupResponse extends OlfactoryLookupResponse {
  @override
  final int? id;
  @override
  final String name;

  factory _$OlfactoryLookupResponse([
    void Function(OlfactoryLookupResponseBuilder)? updates,
  ]) => (OlfactoryLookupResponseBuilder()..update(updates))._build();

  _$OlfactoryLookupResponse._({this.id, required this.name}) : super._();
  @override
  OlfactoryLookupResponse rebuild(
    void Function(OlfactoryLookupResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OlfactoryLookupResponseBuilder toBuilder() =>
      OlfactoryLookupResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OlfactoryLookupResponse &&
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
    return (newBuiltValueToStringHelper(r'OlfactoryLookupResponse')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class OlfactoryLookupResponseBuilder
    implements
        Builder<OlfactoryLookupResponse, OlfactoryLookupResponseBuilder> {
  _$OlfactoryLookupResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  OlfactoryLookupResponseBuilder() {
    OlfactoryLookupResponse._defaults(this);
  }

  OlfactoryLookupResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OlfactoryLookupResponse other) {
    _$v = other as _$OlfactoryLookupResponse;
  }

  @override
  void update(void Function(OlfactoryLookupResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OlfactoryLookupResponse build() => _build();

  _$OlfactoryLookupResponse _build() {
    final _$result =
        _$v ??
        _$OlfactoryLookupResponse._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'OlfactoryLookupResponse',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
