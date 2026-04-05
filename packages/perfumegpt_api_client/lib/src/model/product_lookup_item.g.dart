// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_lookup_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductLookupItem extends ProductLookupItem {
  @override
  final String? id;
  @override
  final String name;
  @override
  final String brandName;
  @override
  final String? primaryImageUrl;

  factory _$ProductLookupItem([
    void Function(ProductLookupItemBuilder)? updates,
  ]) => (ProductLookupItemBuilder()..update(updates))._build();

  _$ProductLookupItem._({
    this.id,
    required this.name,
    required this.brandName,
    this.primaryImageUrl,
  }) : super._();
  @override
  ProductLookupItem rebuild(void Function(ProductLookupItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductLookupItemBuilder toBuilder() =>
      ProductLookupItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductLookupItem &&
        id == other.id &&
        name == other.name &&
        brandName == other.brandName &&
        primaryImageUrl == other.primaryImageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, brandName.hashCode);
    _$hash = $jc(_$hash, primaryImageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductLookupItem')
          ..add('id', id)
          ..add('name', name)
          ..add('brandName', brandName)
          ..add('primaryImageUrl', primaryImageUrl))
        .toString();
  }
}

class ProductLookupItemBuilder
    implements Builder<ProductLookupItem, ProductLookupItemBuilder> {
  _$ProductLookupItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _brandName;
  String? get brandName => _$this._brandName;
  set brandName(String? brandName) => _$this._brandName = brandName;

  String? _primaryImageUrl;
  String? get primaryImageUrl => _$this._primaryImageUrl;
  set primaryImageUrl(String? primaryImageUrl) =>
      _$this._primaryImageUrl = primaryImageUrl;

  ProductLookupItemBuilder() {
    ProductLookupItem._defaults(this);
  }

  ProductLookupItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _brandName = $v.brandName;
      _primaryImageUrl = $v.primaryImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductLookupItem other) {
    _$v = other as _$ProductLookupItem;
  }

  @override
  void update(void Function(ProductLookupItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductLookupItem build() => _build();

  _$ProductLookupItem _build() {
    final _$result =
        _$v ??
        _$ProductLookupItem._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ProductLookupItem',
            'name',
          ),
          brandName: BuiltValueNullFieldError.checkNotNull(
            brandName,
            r'ProductLookupItem',
            'brandName',
          ),
          primaryImageUrl: primaryImageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
