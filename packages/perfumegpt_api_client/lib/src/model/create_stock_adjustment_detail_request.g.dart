// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_stock_adjustment_detail_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateStockAdjustmentDetailRequest
    extends CreateStockAdjustmentDetailRequest {
  @override
  final String variantId;
  @override
  final String batchId;
  @override
  final int? adjustmentQuantity;
  @override
  final String? note;

  factory _$CreateStockAdjustmentDetailRequest([
    void Function(CreateStockAdjustmentDetailRequestBuilder)? updates,
  ]) => (CreateStockAdjustmentDetailRequestBuilder()..update(updates))._build();

  _$CreateStockAdjustmentDetailRequest._({
    required this.variantId,
    required this.batchId,
    this.adjustmentQuantity,
    this.note,
  }) : super._();
  @override
  CreateStockAdjustmentDetailRequest rebuild(
    void Function(CreateStockAdjustmentDetailRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateStockAdjustmentDetailRequestBuilder toBuilder() =>
      CreateStockAdjustmentDetailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStockAdjustmentDetailRequest &&
        variantId == other.variantId &&
        batchId == other.batchId &&
        adjustmentQuantity == other.adjustmentQuantity &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, batchId.hashCode);
    _$hash = $jc(_$hash, adjustmentQuantity.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateStockAdjustmentDetailRequest')
          ..add('variantId', variantId)
          ..add('batchId', batchId)
          ..add('adjustmentQuantity', adjustmentQuantity)
          ..add('note', note))
        .toString();
  }
}

class CreateStockAdjustmentDetailRequestBuilder
    implements
        Builder<
          CreateStockAdjustmentDetailRequest,
          CreateStockAdjustmentDetailRequestBuilder
        > {
  _$CreateStockAdjustmentDetailRequest? _$v;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  String? _batchId;
  String? get batchId => _$this._batchId;
  set batchId(String? batchId) => _$this._batchId = batchId;

  int? _adjustmentQuantity;
  int? get adjustmentQuantity => _$this._adjustmentQuantity;
  set adjustmentQuantity(int? adjustmentQuantity) =>
      _$this._adjustmentQuantity = adjustmentQuantity;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  CreateStockAdjustmentDetailRequestBuilder() {
    CreateStockAdjustmentDetailRequest._defaults(this);
  }

  CreateStockAdjustmentDetailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _variantId = $v.variantId;
      _batchId = $v.batchId;
      _adjustmentQuantity = $v.adjustmentQuantity;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStockAdjustmentDetailRequest other) {
    _$v = other as _$CreateStockAdjustmentDetailRequest;
  }

  @override
  void update(
    void Function(CreateStockAdjustmentDetailRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CreateStockAdjustmentDetailRequest build() => _build();

  _$CreateStockAdjustmentDetailRequest _build() {
    final _$result =
        _$v ??
        _$CreateStockAdjustmentDetailRequest._(
          variantId: BuiltValueNullFieldError.checkNotNull(
            variantId,
            r'CreateStockAdjustmentDetailRequest',
            'variantId',
          ),
          batchId: BuiltValueNullFieldError.checkNotNull(
            batchId,
            r'CreateStockAdjustmentDetailRequest',
            'batchId',
          ),
          adjustmentQuantity: adjustmentQuantity,
          note: note,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
