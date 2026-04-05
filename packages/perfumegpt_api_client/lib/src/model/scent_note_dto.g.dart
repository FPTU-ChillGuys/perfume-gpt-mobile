// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scent_note_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScentNoteDto extends ScentNoteDto {
  @override
  final int? noteId;
  @override
  final NoteType? type;

  factory _$ScentNoteDto([void Function(ScentNoteDtoBuilder)? updates]) =>
      (ScentNoteDtoBuilder()..update(updates))._build();

  _$ScentNoteDto._({this.noteId, this.type}) : super._();
  @override
  ScentNoteDto rebuild(void Function(ScentNoteDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScentNoteDtoBuilder toBuilder() => ScentNoteDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScentNoteDto &&
        noteId == other.noteId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, noteId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScentNoteDto')
          ..add('noteId', noteId)
          ..add('type', type))
        .toString();
  }
}

class ScentNoteDtoBuilder
    implements Builder<ScentNoteDto, ScentNoteDtoBuilder> {
  _$ScentNoteDto? _$v;

  int? _noteId;
  int? get noteId => _$this._noteId;
  set noteId(int? noteId) => _$this._noteId = noteId;

  NoteType? _type;
  NoteType? get type => _$this._type;
  set type(NoteType? type) => _$this._type = type;

  ScentNoteDtoBuilder() {
    ScentNoteDto._defaults(this);
  }

  ScentNoteDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _noteId = $v.noteId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScentNoteDto other) {
    _$v = other as _$ScentNoteDto;
  }

  @override
  void update(void Function(ScentNoteDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScentNoteDto build() => _build();

  _$ScentNoteDto _build() {
    final _$result = _$v ?? _$ScentNoteDto._(noteId: noteId, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
