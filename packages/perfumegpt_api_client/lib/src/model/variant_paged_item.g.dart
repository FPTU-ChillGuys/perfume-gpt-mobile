// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_paged_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VariantPagedItem extends VariantPagedItem {
  @override
  final String? id;
  @override
  final String? productId;
  @override
  final String? primaryImageUrl;
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
  final BuiltList<ProductAttributeResponse>? attributes;

  factory _$VariantPagedItem([
    void Function(VariantPagedItemBuilder)? updates,
  ]) => (VariantPagedItemBuilder()..update(updates))._build();

  _$VariantPagedItem._({
    this.id,
    this.productId,
    this.primaryImageUrl,
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
    this.attributes,
  }) : super._();
  @override
  VariantPagedItem rebuild(void Function(VariantPagedItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VariantPagedItemBuilder toBuilder() =>
      VariantPagedItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VariantPagedItem &&
        id == other.id &&
        productId == other.productId &&
        primaryImageUrl == other.primaryImageUrl &&
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
        attributes == other.attributes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, primaryImageUrl.hashCode);
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
    _$hash = $jc(_$hash, attributes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VariantPagedItem')
          ..add('id', id)
          ..add('productId', productId)
          ..add('primaryImageUrl', primaryImageUrl)
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
          ..add('attributes', attributes))
        .toString();
  }
}

class VariantPagedItemBuilder
    implements Builder<VariantPagedItem, VariantPagedItemBuilder> {
  _$VariantPagedItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _primaryImageUrl;
  String? get primaryImageUrl => _$this._primaryImageUrl;
  set primaryImageUrl(String? primaryImageUrl) =>
      _$this._primaryImageUrl = primaryImageUrl;

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

  ListBuilder<ProductAttributeResponse>? _attributes;
  ListBuilder<ProductAttributeResponse> get attributes =>
      _$this._attributes ??= ListBuilder<ProductAttributeResponse>();
  set attributes(ListBuilder<ProductAttributeResponse>? attributes) =>
      _$this._attributes = attributes;

  VariantPagedItemBuilder() {
    VariantPagedItem._defaults(this);
  }

  VariantPagedItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _productId = $v.productId;
      _primaryImageUrl = $v.primaryImageUrl;
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
      _attributes = $v.attributes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VariantPagedItem other) {
    _$v = other as _$VariantPagedItem;
  }

  @override
  void update(void Function(VariantPagedItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VariantPagedItem build() => _build();

  _$VariantPagedItem _build() {
    _$VariantPagedItem _$result;
    try {
      _$result =
          _$v ??
          _$VariantPagedItem._(
            id: id,
            productId: productId,
            primaryImageUrl: primaryImageUrl,
            barcode: BuiltValueNullFieldError.checkNotNull(
              barcode,
              r'VariantPagedItem',
              'barcode',
            ),
            sku: BuiltValueNullFieldError.checkNotNull(
              sku,
              r'VariantPagedItem',
              'sku',
            ),
            volumeMl: volumeMl,
            concentrationId: concentrationId,
            concentrationName: BuiltValueNullFieldError.checkNotNull(
              concentrationName,
              r'VariantPagedItem',
              'concentrationName',
            ),
            type: type,
            basePrice: basePrice,
            retailPrice: retailPrice,
            status: status,
            stockQuantity: stockQuantity,
            attributes: _attributes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attributes';
        _attributes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'VariantPagedItem',
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
