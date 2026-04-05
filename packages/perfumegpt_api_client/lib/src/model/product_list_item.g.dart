// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductListItem extends ProductListItem {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? brandId;
  @override
  final String brandName;
  @override
  final int? categoryId;
  @override
  final String categoryName;
  @override
  final String? description;
  @override
  final int? numberOfVariants;
  @override
  final BuiltList<num> variantPrices;
  @override
  final BuiltList<String>? tags;
  @override
  final MediaResponse? primaryImage;

  factory _$ProductListItem([void Function(ProductListItemBuilder)? updates]) =>
      (ProductListItemBuilder()..update(updates))._build();

  _$ProductListItem._({
    this.id,
    this.name,
    this.brandId,
    required this.brandName,
    this.categoryId,
    required this.categoryName,
    this.description,
    this.numberOfVariants,
    required this.variantPrices,
    this.tags,
    this.primaryImage,
  }) : super._();
  @override
  ProductListItem rebuild(void Function(ProductListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductListItemBuilder toBuilder() => ProductListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductListItem &&
        id == other.id &&
        name == other.name &&
        brandId == other.brandId &&
        brandName == other.brandName &&
        categoryId == other.categoryId &&
        categoryName == other.categoryName &&
        description == other.description &&
        numberOfVariants == other.numberOfVariants &&
        variantPrices == other.variantPrices &&
        tags == other.tags &&
        primaryImage == other.primaryImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, brandId.hashCode);
    _$hash = $jc(_$hash, brandName.hashCode);
    _$hash = $jc(_$hash, categoryId.hashCode);
    _$hash = $jc(_$hash, categoryName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, numberOfVariants.hashCode);
    _$hash = $jc(_$hash, variantPrices.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, primaryImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductListItem')
          ..add('id', id)
          ..add('name', name)
          ..add('brandId', brandId)
          ..add('brandName', brandName)
          ..add('categoryId', categoryId)
          ..add('categoryName', categoryName)
          ..add('description', description)
          ..add('numberOfVariants', numberOfVariants)
          ..add('variantPrices', variantPrices)
          ..add('tags', tags)
          ..add('primaryImage', primaryImage))
        .toString();
  }
}

class ProductListItemBuilder
    implements Builder<ProductListItem, ProductListItemBuilder> {
  _$ProductListItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _brandId;
  int? get brandId => _$this._brandId;
  set brandId(int? brandId) => _$this._brandId = brandId;

  String? _brandName;
  String? get brandName => _$this._brandName;
  set brandName(String? brandName) => _$this._brandName = brandName;

  int? _categoryId;
  int? get categoryId => _$this._categoryId;
  set categoryId(int? categoryId) => _$this._categoryId = categoryId;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _numberOfVariants;
  int? get numberOfVariants => _$this._numberOfVariants;
  set numberOfVariants(int? numberOfVariants) =>
      _$this._numberOfVariants = numberOfVariants;

  ListBuilder<num>? _variantPrices;
  ListBuilder<num> get variantPrices =>
      _$this._variantPrices ??= ListBuilder<num>();
  set variantPrices(ListBuilder<num>? variantPrices) =>
      _$this._variantPrices = variantPrices;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  MediaResponseBuilder? _primaryImage;
  MediaResponseBuilder get primaryImage =>
      _$this._primaryImage ??= MediaResponseBuilder();
  set primaryImage(MediaResponseBuilder? primaryImage) =>
      _$this._primaryImage = primaryImage;

  ProductListItemBuilder() {
    ProductListItem._defaults(this);
  }

  ProductListItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _brandId = $v.brandId;
      _brandName = $v.brandName;
      _categoryId = $v.categoryId;
      _categoryName = $v.categoryName;
      _description = $v.description;
      _numberOfVariants = $v.numberOfVariants;
      _variantPrices = $v.variantPrices.toBuilder();
      _tags = $v.tags?.toBuilder();
      _primaryImage = $v.primaryImage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductListItem other) {
    _$v = other as _$ProductListItem;
  }

  @override
  void update(void Function(ProductListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductListItem build() => _build();

  _$ProductListItem _build() {
    _$ProductListItem _$result;
    try {
      _$result =
          _$v ??
          _$ProductListItem._(
            id: id,
            name: name,
            brandId: brandId,
            brandName: BuiltValueNullFieldError.checkNotNull(
              brandName,
              r'ProductListItem',
              'brandName',
            ),
            categoryId: categoryId,
            categoryName: BuiltValueNullFieldError.checkNotNull(
              categoryName,
              r'ProductListItem',
              'categoryName',
            ),
            description: description,
            numberOfVariants: numberOfVariants,
            variantPrices: variantPrices.build(),
            tags: _tags?.build(),
            primaryImage: _primaryImage?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'variantPrices';
        variantPrices.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'primaryImage';
        _primaryImage?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProductListItem',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
