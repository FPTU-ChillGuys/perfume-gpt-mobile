// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateProductRequest extends CreateProductRequest {
  @override
  final String name;
  @override
  final int? brandId;
  @override
  final int? categoryId;
  @override
  final Gender? gender;
  @override
  final String origin;
  @override
  final int? releaseYear;
  @override
  final String? description;
  @override
  final BuiltList<int> olfactoryFamilyIds;
  @override
  final BuiltList<String>? temporaryMediaIds;
  @override
  final BuiltList<ScentNoteDto> scentNotes;
  @override
  final BuiltList<ProductAttributeDto>? attributes;

  factory _$CreateProductRequest([
    void Function(CreateProductRequestBuilder)? updates,
  ]) => (CreateProductRequestBuilder()..update(updates))._build();

  _$CreateProductRequest._({
    required this.name,
    this.brandId,
    this.categoryId,
    this.gender,
    required this.origin,
    this.releaseYear,
    this.description,
    required this.olfactoryFamilyIds,
    this.temporaryMediaIds,
    required this.scentNotes,
    this.attributes,
  }) : super._();
  @override
  CreateProductRequest rebuild(
    void Function(CreateProductRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateProductRequestBuilder toBuilder() =>
      CreateProductRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateProductRequest &&
        name == other.name &&
        brandId == other.brandId &&
        categoryId == other.categoryId &&
        gender == other.gender &&
        origin == other.origin &&
        releaseYear == other.releaseYear &&
        description == other.description &&
        olfactoryFamilyIds == other.olfactoryFamilyIds &&
        temporaryMediaIds == other.temporaryMediaIds &&
        scentNotes == other.scentNotes &&
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, brandId.hashCode);
    _$hash = $jc(_$hash, categoryId.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, releaseYear.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, olfactoryFamilyIds.hashCode);
    _$hash = $jc(_$hash, temporaryMediaIds.hashCode);
    _$hash = $jc(_$hash, scentNotes.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateProductRequest')
          ..add('name', name)
          ..add('brandId', brandId)
          ..add('categoryId', categoryId)
          ..add('gender', gender)
          ..add('origin', origin)
          ..add('releaseYear', releaseYear)
          ..add('description', description)
          ..add('olfactoryFamilyIds', olfactoryFamilyIds)
          ..add('temporaryMediaIds', temporaryMediaIds)
          ..add('scentNotes', scentNotes)
          ..add('attributes', attributes))
        .toString();
  }
}

class CreateProductRequestBuilder
    implements Builder<CreateProductRequest, CreateProductRequestBuilder> {
  _$CreateProductRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _brandId;
  int? get brandId => _$this._brandId;
  set brandId(int? brandId) => _$this._brandId = brandId;

  int? _categoryId;
  int? get categoryId => _$this._categoryId;
  set categoryId(int? categoryId) => _$this._categoryId = categoryId;

  Gender? _gender;
  Gender? get gender => _$this._gender;
  set gender(Gender? gender) => _$this._gender = gender;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  int? _releaseYear;
  int? get releaseYear => _$this._releaseYear;
  set releaseYear(int? releaseYear) => _$this._releaseYear = releaseYear;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<int>? _olfactoryFamilyIds;
  ListBuilder<int> get olfactoryFamilyIds =>
      _$this._olfactoryFamilyIds ??= ListBuilder<int>();
  set olfactoryFamilyIds(ListBuilder<int>? olfactoryFamilyIds) =>
      _$this._olfactoryFamilyIds = olfactoryFamilyIds;

  ListBuilder<String>? _temporaryMediaIds;
  ListBuilder<String> get temporaryMediaIds =>
      _$this._temporaryMediaIds ??= ListBuilder<String>();
  set temporaryMediaIds(ListBuilder<String>? temporaryMediaIds) =>
      _$this._temporaryMediaIds = temporaryMediaIds;

  ListBuilder<ScentNoteDto>? _scentNotes;
  ListBuilder<ScentNoteDto> get scentNotes =>
      _$this._scentNotes ??= ListBuilder<ScentNoteDto>();
  set scentNotes(ListBuilder<ScentNoteDto>? scentNotes) =>
      _$this._scentNotes = scentNotes;

  ListBuilder<ProductAttributeDto>? _attributes;
  ListBuilder<ProductAttributeDto> get attributes =>
      _$this._attributes ??= ListBuilder<ProductAttributeDto>();
  set attributes(ListBuilder<ProductAttributeDto>? attributes) =>
      _$this._attributes = attributes;

  CreateProductRequestBuilder() {
    CreateProductRequest._defaults(this);
  }

  CreateProductRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _brandId = $v.brandId;
      _categoryId = $v.categoryId;
      _gender = $v.gender;
      _origin = $v.origin;
      _releaseYear = $v.releaseYear;
      _description = $v.description;
      _olfactoryFamilyIds = $v.olfactoryFamilyIds.toBuilder();
      _temporaryMediaIds = $v.temporaryMediaIds?.toBuilder();
      _scentNotes = $v.scentNotes.toBuilder();
      _attributes = $v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateProductRequest other) {
    _$v = other as _$CreateProductRequest;
  }

  @override
  void update(void Function(CreateProductRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateProductRequest build() => _build();

  _$CreateProductRequest _build() {
    _$CreateProductRequest _$result;
    try {
      _$result =
          _$v ??
          _$CreateProductRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'CreateProductRequest',
              'name',
            ),
            brandId: brandId,
            categoryId: categoryId,
            gender: gender,
            origin: BuiltValueNullFieldError.checkNotNull(
              origin,
              r'CreateProductRequest',
              'origin',
            ),
            releaseYear: releaseYear,
            description: description,
            olfactoryFamilyIds: olfactoryFamilyIds.build(),
            temporaryMediaIds: _temporaryMediaIds?.build(),
            scentNotes: scentNotes.build(),
            attributes: _attributes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'olfactoryFamilyIds';
        olfactoryFamilyIds.build();
        _$failedField = 'temporaryMediaIds';
        _temporaryMediaIds?.build();
        _$failedField = 'scentNotes';
        scentNotes.build();
        _$failedField = 'attributes';
        _attributes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CreateProductRequest',
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
