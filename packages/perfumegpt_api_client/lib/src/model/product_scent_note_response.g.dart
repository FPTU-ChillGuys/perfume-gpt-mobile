// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_scent_note_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductScentNoteResponse extends ProductScentNoteResponse {
  @override
  final int? noteId;
  @override
  final String name;
  @override
  final NoteType? type;

  factory _$ProductScentNoteResponse([
    void Function(ProductScentNoteResponseBuilder)? updates,
  ]) => (ProductScentNoteResponseBuilder()..update(updates))._build();

  _$ProductScentNoteResponse._({this.noteId, required this.name, this.type})
    : super._();
  @override
  ProductScentNoteResponse rebuild(
    void Function(ProductScentNoteResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProductScentNoteResponseBuilder toBuilder() =>
      ProductScentNoteResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductScentNoteResponse &&
        noteId == other.noteId &&
        name == other.name &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, noteId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductScentNoteResponse')
          ..add('noteId', noteId)
          ..add('name', name)
          ..add('type', type))
        .toString();
  }
}

class ProductScentNoteResponseBuilder
    implements
        Builder<ProductScentNoteResponse, ProductScentNoteResponseBuilder> {
  _$ProductScentNoteResponse? _$v;

  int? _noteId;
  int? get noteId => _$this._noteId;
  set noteId(int? noteId) => _$this._noteId = noteId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  NoteType? _type;
  NoteType? get type => _$this._type;
  set type(NoteType? type) => _$this._type = type;

  ProductScentNoteResponseBuilder() {
    ProductScentNoteResponse._defaults(this);
  }

  ProductScentNoteResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _noteId = $v.noteId;
      _name = $v.name;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductScentNoteResponse other) {
    _$v = other as _$ProductScentNoteResponse;
  }

  @override
  void update(void Function(ProductScentNoteResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductScentNoteResponse build() => _build();

  _$ProductScentNoteResponse _build() {
    final _$result =
        _$v ??
        _$ProductScentNoteResponse._(
          noteId: noteId,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ProductScentNoteResponse',
            'name',
          ),
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
