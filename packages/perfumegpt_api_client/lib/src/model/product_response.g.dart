// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductResponse extends ProductResponse {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final Gender? gender;
  @override
  final String origin;
  @override
  final int? releaseYear;
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
  final BuiltList<MediaResponse> media;
  @override
  final BuiltList<ProductVariantResponse> variants;
  @override
  final BuiltList<ProductAttributeResponse> attributes;
  @override
  final BuiltList<ProductOlfactoryFamilyResponse> olfactoryFamilies;
  @override
  final BuiltList<ProductScentNoteResponse> scentNotes;

  factory _$ProductResponse([void Function(ProductResponseBuilder)? updates]) =>
      (ProductResponseBuilder()..update(updates))._build();

  _$ProductResponse._({
    this.id,
    this.name,
    this.gender,
    required this.origin,
    this.releaseYear,
    this.brandId,
    required this.brandName,
    this.categoryId,
    required this.categoryName,
    this.description,
    this.numberOfVariants,
    required this.media,
    required this.variants,
    required this.attributes,
    required this.olfactoryFamilies,
    required this.scentNotes,
  }) : super._();
  @override
  ProductResponse rebuild(void Function(ProductResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductResponseBuilder toBuilder() => ProductResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductResponse &&
        id == other.id &&
        name == other.name &&
        gender == other.gender &&
        origin == other.origin &&
        releaseYear == other.releaseYear &&
        brandId == other.brandId &&
        brandName == other.brandName &&
        categoryId == other.categoryId &&
        categoryName == other.categoryName &&
        description == other.description &&
        numberOfVariants == other.numberOfVariants &&
        media == other.media &&
        variants == other.variants &&
        attributes == other.attributes &&
        olfactoryFamilies == other.olfactoryFamilies &&
        scentNotes == other.scentNotes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, releaseYear.hashCode);
    _$hash = $jc(_$hash, brandId.hashCode);
    _$hash = $jc(_$hash, brandName.hashCode);
    _$hash = $jc(_$hash, categoryId.hashCode);
    _$hash = $jc(_$hash, categoryName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, numberOfVariants.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, variants.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, olfactoryFamilies.hashCode);
    _$hash = $jc(_$hash, scentNotes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('gender', gender)
          ..add('origin', origin)
          ..add('releaseYear', releaseYear)
          ..add('brandId', brandId)
          ..add('brandName', brandName)
          ..add('categoryId', categoryId)
          ..add('categoryName', categoryName)
          ..add('description', description)
          ..add('numberOfVariants', numberOfVariants)
          ..add('media', media)
          ..add('variants', variants)
          ..add('attributes', attributes)
          ..add('olfactoryFamilies', olfactoryFamilies)
          ..add('scentNotes', scentNotes))
        .toString();
  }
}

class ProductResponseBuilder
    implements Builder<ProductResponse, ProductResponseBuilder> {
  _$ProductResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Gender? _gender;
  Gender? get gender => _$this._gender;
  set gender(Gender? gender) => _$this._gender = gender;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  int? _releaseYear;
  int? get releaseYear => _$this._releaseYear;
  set releaseYear(int? releaseYear) => _$this._releaseYear = releaseYear;

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

  ListBuilder<MediaResponse>? _media;
  ListBuilder<MediaResponse> get media =>
      _$this._media ??= ListBuilder<MediaResponse>();
  set media(ListBuilder<MediaResponse>? media) => _$this._media = media;

  ListBuilder<ProductVariantResponse>? _variants;
  ListBuilder<ProductVariantResponse> get variants =>
      _$this._variants ??= ListBuilder<ProductVariantResponse>();
  set variants(ListBuilder<ProductVariantResponse>? variants) =>
      _$this._variants = variants;

  ListBuilder<ProductAttributeResponse>? _attributes;
  ListBuilder<ProductAttributeResponse> get attributes =>
      _$this._attributes ??= ListBuilder<ProductAttributeResponse>();
  set attributes(ListBuilder<ProductAttributeResponse>? attributes) =>
      _$this._attributes = attributes;

  ListBuilder<ProductOlfactoryFamilyResponse>? _olfactoryFamilies;
  ListBuilder<ProductOlfactoryFamilyResponse> get olfactoryFamilies =>
      _$this._olfactoryFamilies ??=
          ListBuilder<ProductOlfactoryFamilyResponse>();
  set olfactoryFamilies(
    ListBuilder<ProductOlfactoryFamilyResponse>? olfactoryFamilies,
  ) => _$this._olfactoryFamilies = olfactoryFamilies;

  ListBuilder<ProductScentNoteResponse>? _scentNotes;
  ListBuilder<ProductScentNoteResponse> get scentNotes =>
      _$this._scentNotes ??= ListBuilder<ProductScentNoteResponse>();
  set scentNotes(ListBuilder<ProductScentNoteResponse>? scentNotes) =>
      _$this._scentNotes = scentNotes;

  ProductResponseBuilder() {
    ProductResponse._defaults(this);
  }

  ProductResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _gender = $v.gender;
      _origin = $v.origin;
      _releaseYear = $v.releaseYear;
      _brandId = $v.brandId;
      _brandName = $v.brandName;
      _categoryId = $v.categoryId;
      _categoryName = $v.categoryName;
      _description = $v.description;
      _numberOfVariants = $v.numberOfVariants;
      _media = $v.media.toBuilder();
      _variants = $v.variants.toBuilder();
      _attributes = $v.attributes.toBuilder();
      _olfactoryFamilies = $v.olfactoryFamilies.toBuilder();
      _scentNotes = $v.scentNotes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductResponse other) {
    _$v = other as _$ProductResponse;
  }

  @override
  void update(void Function(ProductResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductResponse build() => _build();

  _$ProductResponse _build() {
    _$ProductResponse _$result;
    try {
      _$result =
          _$v ??
          _$ProductResponse._(
            id: id,
            name: name,
            gender: gender,
            origin: BuiltValueNullFieldError.checkNotNull(
              origin,
              r'ProductResponse',
              'origin',
            ),
            releaseYear: releaseYear,
            brandId: brandId,
            brandName: BuiltValueNullFieldError.checkNotNull(
              brandName,
              r'ProductResponse',
              'brandName',
            ),
            categoryId: categoryId,
            categoryName: BuiltValueNullFieldError.checkNotNull(
              categoryName,
              r'ProductResponse',
              'categoryName',
            ),
            description: description,
            numberOfVariants: numberOfVariants,
            media: media.build(),
            variants: variants.build(),
            attributes: attributes.build(),
            olfactoryFamilies: olfactoryFamilies.build(),
            scentNotes: scentNotes.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        media.build();
        _$failedField = 'variants';
        variants.build();
        _$failedField = 'attributes';
        attributes.build();
        _$failedField = 'olfactoryFamilies';
        olfactoryFamilies.build();
        _$failedField = 'scentNotes';
        scentNotes.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProductResponse',
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
