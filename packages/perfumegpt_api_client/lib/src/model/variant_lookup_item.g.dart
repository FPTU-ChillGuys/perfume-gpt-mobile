// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_lookup_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VariantLookupItem extends VariantLookupItem {
  @override
  final String? id;
  @override
  final String barcode;
  @override
  final String sku;
  @override
  final String displayName;
  @override
  final int? volumeMl;
  @override
  final String concentrationName;
  @override
  final num? basePrice;
  @override
  final String? primaryImageUrl;

  factory _$VariantLookupItem([
    void Function(VariantLookupItemBuilder)? updates,
  ]) => (VariantLookupItemBuilder()..update(updates))._build();

  _$VariantLookupItem._({
    this.id,
    required this.barcode,
    required this.sku,
    required this.displayName,
    this.volumeMl,
    required this.concentrationName,
    this.basePrice,
    this.primaryImageUrl,
  }) : super._();
  @override
  VariantLookupItem rebuild(void Function(VariantLookupItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VariantLookupItemBuilder toBuilder() =>
      VariantLookupItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VariantLookupItem &&
        id == other.id &&
        barcode == other.barcode &&
        sku == other.sku &&
        displayName == other.displayName &&
        volumeMl == other.volumeMl &&
        concentrationName == other.concentrationName &&
        basePrice == other.basePrice &&
        primaryImageUrl == other.primaryImageUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, barcode.hashCode);
    _$hash = $jc(_$hash, sku.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, volumeMl.hashCode);
    _$hash = $jc(_$hash, concentrationName.hashCode);
    _$hash = $jc(_$hash, basePrice.hashCode);
    _$hash = $jc(_$hash, primaryImageUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VariantLookupItem')
          ..add('id', id)
          ..add('barcode', barcode)
          ..add('sku', sku)
          ..add('displayName', displayName)
          ..add('volumeMl', volumeMl)
          ..add('concentrationName', concentrationName)
          ..add('basePrice', basePrice)
          ..add('primaryImageUrl', primaryImageUrl))
        .toString();
  }
}

class VariantLookupItemBuilder
    implements Builder<VariantLookupItem, VariantLookupItemBuilder> {
  _$VariantLookupItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _barcode;
  String? get barcode => _$this._barcode;
  set barcode(String? barcode) => _$this._barcode = barcode;

  String? _sku;
  String? get sku => _$this._sku;
  set sku(String? sku) => _$this._sku = sku;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  int? _volumeMl;
  int? get volumeMl => _$this._volumeMl;
  set volumeMl(int? volumeMl) => _$this._volumeMl = volumeMl;

  String? _concentrationName;
  String? get concentrationName => _$this._concentrationName;
  set concentrationName(String? concentrationName) =>
      _$this._concentrationName = concentrationName;

  num? _basePrice;
  num? get basePrice => _$this._basePrice;
  set basePrice(num? basePrice) => _$this._basePrice = basePrice;

  String? _primaryImageUrl;
  String? get primaryImageUrl => _$this._primaryImageUrl;
  set primaryImageUrl(String? primaryImageUrl) =>
      _$this._primaryImageUrl = primaryImageUrl;

  VariantLookupItemBuilder() {
    VariantLookupItem._defaults(this);
  }

  VariantLookupItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _barcode = $v.barcode;
      _sku = $v.sku;
      _displayName = $v.displayName;
      _volumeMl = $v.volumeMl;
      _concentrationName = $v.concentrationName;
      _basePrice = $v.basePrice;
      _primaryImageUrl = $v.primaryImageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VariantLookupItem other) {
    _$v = other as _$VariantLookupItem;
  }

  @override
  void update(void Function(VariantLookupItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VariantLookupItem build() => _build();

  _$VariantLookupItem _build() {
    final _$result =
        _$v ??
        _$VariantLookupItem._(
          id: id,
          barcode: BuiltValueNullFieldError.checkNotNull(
            barcode,
            r'VariantLookupItem',
            'barcode',
          ),
          sku: BuiltValueNullFieldError.checkNotNull(
            sku,
            r'VariantLookupItem',
            'sku',
          ),
          displayName: BuiltValueNullFieldError.checkNotNull(
            displayName,
            r'VariantLookupItem',
            'displayName',
          ),
          volumeMl: volumeMl,
          concentrationName: BuiltValueNullFieldError.checkNotNull(
            concentrationName,
            r'VariantLookupItem',
            'concentrationName',
          ),
          basePrice: basePrice,
          primaryImageUrl: primaryImageUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
