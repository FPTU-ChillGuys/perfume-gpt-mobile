// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_lookup_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BrandLookupItem extends BrandLookupItem {
  @override
  final int? id;
  @override
  final String name;

  factory _$BrandLookupItem([void Function(BrandLookupItemBuilder)? updates]) =>
      (BrandLookupItemBuilder()..update(updates))._build();

  _$BrandLookupItem._({this.id, required this.name}) : super._();
  @override
  BrandLookupItem rebuild(void Function(BrandLookupItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandLookupItemBuilder toBuilder() => BrandLookupItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrandLookupItem && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'BrandLookupItem')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class BrandLookupItemBuilder
    implements Builder<BrandLookupItem, BrandLookupItemBuilder> {
  _$BrandLookupItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  BrandLookupItemBuilder() {
    BrandLookupItem._defaults(this);
  }

  BrandLookupItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrandLookupItem other) {
    _$v = other as _$BrandLookupItem;
  }

  @override
  void update(void Function(BrandLookupItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BrandLookupItem build() => _build();

  _$BrandLookupItem _build() {
    final _$result =
        _$v ??
        _$BrandLookupItem._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'BrandLookupItem',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
