// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateProductRequest extends UpdateProductRequest {
  @override
  final String name;
  @override
  final int? brandId;
  @override
  final int? categoryId;
  @override
  final String? description;
  @override
  final Gender? gender;
  @override
  final String origin;
  @override
  final int? releaseYear;
  @override
  final BuiltList<int> olfactoryFamilyIds;
  @override
  final BuiltList<ScentNoteDto> scentNotes;
  @override
  final BuiltList<ProductAttributeDto>? attributes;
  @override
  final BuiltList<String>? temporaryMediaIdsToAdd;
  @override
  final BuiltList<String>? mediaIdsToDelete;

  factory _$UpdateProductRequest([
    void Function(UpdateProductRequestBuilder)? updates,
  ]) => (UpdateProductRequestBuilder()..update(updates))._build();

  _$UpdateProductRequest._({
    required this.name,
    this.brandId,
    this.categoryId,
    this.description,
    this.gender,
    required this.origin,
    this.releaseYear,
    required this.olfactoryFamilyIds,
    required this.scentNotes,
    this.attributes,
    this.temporaryMediaIdsToAdd,
    this.mediaIdsToDelete,
  }) : super._();
  @override
  UpdateProductRequest rebuild(
    void Function(UpdateProductRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateProductRequestBuilder toBuilder() =>
      UpdateProductRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateProductRequest &&
        name == other.name &&
        brandId == other.brandId &&
        categoryId == other.categoryId &&
        description == other.description &&
        gender == other.gender &&
        origin == other.origin &&
        releaseYear == other.releaseYear &&
        olfactoryFamilyIds == other.olfactoryFamilyIds &&
        scentNotes == other.scentNotes &&
        attributes == other.attributes &&
        temporaryMediaIdsToAdd == other.temporaryMediaIdsToAdd &&
        mediaIdsToDelete == other.mediaIdsToDelete;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, brandId.hashCode);
    _$hash = $jc(_$hash, categoryId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, releaseYear.hashCode);
    _$hash = $jc(_$hash, olfactoryFamilyIds.hashCode);
    _$hash = $jc(_$hash, scentNotes.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, temporaryMediaIdsToAdd.hashCode);
    _$hash = $jc(_$hash, mediaIdsToDelete.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateProductRequest')
          ..add('name', name)
          ..add('brandId', brandId)
          ..add('categoryId', categoryId)
          ..add('description', description)
          ..add('gender', gender)
          ..add('origin', origin)
          ..add('releaseYear', releaseYear)
          ..add('olfactoryFamilyIds', olfactoryFamilyIds)
          ..add('scentNotes', scentNotes)
          ..add('attributes', attributes)
          ..add('temporaryMediaIdsToAdd', temporaryMediaIdsToAdd)
          ..add('mediaIdsToDelete', mediaIdsToDelete))
        .toString();
  }
}

class UpdateProductRequestBuilder
    implements Builder<UpdateProductRequest, UpdateProductRequestBuilder> {
  _$UpdateProductRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _brandId;
  int? get brandId => _$this._brandId;
  set brandId(int? brandId) => _$this._brandId = brandId;

  int? _categoryId;
  int? get categoryId => _$this._categoryId;
  set categoryId(int? categoryId) => _$this._categoryId = categoryId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  Gender? _gender;
  Gender? get gender => _$this._gender;
  set gender(Gender? gender) => _$this._gender = gender;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  int? _releaseYear;
  int? get releaseYear => _$this._releaseYear;
  set releaseYear(int? releaseYear) => _$this._releaseYear = releaseYear;

  ListBuilder<int>? _olfactoryFamilyIds;
  ListBuilder<int> get olfactoryFamilyIds =>
      _$this._olfactoryFamilyIds ??= ListBuilder<int>();
  set olfactoryFamilyIds(ListBuilder<int>? olfactoryFamilyIds) =>
      _$this._olfactoryFamilyIds = olfactoryFamilyIds;

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

  ListBuilder<String>? _temporaryMediaIdsToAdd;
  ListBuilder<String> get temporaryMediaIdsToAdd =>
      _$this._temporaryMediaIdsToAdd ??= ListBuilder<String>();
  set temporaryMediaIdsToAdd(ListBuilder<String>? temporaryMediaIdsToAdd) =>
      _$this._temporaryMediaIdsToAdd = temporaryMediaIdsToAdd;

  ListBuilder<String>? _mediaIdsToDelete;
  ListBuilder<String> get mediaIdsToDelete =>
      _$this._mediaIdsToDelete ??= ListBuilder<String>();
  set mediaIdsToDelete(ListBuilder<String>? mediaIdsToDelete) =>
      _$this._mediaIdsToDelete = mediaIdsToDelete;

  UpdateProductRequestBuilder() {
    UpdateProductRequest._defaults(this);
  }

  UpdateProductRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _brandId = $v.brandId;
      _categoryId = $v.categoryId;
      _description = $v.description;
      _gender = $v.gender;
      _origin = $v.origin;
      _releaseYear = $v.releaseYear;
      _olfactoryFamilyIds = $v.olfactoryFamilyIds.toBuilder();
      _scentNotes = $v.scentNotes.toBuilder();
      _attributes = $v.attributes?.toBuilder();
      _temporaryMediaIdsToAdd = $v.temporaryMediaIdsToAdd?.toBuilder();
      _mediaIdsToDelete = $v.mediaIdsToDelete?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateProductRequest other) {
    _$v = other as _$UpdateProductRequest;
  }

  @override
  void update(void Function(UpdateProductRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateProductRequest build() => _build();

  _$UpdateProductRequest _build() {
    _$UpdateProductRequest _$result;
    try {
      _$result =
          _$v ??
          _$UpdateProductRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'UpdateProductRequest',
              'name',
            ),
            brandId: brandId,
            categoryId: categoryId,
            description: description,
            gender: gender,
            origin: BuiltValueNullFieldError.checkNotNull(
              origin,
              r'UpdateProductRequest',
              'origin',
            ),
            releaseYear: releaseYear,
            olfactoryFamilyIds: olfactoryFamilyIds.build(),
            scentNotes: scentNotes.build(),
            attributes: _attributes?.build(),
            temporaryMediaIdsToAdd: _temporaryMediaIdsToAdd?.build(),
            mediaIdsToDelete: _mediaIdsToDelete?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'olfactoryFamilyIds';
        olfactoryFamilyIds.build();
        _$failedField = 'scentNotes';
        scentNotes.build();
        _$failedField = 'attributes';
        _attributes?.build();
        _$failedField = 'temporaryMediaIdsToAdd';
        _temporaryMediaIdsToAdd?.build();
        _$failedField = 'mediaIdsToDelete';
        _mediaIdsToDelete?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UpdateProductRequest',
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
