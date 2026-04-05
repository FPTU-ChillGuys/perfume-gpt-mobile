// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductVariantResponse extends ProductVariantResponse {
  @override
  final String? id;
  @override
  final String barcode;
  @override
  final String sku;
  @override
  final int? volumeMl;
  @override
  final int? concentrationId;
  @override
  final String concentrationName;
  @override
  final VariantType? type;
  @override
  final num? basePrice;
  @override
  final num? retailPrice;
  @override
  final VariantStatus? status;
  @override
  final int? stockQuantity;
  @override
  final int? sillage;
  @override
  final int? longevity;
  @override
  final String? productId;
  @override
  final String productName;
  @override
  final BuiltList<MediaResponse> media;
  @override
  final String? campaignName;
  @override
  final String? voucherCode;
  @override
  final num? discountedPrice;
  @override
  final BuiltList<ProductAttributeResponse>? attributes;

  factory _$ProductVariantResponse([
    void Function(ProductVariantResponseBuilder)? updates,
  ]) => (ProductVariantResponseBuilder()..update(updates))._build();

  _$ProductVariantResponse._({
    this.id,
    required this.barcode,
    required this.sku,
    this.volumeMl,
    this.concentrationId,
    required this.concentrationName,
    this.type,
    this.basePrice,
    this.retailPrice,
    this.status,
    this.stockQuantity,
    this.sillage,
    this.longevity,
    this.productId,
    required this.productName,
    required this.media,
    this.campaignName,
    this.voucherCode,
    this.discountedPrice,
    this.attributes,
  }) : super._();
  @override
  ProductVariantResponse rebuild(
    void Function(ProductVariantResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProductVariantResponseBuilder toBuilder() =>
      ProductVariantResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductVariantResponse &&
        id == other.id &&
        barcode == other.barcode &&
        sku == other.sku &&
        volumeMl == other.volumeMl &&
        concentrationId == other.concentrationId &&
        concentrationName == other.concentrationName &&
        type == other.type &&
        basePrice == other.basePrice &&
        retailPrice == other.retailPrice &&
        status == other.status &&
        stockQuantity == other.stockQuantity &&
        sillage == other.sillage &&
        longevity == other.longevity &&
        productId == other.productId &&
        productName == other.productName &&
        media == other.media &&
        campaignName == other.campaignName &&
        voucherCode == other.voucherCode &&
        discountedPrice == other.discountedPrice &&
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, barcode.hashCode);
    _$hash = $jc(_$hash, sku.hashCode);
    _$hash = $jc(_$hash, volumeMl.hashCode);
    _$hash = $jc(_$hash, concentrationId.hashCode);
    _$hash = $jc(_$hash, concentrationName.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, basePrice.hashCode);
    _$hash = $jc(_$hash, retailPrice.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, stockQuantity.hashCode);
    _$hash = $jc(_$hash, sillage.hashCode);
    _$hash = $jc(_$hash, longevity.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, campaignName.hashCode);
    _$hash = $jc(_$hash, voucherCode.hashCode);
    _$hash = $jc(_$hash, discountedPrice.hashCode);
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductVariantResponse')
          ..add('id', id)
          ..add('barcode', barcode)
          ..add('sku', sku)
          ..add('volumeMl', volumeMl)
          ..add('concentrationId', concentrationId)
          ..add('concentrationName', concentrationName)
          ..add('type', type)
          ..add('basePrice', basePrice)
          ..add('retailPrice', retailPrice)
          ..add('status', status)
          ..add('stockQuantity', stockQuantity)
          ..add('sillage', sillage)
          ..add('longevity', longevity)
          ..add('productId', productId)
          ..add('productName', productName)
          ..add('media', media)
          ..add('campaignName', campaignName)
          ..add('voucherCode', voucherCode)
          ..add('discountedPrice', discountedPrice)
          ..add('attributes', attributes))
        .toString();
  }
}

