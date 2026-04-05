// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_note_preference_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerNotePreferenceResponse extends CustomerNotePreferenceResponse {
  @override
  final int? noteId;
  @override
  final String noteName;
  @override
  final NoteType? noteType;

  factory _$CustomerNotePreferenceResponse([
    void Function(CustomerNotePreferenceResponseBuilder)? updates,
  ]) => (CustomerNotePreferenceResponseBuilder()..update(updates))._build();

  _$CustomerNotePreferenceResponse._({
    this.noteId,
    required this.noteName,
    this.noteType,
  }) : super._();
  @override
  CustomerNotePreferenceResponse rebuild(
    void Function(CustomerNotePreferenceResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CustomerNotePreferenceResponseBuilder toBuilder() =>
      CustomerNotePreferenceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerNotePreferenceResponse &&
        noteId == other.noteId &&
        noteName == other.noteName &&
        noteType == other.noteType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, noteId.hashCode);
    _$hash = $jc(_$hash, noteName.hashCode);
    _$hash = $jc(_$hash, noteType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerNotePreferenceResponse')
          ..add('noteId', noteId)
          ..add('noteName', noteName)
          ..add('noteType', noteType))
        .toString();
  }
}

class CustomerNotePreferenceResponseBuilder
    implements
        Builder<
          CustomerNotePreferenceResponse,
          CustomerNotePreferenceResponseBuilder
        > {
  _$CustomerNotePreferenceResponse? _$v;

  int? _noteId;
  int? get noteId => _$this._noteId;
  set noteId(int? noteId) => _$this._noteId = noteId;

  String? _noteName;
  String? get noteName => _$this._noteName;
  set noteName(String? noteName) => _$this._noteName = noteName;

  NoteType? _noteType;
  NoteType? get noteType => _$this._noteType;
  set noteType(NoteType? noteType) => _$this._noteType = noteType;

  CustomerNotePreferenceResponseBuilder() {
    CustomerNotePreferenceResponse._defaults(this);
  }

  CustomerNotePreferenceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _noteId = $v.noteId;
      _noteName = $v.noteName;
      _noteType = $v.noteType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerNotePreferenceResponse other) {
    _$v = other as _$CustomerNotePreferenceResponse;
  }

  @override
  void update(void Function(CustomerNotePreferenceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerNotePreferenceResponse build() => _build();

  _$CustomerNotePreferenceResponse _build() {
    final _$result =
        _$v ??
        _$CustomerNotePreferenceResponse._(
          noteId: noteId,
          noteName: BuiltValueNullFieldError.checkNotNull(
            noteName,
            r'CustomerNotePreferenceResponse',
            'noteName',
          ),
          noteType: noteType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
