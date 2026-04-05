// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_variant_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateVariantRequest extends UpdateVariantRequest {
  @override
  final String sku;
  @override
  final String barcode;
  @override
  final int? volumeMl;
  @override
  final int? concentrationId;
  @override
  final VariantType? type;
  @override
  final num? basePrice;
  @override
  final num? retailPrice;
  @override
  final VariantStatus? status;
  @override
  final int? sillage;
  @override
  final int? longevity;
  @override
  final BuiltList<String>? mediaIdsToDelete;
  @override
  final BuiltList<String>? temporaryMediaIdsToAdd;
  @override
  final BuiltList<ProductAttributeDto>? attributes;

  factory _$UpdateVariantRequest([
    void Function(UpdateVariantRequestBuilder)? updates,
  ]) => (UpdateVariantRequestBuilder()..update(updates))._build();

  _$UpdateVariantRequest._({
    required this.sku,
    required this.barcode,
    this.volumeMl,
    this.concentrationId,
    this.type,
    this.basePrice,
    this.retailPrice,
    this.status,
    this.sillage,
    this.longevity,
    this.mediaIdsToDelete,
    this.temporaryMediaIdsToAdd,
    this.attributes,
  }) : super._();
  @override
  UpdateVariantRequest rebuild(
    void Function(UpdateVariantRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateVariantRequestBuilder toBuilder() =>
      UpdateVariantRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateVariantRequest &&
        sku == other.sku &&
        barcode == other.barcode &&
        volumeMl == other.volumeMl &&
        concentrationId == other.concentrationId &&
        type == other.type &&
        basePrice == other.basePrice &&
        retailPrice == other.retailPrice &&
        status == other.status &&
        sillage == other.sillage &&
        longevity == other.longevity &&
        mediaIdsToDelete == other.mediaIdsToDelete &&
        temporaryMediaIdsToAdd == other.temporaryMediaIdsToAdd &&
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sku.hashCode);
    _$hash = $jc(_$hash, barcode.hashCode);
    _$hash = $jc(_$hash, volumeMl.hashCode);
    _$hash = $jc(_$hash, concentrationId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, basePrice.hashCode);
    _$hash = $jc(_$hash, retailPrice.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, sillage.hashCode);
    _$hash = $jc(_$hash, longevity.hashCode);
    _$hash = $jc(_$hash, mediaIdsToDelete.hashCode);
    _$hash = $jc(_$hash, temporaryMediaIdsToAdd.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateVariantRequest')
          ..add('sku', sku)
          ..add('barcode', barcode)
          ..add('volumeMl', volumeMl)
          ..add('concentrationId', concentrationId)
          ..add('type', type)
          ..add('basePrice', basePrice)
          ..add('retailPrice', retailPrice)
          ..add('status', status)
          ..add('sillage', sillage)
          ..add('longevity', longevity)
          ..add('mediaIdsToDelete', mediaIdsToDelete)
          ..add('temporaryMediaIdsToAdd', temporaryMediaIdsToAdd)
          ..add('attributes', attributes))
        .toString();
  }
}

