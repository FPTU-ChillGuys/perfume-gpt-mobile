// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_stock_adjustment_detail_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyStockAdjustmentDetailRequest
    extends VerifyStockAdjustmentDetailRequest {
  @override
  final String detailId;
  @override
  final int? approvedQuantity;
  @override
  final String? note;

  factory _$VerifyStockAdjustmentDetailRequest([
    void Function(VerifyStockAdjustmentDetailRequestBuilder)? updates,
  ]) => (VerifyStockAdjustmentDetailRequestBuilder()..update(updates))._build();

  _$VerifyStockAdjustmentDetailRequest._({
    required this.detailId,
    this.approvedQuantity,
    this.note,
  }) : super._();
  @override
  VerifyStockAdjustmentDetailRequest rebuild(
    void Function(VerifyStockAdjustmentDetailRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  VerifyStockAdjustmentDetailRequestBuilder toBuilder() =>
      VerifyStockAdjustmentDetailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyStockAdjustmentDetailRequest &&
        detailId == other.detailId &&
        approvedQuantity == other.approvedQuantity &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, detailId.hashCode);
    _$hash = $jc(_$hash, approvedQuantity.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyStockAdjustmentDetailRequest')
          ..add('detailId', detailId)
          ..add('approvedQuantity', approvedQuantity)
          ..add('note', note))
        .toString();
  }
}

class VerifyStockAdjustmentDetailRequestBuilder
    implements
        Builder<
          VerifyStockAdjustmentDetailRequest,
          VerifyStockAdjustmentDetailRequestBuilder
        > {
  _$VerifyStockAdjustmentDetailRequest? _$v;

  String? _detailId;
  String? get detailId => _$this._detailId;
  set detailId(String? detailId) => _$this._detailId = detailId;

  int? _approvedQuantity;
  int? get approvedQuantity => _$this._approvedQuantity;
  set approvedQuantity(int? approvedQuantity) =>
      _$this._approvedQuantity = approvedQuantity;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  VerifyStockAdjustmentDetailRequestBuilder() {
    VerifyStockAdjustmentDetailRequest._defaults(this);
  }

  VerifyStockAdjustmentDetailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _detailId = $v.detailId;
      _approvedQuantity = $v.approvedQuantity;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyStockAdjustmentDetailRequest other) {
    _$v = other as _$VerifyStockAdjustmentDetailRequest;
  }

  @override
  void update(
    void Function(VerifyStockAdjustmentDetailRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  VerifyStockAdjustmentDetailRequest build() => _build();

  _$VerifyStockAdjustmentDetailRequest _build() {
    final _$result =
        _$v ??
        _$VerifyStockAdjustmentDetailRequest._(
          detailId: BuiltValueNullFieldError.checkNotNull(
            detailId,
            r'VerifyStockAdjustmentDetailRequest',
            'detailId',
          ),
          approvedQuantity: approvedQuantity,
          note: note,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
