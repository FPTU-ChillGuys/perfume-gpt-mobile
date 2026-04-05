// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scent_note_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScentNoteResponse extends ScentNoteResponse {
  @override
  final int? id;
  @override
  final String name;

  factory _$ScentNoteResponse([
    void Function(ScentNoteResponseBuilder)? updates,
  ]) => (ScentNoteResponseBuilder()..update(updates))._build();

  _$ScentNoteResponse._({this.id, required this.name}) : super._();
  @override
  ScentNoteResponse rebuild(void Function(ScentNoteResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScentNoteResponseBuilder toBuilder() =>
      ScentNoteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScentNoteResponse && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'ScentNoteResponse')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ScentNoteResponseBuilder
    implements Builder<ScentNoteResponse, ScentNoteResponseBuilder> {
  _$ScentNoteResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ScentNoteResponseBuilder() {
    ScentNoteResponse._defaults(this);
  }

  ScentNoteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScentNoteResponse other) {
    _$v = other as _$ScentNoteResponse;
  }

  @override
  void update(void Function(ScentNoteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScentNoteResponse build() => _build();

  _$ScentNoteResponse _build() {
    final _$result =
        _$v ??
        _$ScentNoteResponse._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ScentNoteResponse',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
