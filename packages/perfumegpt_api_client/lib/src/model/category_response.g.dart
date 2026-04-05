// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryResponse extends CategoryResponse {
  @override
  final int? id;
  @override
  final String name;

  factory _$CategoryResponse([
    void Function(CategoryResponseBuilder)? updates,
  ]) => (CategoryResponseBuilder()..update(updates))._build();

  _$CategoryResponse._({this.id, required this.name}) : super._();
  @override
  CategoryResponse rebuild(void Function(CategoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryResponseBuilder toBuilder() =>
      CategoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryResponse && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'CategoryResponse')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class CategoryResponseBuilder
    implements Builder<CategoryResponse, CategoryResponseBuilder> {
  _$CategoryResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CategoryResponseBuilder() {
    CategoryResponse._defaults(this);
  }

  CategoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryResponse other) {
    _$v = other as _$CategoryResponse;
  }

  @override
  void update(void Function(CategoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoryResponse build() => _build();

  _$CategoryResponse _build() {
    final _$result =
        _$v ??
        _$CategoryResponse._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CategoryResponse',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
