// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_scent_note_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateScentNoteRequest extends UpdateScentNoteRequest {
  @override
  final String name;

  factory _$UpdateScentNoteRequest([
    void Function(UpdateScentNoteRequestBuilder)? updates,
  ]) => (UpdateScentNoteRequestBuilder()..update(updates))._build();

  _$UpdateScentNoteRequest._({required this.name}) : super._();
  @override
  UpdateScentNoteRequest rebuild(
    void Function(UpdateScentNoteRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateScentNoteRequestBuilder toBuilder() =>
      UpdateScentNoteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateScentNoteRequest && name == other.name;
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
      r'UpdateScentNoteRequest',
    )..add('name', name)).toString();
  }
}

class UpdateScentNoteRequestBuilder
    implements Builder<UpdateScentNoteRequest, UpdateScentNoteRequestBuilder> {
  _$UpdateScentNoteRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UpdateScentNoteRequestBuilder() {
    UpdateScentNoteRequest._defaults(this);
  }

  UpdateScentNoteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateScentNoteRequest other) {
    _$v = other as _$UpdateScentNoteRequest;
  }

  @override
  void update(void Function(UpdateScentNoteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateScentNoteRequest build() => _build();

  _$UpdateScentNoteRequest _build() {
    final _$result =
        _$v ??
        _$UpdateScentNoteRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'UpdateScentNoteRequest',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
