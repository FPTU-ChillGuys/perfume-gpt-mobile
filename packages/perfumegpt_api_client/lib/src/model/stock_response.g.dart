// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StockResponse extends StockResponse {
  @override
  final String? id;
  @override
  final String? variantId;
  @override
  final String variantSku;
  @override
  final String productName;
  @override
  final String variantImageUrl;
  @override
  final int? volumeMl;
  @override
  final String concentrationName;
  @override
  final int? totalQuantity;
  @override
  final int? availableQuantity;
  @override
  final int? lowStockThreshold;
  @override
  final StockStatus? status;

  factory _$StockResponse([void Function(StockResponseBuilder)? updates]) =>
      (StockResponseBuilder()..update(updates))._build();

  _$StockResponse._({
    this.id,
    this.variantId,
    required this.variantSku,
    required this.productName,
    required this.variantImageUrl,
    this.volumeMl,
    required this.concentrationName,
    this.totalQuantity,
    this.availableQuantity,
    this.lowStockThreshold,
    this.status,
  }) : super._();
  @override
  StockResponse rebuild(void Function(StockResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StockResponseBuilder toBuilder() => StockResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StockResponse &&
        id == other.id &&
        variantId == other.variantId &&
        variantSku == other.variantSku &&
        productName == other.productName &&
        variantImageUrl == other.variantImageUrl &&
        volumeMl == other.volumeMl &&
        concentrationName == other.concentrationName &&
        totalQuantity == other.totalQuantity &&
        availableQuantity == other.availableQuantity &&
        lowStockThreshold == other.lowStockThreshold &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, variantSku.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, variantImageUrl.hashCode);
    _$hash = $jc(_$hash, volumeMl.hashCode);
    _$hash = $jc(_$hash, concentrationName.hashCode);
    _$hash = $jc(_$hash, totalQuantity.hashCode);
    _$hash = $jc(_$hash, availableQuantity.hashCode);
    _$hash = $jc(_$hash, lowStockThreshold.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StockResponse')
          ..add('id', id)
          ..add('variantId', variantId)
          ..add('variantSku', variantSku)
          ..add('productName', productName)
          ..add('variantImageUrl', variantImageUrl)
          ..add('volumeMl', volumeMl)
          ..add('concentrationName', concentrationName)
          ..add('totalQuantity', totalQuantity)
          ..add('availableQuantity', availableQuantity)
          ..add('lowStockThreshold', lowStockThreshold)
          ..add('status', status))
        .toString();
  }
}

class StockResponseBuilder
    implements Builder<StockResponse, StockResponseBuilder> {
  _$StockResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  String? _variantSku;
  String? get variantSku => _$this._variantSku;
  set variantSku(String? variantSku) => _$this._variantSku = variantSku;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  String? _variantImageUrl;
  String? get variantImageUrl => _$this._variantImageUrl;
  set variantImageUrl(String? variantImageUrl) =>
      _$this._variantImageUrl = variantImageUrl;

  int? _volumeMl;
  int? get volumeMl => _$this._volumeMl;
  set volumeMl(int? volumeMl) => _$this._volumeMl = volumeMl;

  String? _concentrationName;
  String? get concentrationName => _$this._concentrationName;
  set concentrationName(String? concentrationName) =>
      _$this._concentrationName = concentrationName;

  int? _totalQuantity;
  int? get totalQuantity => _$this._totalQuantity;
  set totalQuantity(int? totalQuantity) =>
      _$this._totalQuantity = totalQuantity;

  int? _availableQuantity;
  int? get availableQuantity => _$this._availableQuantity;
  set availableQuantity(int? availableQuantity) =>
      _$this._availableQuantity = availableQuantity;

  int? _lowStockThreshold;
  int? get lowStockThreshold => _$this._lowStockThreshold;
  set lowStockThreshold(int? lowStockThreshold) =>
      _$this._lowStockThreshold = lowStockThreshold;

  StockStatus? _status;
  StockStatus? get status => _$this._status;
  set status(StockStatus? status) => _$this._status = status;

  StockResponseBuilder() {
    StockResponse._defaults(this);
  }

  StockResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _variantId = $v.variantId;
      _variantSku = $v.variantSku;
      _productName = $v.productName;
      _variantImageUrl = $v.variantImageUrl;
      _volumeMl = $v.volumeMl;
      _concentrationName = $v.concentrationName;
      _totalQuantity = $v.totalQuantity;
      _availableQuantity = $v.availableQuantity;
      _lowStockThreshold = $v.lowStockThreshold;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StockResponse other) {
    _$v = other as _$StockResponse;
  }

  @override
  void update(void Function(StockResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StockResponse build() => _build();

  _$StockResponse _build() {
    final _$result =
        _$v ??
        _$StockResponse._(
          id: id,
          variantId: variantId,
          variantSku: BuiltValueNullFieldError.checkNotNull(
            variantSku,
            r'StockResponse',
            'variantSku',
          ),
          productName: BuiltValueNullFieldError.checkNotNull(
            productName,
            r'StockResponse',
            'productName',
          ),
          variantImageUrl: BuiltValueNullFieldError.checkNotNull(
            variantImageUrl,
            r'StockResponse',
            'variantImageUrl',
          ),
          volumeMl: volumeMl,
          concentrationName: BuiltValueNullFieldError.checkNotNull(
            concentrationName,
            r'StockResponse',
            'concentrationName',
          ),
          totalQuantity: totalQuantity,
          availableQuantity: availableQuantity,
          lowStockThreshold: lowStockThreshold,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
