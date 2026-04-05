// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_variant_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVariantRequest extends CreateVariantRequest {
  @override
  final String productId;
  @override
  final String barcode;
  @override
  final String sku;
  @override
  final int? volumeMl;
  @override
  final int? concentrationId;
  @override
  final int? sillage;
  @override
  final int? longevity;
  @override
  final VariantType? type;
  @override
  final num? basePrice;
  @override
  final num? retailPrice;
  @override
  final VariantStatus? status;
  @override
  final int? lowStockThreshold;
  @override
  final BuiltList<ProductAttributeDto>? attributes;
  @override
  final BuiltList<String>? temporaryMediaIds;

  factory _$CreateVariantRequest([
    void Function(CreateVariantRequestBuilder)? updates,
  ]) => (CreateVariantRequestBuilder()..update(updates))._build();

  _$CreateVariantRequest._({
    required this.productId,
    required this.barcode,
    required this.sku,
    this.volumeMl,
    this.concentrationId,
    this.sillage,
    this.longevity,
    this.type,
    this.basePrice,
    this.retailPrice,
    this.status,
    this.lowStockThreshold,
    this.attributes,
    this.temporaryMediaIds,
  }) : super._();
  @override
  CreateVariantRequest rebuild(
    void Function(CreateVariantRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateVariantRequestBuilder toBuilder() =>
      CreateVariantRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVariantRequest &&
        productId == other.productId &&
        barcode == other.barcode &&
        sku == other.sku &&
        volumeMl == other.volumeMl &&
        concentrationId == other.concentrationId &&
        sillage == other.sillage &&
        longevity == other.longevity &&
        type == other.type &&
        basePrice == other.basePrice &&
        retailPrice == other.retailPrice &&
        status == other.status &&
        lowStockThreshold == other.lowStockThreshold &&
        attributes == other.attributes &&
        temporaryMediaIds == other.temporaryMediaIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, barcode.hashCode);
    _$hash = $jc(_$hash, sku.hashCode);
    _$hash = $jc(_$hash, volumeMl.hashCode);
    _$hash = $jc(_$hash, concentrationId.hashCode);
    _$hash = $jc(_$hash, sillage.hashCode);
    _$hash = $jc(_$hash, longevity.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, basePrice.hashCode);
    _$hash = $jc(_$hash, retailPrice.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, lowStockThreshold.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jc(_$hash, temporaryMediaIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateVariantRequest')
          ..add('productId', productId)
          ..add('barcode', barcode)
          ..add('sku', sku)
          ..add('volumeMl', volumeMl)
          ..add('concentrationId', concentrationId)
          ..add('sillage', sillage)
          ..add('longevity', longevity)
          ..add('type', type)
          ..add('basePrice', basePrice)
          ..add('retailPrice', retailPrice)
          ..add('status', status)
          ..add('lowStockThreshold', lowStockThreshold)
          ..add('attributes', attributes)
          ..add('temporaryMediaIds', temporaryMediaIds))
        .toString();
  }
}

class CreateVariantRequestBuilder
    implements Builder<CreateVariantRequest, CreateVariantRequestBuilder> {
  _$CreateVariantRequest? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _barcode;
  String? get barcode => _$this._barcode;
  set barcode(String? barcode) => _$this._barcode = barcode;

  String? _sku;
  String? get sku => _$this._sku;
  set sku(String? sku) => _$this._sku = sku;

  int? _volumeMl;
  int? get volumeMl => _$this._volumeMl;
  set volumeMl(int? volumeMl) => _$this._volumeMl = volumeMl;

  int? _concentrationId;
  int? get concentrationId => _$this._concentrationId;
  set concentrationId(int? concentrationId) =>
      _$this._concentrationId = concentrationId;

  int? _sillage;
  int? get sillage => _$this._sillage;
  set sillage(int? sillage) => _$this._sillage = sillage;

  int? _longevity;
  int? get longevity => _$this._longevity;
  set longevity(int? longevity) => _$this._longevity = longevity;

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

  int? _lowStockThreshold;
  int? get lowStockThreshold => _$this._lowStockThreshold;
  set lowStockThreshold(int? lowStockThreshold) =>
      _$this._lowStockThreshold = lowStockThreshold;

  ListBuilder<ProductAttributeDto>? _attributes;
  ListBuilder<ProductAttributeDto> get attributes =>
      _$this._attributes ??= ListBuilder<ProductAttributeDto>();
  set attributes(ListBuilder<ProductAttributeDto>? attributes) =>
      _$this._attributes = attributes;

  ListBuilder<String>? _temporaryMediaIds;
  ListBuilder<String> get temporaryMediaIds =>
      _$this._temporaryMediaIds ??= ListBuilder<String>();
  set temporaryMediaIds(ListBuilder<String>? temporaryMediaIds) =>
      _$this._temporaryMediaIds = temporaryMediaIds;

  CreateVariantRequestBuilder() {
    CreateVariantRequest._defaults(this);
  }

  CreateVariantRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _barcode = $v.barcode;
      _sku = $v.sku;
      _volumeMl = $v.volumeMl;
      _concentrationId = $v.concentrationId;
      _sillage = $v.sillage;
      _longevity = $v.longevity;
      _type = $v.type;
      _basePrice = $v.basePrice;
      _retailPrice = $v.retailPrice;
      _status = $v.status;
      _lowStockThreshold = $v.lowStockThreshold;
      _attributes = $v.attributes?.toBuilder();
      _temporaryMediaIds = $v.temporaryMediaIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVariantRequest other) {
    _$v = other as _$CreateVariantRequest;
  }

  @override
  void update(void Function(CreateVariantRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVariantRequest build() => _build();

  _$CreateVariantRequest _build() {
    _$CreateVariantRequest _$result;
    try {
      _$result =
          _$v ??
          _$CreateVariantRequest._(
            productId: BuiltValueNullFieldError.checkNotNull(
              productId,
              r'CreateVariantRequest',
              'productId',
            ),
            barcode: BuiltValueNullFieldError.checkNotNull(
              barcode,
              r'CreateVariantRequest',
              'barcode',
            ),
            sku: BuiltValueNullFieldError.checkNotNull(
              sku,
              r'CreateVariantRequest',
              'sku',
            ),
            volumeMl: volumeMl,
            concentrationId: concentrationId,
            sillage: sillage,
            longevity: longevity,
            type: type,
            basePrice: basePrice,
            retailPrice: retailPrice,
            status: status,
            lowStockThreshold: lowStockThreshold,
            attributes: _attributes?.build(),
            temporaryMediaIds: _temporaryMediaIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();
        _$failedField = 'temporaryMediaIds';
        _temporaryMediaIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CreateVariantRequest',
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
