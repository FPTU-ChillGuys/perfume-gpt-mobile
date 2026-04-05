// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchDetailResponse extends BatchDetailResponse {
  @override
  final String? variantId;
  @override
  final String variantSku;
  @override
  final String productName;
  @override
  final int? volumeMl;
  @override
  final String concentrationName;
  @override
  final bool? isExpired;
  @override
  final int? daysUntilExpiry;
  @override
  final String? id;
  @override
  final String batchCode;
  @override
  final DateTime? manufactureDate;
  @override
  final DateTime? expiryDate;
  @override
  final int? importQuantity;
  @override
  final int? remainingQuantity;
  @override
  final DateTime? createdAt;

  factory _$BatchDetailResponse([
    void Function(BatchDetailResponseBuilder)? updates,
  ]) => (BatchDetailResponseBuilder()..update(updates))._build();

  _$BatchDetailResponse._({
    this.variantId,
    required this.variantSku,
    required this.productName,
    this.volumeMl,
    required this.concentrationName,
    this.isExpired,
    this.daysUntilExpiry,
    this.id,
    required this.batchCode,
    this.manufactureDate,
    this.expiryDate,
    this.importQuantity,
    this.remainingQuantity,
    this.createdAt,
  }) : super._();
  @override
  BatchDetailResponse rebuild(
    void Function(BatchDetailResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BatchDetailResponseBuilder toBuilder() =>
      BatchDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchDetailResponse &&
        variantId == other.variantId &&
        variantSku == other.variantSku &&
        productName == other.productName &&
        volumeMl == other.volumeMl &&
        concentrationName == other.concentrationName &&
        isExpired == other.isExpired &&
        daysUntilExpiry == other.daysUntilExpiry &&
        id == other.id &&
        batchCode == other.batchCode &&
        manufactureDate == other.manufactureDate &&
        expiryDate == other.expiryDate &&
        importQuantity == other.importQuantity &&
        remainingQuantity == other.remainingQuantity &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, variantSku.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, volumeMl.hashCode);
    _$hash = $jc(_$hash, concentrationName.hashCode);
    _$hash = $jc(_$hash, isExpired.hashCode);
    _$hash = $jc(_$hash, daysUntilExpiry.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, batchCode.hashCode);
    _$hash = $jc(_$hash, manufactureDate.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jc(_$hash, importQuantity.hashCode);
    _$hash = $jc(_$hash, remainingQuantity.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchDetailResponse')
          ..add('variantId', variantId)
          ..add('variantSku', variantSku)
          ..add('productName', productName)
          ..add('volumeMl', volumeMl)
          ..add('concentrationName', concentrationName)
          ..add('isExpired', isExpired)
          ..add('daysUntilExpiry', daysUntilExpiry)
          ..add('id', id)
          ..add('batchCode', batchCode)
          ..add('manufactureDate', manufactureDate)
          ..add('expiryDate', expiryDate)
          ..add('importQuantity', importQuantity)
          ..add('remainingQuantity', remainingQuantity)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class BatchDetailResponseBuilder
    implements Builder<BatchDetailResponse, BatchDetailResponseBuilder> {
  _$BatchDetailResponse? _$v;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  String? _variantSku;
  String? get variantSku => _$this._variantSku;
  set variantSku(String? variantSku) => _$this._variantSku = variantSku;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  int? _volumeMl;
  int? get volumeMl => _$this._volumeMl;
  set volumeMl(int? volumeMl) => _$this._volumeMl = volumeMl;

  String? _concentrationName;
  String? get concentrationName => _$this._concentrationName;
  set concentrationName(String? concentrationName) =>
      _$this._concentrationName = concentrationName;

  bool? _isExpired;
  bool? get isExpired => _$this._isExpired;
  set isExpired(bool? isExpired) => _$this._isExpired = isExpired;

  int? _daysUntilExpiry;
  int? get daysUntilExpiry => _$this._daysUntilExpiry;
  set daysUntilExpiry(int? daysUntilExpiry) =>
      _$this._daysUntilExpiry = daysUntilExpiry;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _batchCode;
  String? get batchCode => _$this._batchCode;
  set batchCode(String? batchCode) => _$this._batchCode = batchCode;

  DateTime? _manufactureDate;
  DateTime? get manufactureDate => _$this._manufactureDate;
  set manufactureDate(DateTime? manufactureDate) =>
      _$this._manufactureDate = manufactureDate;

  DateTime? _expiryDate;
  DateTime? get expiryDate => _$this._expiryDate;
  set expiryDate(DateTime? expiryDate) => _$this._expiryDate = expiryDate;

  int? _importQuantity;
  int? get importQuantity => _$this._importQuantity;
  set importQuantity(int? importQuantity) =>
      _$this._importQuantity = importQuantity;

  int? _remainingQuantity;
  int? get remainingQuantity => _$this._remainingQuantity;
  set remainingQuantity(int? remainingQuantity) =>
      _$this._remainingQuantity = remainingQuantity;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  BatchDetailResponseBuilder() {
    BatchDetailResponse._defaults(this);
  }

  BatchDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _variantId = $v.variantId;
      _variantSku = $v.variantSku;
      _productName = $v.productName;
      _volumeMl = $v.volumeMl;
      _concentrationName = $v.concentrationName;
      _isExpired = $v.isExpired;
      _daysUntilExpiry = $v.daysUntilExpiry;
      _id = $v.id;
      _batchCode = $v.batchCode;
      _manufactureDate = $v.manufactureDate;
      _expiryDate = $v.expiryDate;
      _importQuantity = $v.importQuantity;
      _remainingQuantity = $v.remainingQuantity;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchDetailResponse other) {
    _$v = other as _$BatchDetailResponse;
  }

  @override
  void update(void Function(BatchDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchDetailResponse build() => _build();

  _$BatchDetailResponse _build() {
    final _$result =
        _$v ??
        _$BatchDetailResponse._(
          variantId: variantId,
          variantSku: BuiltValueNullFieldError.checkNotNull(
            variantSku,
            r'BatchDetailResponse',
            'variantSku',
          ),
          productName: BuiltValueNullFieldError.checkNotNull(
            productName,
            r'BatchDetailResponse',
            'productName',
          ),
          volumeMl: volumeMl,
          concentrationName: BuiltValueNullFieldError.checkNotNull(
            concentrationName,
            r'BatchDetailResponse',
            'concentrationName',
          ),
          isExpired: isExpired,
          daysUntilExpiry: daysUntilExpiry,
          id: id,
          batchCode: BuiltValueNullFieldError.checkNotNull(
            batchCode,
            r'BatchDetailResponse',
            'batchCode',
          ),
          manufactureDate: manufactureDate,
          expiryDate: expiryDate,
          importQuantity: importQuantity,
          remainingQuantity: remainingQuantity,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
