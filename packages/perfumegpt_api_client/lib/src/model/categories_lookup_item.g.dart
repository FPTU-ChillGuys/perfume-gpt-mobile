// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_lookup_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoriesLookupItem extends CategoriesLookupItem {
  @override
  final int? id;
  @override
  final String name;

  factory _$CategoriesLookupItem([
    void Function(CategoriesLookupItemBuilder)? updates,
  ]) => (CategoriesLookupItemBuilder()..update(updates))._build();

  _$CategoriesLookupItem._({this.id, required this.name}) : super._();
  @override
  CategoriesLookupItem rebuild(
    void Function(CategoriesLookupItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CategoriesLookupItemBuilder toBuilder() =>
      CategoriesLookupItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriesLookupItem &&
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
    return (newBuiltValueToStringHelper(r'CategoriesLookupItem')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class CategoriesLookupItemBuilder
    implements Builder<CategoriesLookupItem, CategoriesLookupItemBuilder> {
  _$CategoriesLookupItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CategoriesLookupItemBuilder() {
    CategoriesLookupItem._defaults(this);
  }

  CategoriesLookupItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriesLookupItem other) {
    _$v = other as _$CategoriesLookupItem;
  }

  @override
  void update(void Function(CategoriesLookupItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriesLookupItem build() => _build();

  _$CategoriesLookupItem _build() {
    final _$result =
        _$v ??
        _$CategoriesLookupItem._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CategoriesLookupItem',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