class ProductVariantResponseBuilder
    implements Builder<ProductVariantResponse, ProductVariantResponseBuilder> {
  _$ProductVariantResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  String? _concentrationName;
  String? get concentrationName => _$this._concentrationName;
  set concentrationName(String? concentrationName) =>
      _$this._concentrationName = concentrationName;

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

  int? _stockQuantity;
  int? get stockQuantity => _$this._stockQuantity;
  set stockQuantity(int? stockQuantity) =>
      _$this._stockQuantity = stockQuantity;

  int? _sillage;
  int? get sillage => _$this._sillage;
  set sillage(int? sillage) => _$this._sillage = sillage;

  int? _longevity;
  int? get longevity => _$this._longevity;
  set longevity(int? longevity) => _$this._longevity = longevity;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  ListBuilder<MediaResponse>? _media;
  ListBuilder<MediaResponse> get media =>
      _$this._media ??= ListBuilder<MediaResponse>();
  set media(ListBuilder<MediaResponse>? media) => _$this._media = media;

  String? _campaignName;
  String? get campaignName => _$this._campaignName;
  set campaignName(String? campaignName) => _$this._campaignName = campaignName;

  String? _voucherCode;
  String? get voucherCode => _$this._voucherCode;
  set voucherCode(String? voucherCode) => _$this._voucherCode = voucherCode;

  num? _discountedPrice;
  num? get discountedPrice => _$this._discountedPrice;
  set discountedPrice(num? discountedPrice) =>
      _$this._discountedPrice = discountedPrice;

  ListBuilder<ProductAttributeResponse>? _attributes;
  ListBuilder<ProductAttributeResponse> get attributes =>
      _$this._attributes ??= ListBuilder<ProductAttributeResponse>();
  set attributes(ListBuilder<ProductAttributeResponse>? attributes) =>
      _$this._attributes = attributes;

  ProductVariantResponseBuilder() {
    ProductVariantResponse._defaults(this);
  }

  ProductVariantResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _barcode = $v.barcode;
      _sku = $v.sku;
      _volumeMl = $v.volumeMl;
      _concentrationId = $v.concentrationId;
      _concentrationName = $v.concentrationName;
      _type = $v.type;
      _basePrice = $v.basePrice;
      _retailPrice = $v.retailPrice;
      _status = $v.status;
      _stockQuantity = $v.stockQuantity;
      _sillage = $v.sillage;
      _longevity = $v.longevity;
      _productId = $v.productId;
      _productName = $v.productName;
      _media = $v.media.toBuilder();
      _campaignName = $v.campaignName;
      _voucherCode = $v.voucherCode;
      _discountedPrice = $v.discountedPrice;
      _attributes = $v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductVariantResponse other) {
    _$v = other as _$ProductVariantResponse;
  }

  @override
  void update(void Function(ProductVariantResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductVariantResponse build() => _build();

  _$ProductVariantResponse _build() {
    _$ProductVariantResponse _$result;
    try {
      _$result =
          _$v ??
          _$ProductVariantResponse._(
            id: id,
            barcode: BuiltValueNullFieldError.checkNotNull(
              barcode,
              r'ProductVariantResponse',
              'barcode',
            ),
            sku: BuiltValueNullFieldError.checkNotNull(
              sku,
              r'ProductVariantResponse',
              'sku',
            ),
            volumeMl: volumeMl,
            concentrationId: concentrationId,
            concentrationName: BuiltValueNullFieldError.checkNotNull(
              concentrationName,
              r'ProductVariantResponse',
              'concentrationName',
            ),
            type: type,
            basePrice: basePrice,
            retailPrice: retailPrice,
            status: status,
            stockQuantity: stockQuantity,
            sillage: sillage,
            longevity: longevity,
            productId: productId,
            productName: BuiltValueNullFieldError.checkNotNull(
              productName,
              r'ProductVariantResponse',
              'productName',
            ),
            media: media.build(),
            campaignName: campaignName,
            voucherCode: voucherCode,
            discountedPrice: discountedPrice,
            attributes: _attributes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        media.build();

        _$failedField = 'attributes';
        _attributes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProductVariantResponse',
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
