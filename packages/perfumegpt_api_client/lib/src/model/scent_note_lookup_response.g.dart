// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scent_note_lookup_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScentNoteLookupResponse extends ScentNoteLookupResponse {
  @override
  final int? id;
  @override
  final String name;

  factory _$ScentNoteLookupResponse([
    void Function(ScentNoteLookupResponseBuilder)? updates,
  ]) => (ScentNoteLookupResponseBuilder()..update(updates))._build();

  _$ScentNoteLookupResponse._({this.id, required this.name}) : super._();
  @override
  ScentNoteLookupResponse rebuild(
    void Function(ScentNoteLookupResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ScentNoteLookupResponseBuilder toBuilder() =>
      ScentNoteLookupResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScentNoteLookupResponse &&
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
    return (newBuiltValueToStringHelper(r'ScentNoteLookupResponse')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ScentNoteLookupResponseBuilder
    implements
        Builder<ScentNoteLookupResponse, ScentNoteLookupResponseBuilder> {
  _$ScentNoteLookupResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ScentNoteLookupResponseBuilder() {
    ScentNoteLookupResponse._defaults(this);
  }

  ScentNoteLookupResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScentNoteLookupResponse other) {
    _$v = other as _$ScentNoteLookupResponse;
  }

  @override
  void update(void Function(ScentNoteLookupResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScentNoteLookupResponse build() => _build();

  _$ScentNoteLookupResponse _build() {
    final _$result =
        _$v ??
        _$ScentNoteLookupResponse._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ScentNoteLookupResponse',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