class UpdateVariantRequestBuilder
    implements Builder<UpdateVariantRequest, UpdateVariantRequestBuilder> {
  _$UpdateVariantRequest? _$v;

  String? _sku;
  String? get sku => _$this._sku;
  set sku(String? sku) => _$this._sku = sku;

  String? _barcode;
  String? get barcode => _$this._barcode;
  set barcode(String? barcode) => _$this._barcode = barcode;

  int? _volumeMl;
  int? get volumeMl => _$this._volumeMl;
  set volumeMl(int? volumeMl) => _$this._volumeMl = volumeMl;

  int? _concentrationId;
  int? get concentrationId => _$this._concentrationId;
  set concentrationId(int? concentrationId) =>
      _$this._concentrationId = concentrationId;

  VariantType? _type;
  VariantType? get type => _$this._type;
  set type(VariantType? type) => _$this._type = type;

  num? _basePrice;
  num? get basePrice => _$this._basePrice;
  set basePrice(num? basePrice) => _$this._basePrice = basePrice;

  num? _retailPrice;
  num? get retailPrice => _$this._retailPrice;
  set retailPrice(num? retailPrice) => _$this._retailPrice = retailPrice;

  VariantStatus? _status;
  VariantStatus? get status => _$this._status;
  set status(VariantStatus? status) => _$this._status = status;

  int? _sillage;
  int? get sillage => _$this._sillage;
  set sillage(int? sillage) => _$this._sillage = sillage;

  int? _longevity;
  int? get longevity => _$this._longevity;
  set longevity(int? longevity) => _$this._longevity = longevity;

  ListBuilder<String>? _mediaIdsToDelete;
  ListBuilder<String> get mediaIdsToDelete =>
      _$this._mediaIdsToDelete ??= ListBuilder<String>();
  set mediaIdsToDelete(ListBuilder<String>? mediaIdsToDelete) =>
      _$this._mediaIdsToDelete = mediaIdsToDelete;

  ListBuilder<String>? _temporaryMediaIdsToAdd;
  ListBuilder<String> get temporaryMediaIdsToAdd =>
      _$this._temporaryMediaIdsToAdd ??= ListBuilder<String>();
  set temporaryMediaIdsToAdd(ListBuilder<String>? temporaryMediaIdsToAdd) =>
      _$this._temporaryMediaIdsToAdd = temporaryMediaIdsToAdd;

  ListBuilder<ProductAttributeDto>? _attributes;
  ListBuilder<ProductAttributeDto> get attributes =>
      _$this._attributes ??= ListBuilder<ProductAttributeDto>();
  set attributes(ListBuilder<ProductAttributeDto>? attributes) =>
      _$this._attributes = attributes;

  UpdateVariantRequestBuilder() {
    UpdateVariantRequest._defaults(this);
  }

  UpdateVariantRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sku = $v.sku;
      _barcode = $v.barcode;
      _volumeMl = $v.volumeMl;
      _concentrationId = $v.concentrationId;
      _type = $v.type;
      _basePrice = $v.basePrice;
      _retailPrice = $v.retailPrice;
      _status = $v.status;
      _sillage = $v.sillage;
      _longevity = $v.longevity;
      _mediaIdsToDelete = $v.mediaIdsToDelete?.toBuilder();
      _temporaryMediaIdsToAdd = $v.temporaryMediaIdsToAdd?.toBuilder();
      _attributes = $v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateVariantRequest other) {
    _$v = other as _$UpdateVariantRequest;
  }

  @override
  void update(void Function(UpdateVariantRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateVariantRequest build() => _build();

  _$UpdateVariantRequest _build() {
    _$UpdateVariantRequest _$result;
    try {
      _$result =
          _$v ??
          _$UpdateVariantRequest._(
            sku: BuiltValueNullFieldError.checkNotNull(
              sku,
              r'UpdateVariantRequest',
              'sku',
            ),
            barcode: BuiltValueNullFieldError.checkNotNull(
              barcode,
              r'UpdateVariantRequest',
              'barcode',
            ),
            volumeMl: volumeMl,
            concentrationId: concentrationId,
            type: type,
            basePrice: basePrice,
            retailPrice: retailPrice,
            status: status,
            sillage: sillage,
            longevity: longevity,
            mediaIdsToDelete: _mediaIdsToDelete?.build(),
            temporaryMediaIdsToAdd: _temporaryMediaIdsToAdd?.build(),
            attributes: _attributes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaIdsToDelete';
        _mediaIdsToDelete?.build();
        _$failedField = 'temporaryMediaIdsToAdd';
        _temporaryMediaIdsToAdd?.build();
        _$failedField = 'attributes';
        _attributes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UpdateVariantRequest',
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
