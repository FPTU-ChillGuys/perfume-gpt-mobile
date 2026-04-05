// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_scent_note_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateScentNoteRequest extends CreateScentNoteRequest {
  @override
  final String name;

  factory _$CreateScentNoteRequest([
    void Function(CreateScentNoteRequestBuilder)? updates,
  ]) => (CreateScentNoteRequestBuilder()..update(updates))._build();

  _$CreateScentNoteRequest._({required this.name}) : super._();
  @override
  CreateScentNoteRequest rebuild(
    void Function(CreateScentNoteRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateScentNoteRequestBuilder toBuilder() =>
      CreateScentNoteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateScentNoteRequest && name == other.name;
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
      r'CreateScentNoteRequest',
    )..add('name', name)).toString();
  }
}

class CreateScentNoteRequestBuilder
    implements Builder<CreateScentNoteRequest, CreateScentNoteRequestBuilder> {
  _$CreateScentNoteRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CreateScentNoteRequestBuilder() {
    CreateScentNoteRequest._defaults(this);
  }

  CreateScentNoteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateScentNoteRequest other) {
    _$v = other as _$CreateScentNoteRequest;
  }

  @override
  void update(void Function(CreateScentNoteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateScentNoteRequest build() => _build();

  _$CreateScentNoteRequest _build() {
    final _$result =
        _$v ??
        _$CreateScentNoteRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CreateScentNoteRequest',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
