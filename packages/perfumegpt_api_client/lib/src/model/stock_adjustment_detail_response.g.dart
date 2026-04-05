// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_adjustment_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StockAdjustmentDetailResponse extends StockAdjustmentDetailResponse {
  @override
  final String? id;
  @override
  final String? productVariantId;
  @override
  final String productName;
  @override
  final String variantSku;
  @override
  final String? batchId;
  @override
  final String batchCode;
  @override
  final int? adjustmentQuantity;
  @override
  final int? approvedQuantity;
  @override
  final String? note;

  factory _$StockAdjustmentDetailResponse([
    void Function(StockAdjustmentDetailResponseBuilder)? updates,
  ]) => (StockAdjustmentDetailResponseBuilder()..update(updates))._build();

  _$StockAdjustmentDetailResponse._({
    this.id,
    this.productVariantId,
    required this.productName,
    required this.variantSku,
    this.batchId,
    required this.batchCode,
    this.adjustmentQuantity,
    this.approvedQuantity,
    this.note,
  }) : super._();
  @override
  StockAdjustmentDetailResponse rebuild(
    void Function(StockAdjustmentDetailResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StockAdjustmentDetailResponseBuilder toBuilder() =>
      StockAdjustmentDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StockAdjustmentDetailResponse &&
        id == other.id &&
        productVariantId == other.productVariantId &&
        productName == other.productName &&
        variantSku == other.variantSku &&
        batchId == other.batchId &&
        batchCode == other.batchCode &&
        adjustmentQuantity == other.adjustmentQuantity &&
        approvedQuantity == other.approvedQuantity &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, productVariantId.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, variantSku.hashCode);
    _$hash = $jc(_$hash, batchId.hashCode);
    _$hash = $jc(_$hash, batchCode.hashCode);
    _$hash = $jc(_$hash, adjustmentQuantity.hashCode);
    _$hash = $jc(_$hash, approvedQuantity.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StockAdjustmentDetailResponse')
          ..add('id', id)
          ..add('productVariantId', productVariantId)
          ..add('productName', productName)
          ..add('variantSku', variantSku)
          ..add('batchId', batchId)
          ..add('batchCode', batchCode)
          ..add('adjustmentQuantity', adjustmentQuantity)
          ..add('approvedQuantity', approvedQuantity)
          ..add('note', note))
        .toString();
  }
}

class StockAdjustmentDetailResponseBuilder
    implements
        Builder<
          StockAdjustmentDetailResponse,
          StockAdjustmentDetailResponseBuilder
        > {
  _$StockAdjustmentDetailResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _productVariantId;
  String? get productVariantId => _$this._productVariantId;
  set productVariantId(String? productVariantId) =>
      _$this._productVariantId = productVariantId;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  String? _variantSku;
  String? get variantSku => _$this._variantSku;
  set variantSku(String? variantSku) => _$this._variantSku = variantSku;

  String? _batchId;
  String? get batchId => _$this._batchId;
  set batchId(String? batchId) => _$this._batchId = batchId;

  String? _batchCode;
  String? get batchCode => _$this._batchCode;
  set batchCode(String? batchCode) => _$this._batchCode = batchCode;

  int? _adjustmentQuantity;
  int? get adjustmentQuantity => _$this._adjustmentQuantity;
  set adjustmentQuantity(int? adjustmentQuantity) =>
      _$this._adjustmentQuantity = adjustmentQuantity;

  int? _approvedQuantity;
  int? get approvedQuantity => _$this._approvedQuantity;
  set approvedQuantity(int? approvedQuantity) =>
      _$this._approvedQuantity = approvedQuantity;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  StockAdjustmentDetailResponseBuilder() {
    StockAdjustmentDetailResponse._defaults(this);
  }

  StockAdjustmentDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _productVariantId = $v.productVariantId;
      _productName = $v.productName;
      _variantSku = $v.variantSku;
      _batchId = $v.batchId;
      _batchCode = $v.batchCode;
      _adjustmentQuantity = $v.adjustmentQuantity;
      _approvedQuantity = $v.approvedQuantity;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StockAdjustmentDetailResponse other) {
    _$v = other as _$StockAdjustmentDetailResponse;
  }

  @override
  void update(void Function(StockAdjustmentDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StockAdjustmentDetailResponse build() => _build();

  _$StockAdjustmentDetailResponse _build() {
    final _$result =
        _$v ??
        _$StockAdjustmentDetailResponse._(
          id: id,
          productVariantId: productVariantId,
          productName: BuiltValueNullFieldError.checkNotNull(
            productName,
            r'StockAdjustmentDetailResponse',
            'productName',
          ),
          variantSku: BuiltValueNullFieldError.checkNotNull(
            variantSku,
            r'StockAdjustmentDetailResponse',
            'variantSku',
          ),
          batchId: batchId,
          batchCode: BuiltValueNullFieldError.checkNotNull(
            batchCode,
            r'StockAdjustmentDetailResponse',
            'batchCode',
          ),
          adjustmentQuantity: adjustmentQuantity,
          approvedQuantity: approvedQuantity,
          note: note,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
