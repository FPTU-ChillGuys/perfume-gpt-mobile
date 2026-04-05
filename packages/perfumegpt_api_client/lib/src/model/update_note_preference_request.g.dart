// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_note_preference_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateNotePreferenceRequest extends UpdateNotePreferenceRequest {
  @override
  final int? noteId;
  @override
  final NoteType? noteType;

  factory _$UpdateNotePreferenceRequest([
    void Function(UpdateNotePreferenceRequestBuilder)? updates,
  ]) => (UpdateNotePreferenceRequestBuilder()..update(updates))._build();

  _$UpdateNotePreferenceRequest._({this.noteId, this.noteType}) : super._();
  @override
  UpdateNotePreferenceRequest rebuild(
    void Function(UpdateNotePreferenceRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateNotePreferenceRequestBuilder toBuilder() =>
      UpdateNotePreferenceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateNotePreferenceRequest &&
        noteId == other.noteId &&
        noteType == other.noteType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, noteId.hashCode);
    _$hash = $jc(_$hash, noteType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateNotePreferenceRequest')
          ..add('noteId', noteId)
          ..add('noteType', noteType))
        .toString();
  }
}

class UpdateNotePreferenceRequestBuilder
    implements
        Builder<
          UpdateNotePreferenceRequest,
          UpdateNotePreferenceRequestBuilder
        > {
  _$UpdateNotePreferenceRequest? _$v;

  int? _noteId;
  int? get noteId => _$this._noteId;
  set noteId(int? noteId) => _$this._noteId = noteId;

  NoteType? _noteType;
  NoteType? get noteType => _$this._noteType;
  set noteType(NoteType? noteType) => _$this._noteType = noteType;

  UpdateNotePreferenceRequestBuilder() {
    UpdateNotePreferenceRequest._defaults(this);
  }

  UpdateNotePreferenceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _noteId = $v.noteId;
      _noteType = $v.noteType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateNotePreferenceRequest other) {
    _$v = other as _$UpdateNotePreferenceRequest;
  }

  @override
  void update(void Function(UpdateNotePreferenceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateNotePreferenceRequest build() => _build();

  _$UpdateNotePreferenceRequest _build() {
    final _$result =
        _$v ??
        _$UpdateNotePreferenceRequest._(noteId: noteId, noteType: noteType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
