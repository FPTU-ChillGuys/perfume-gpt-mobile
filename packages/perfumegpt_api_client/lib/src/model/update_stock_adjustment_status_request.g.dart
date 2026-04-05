// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_stock_adjustment_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateStockAdjustmentStatusRequest
    extends UpdateStockAdjustmentStatusRequest {
  @override
  final StockAdjustmentStatus? status;
  @override
  final String? note;

  factory _$UpdateStockAdjustmentStatusRequest([
    void Function(UpdateStockAdjustmentStatusRequestBuilder)? updates,
  ]) => (UpdateStockAdjustmentStatusRequestBuilder()..update(updates))._build();

  _$UpdateStockAdjustmentStatusRequest._({this.status, this.note}) : super._();
  @override
  UpdateStockAdjustmentStatusRequest rebuild(
    void Function(UpdateStockAdjustmentStatusRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateStockAdjustmentStatusRequestBuilder toBuilder() =>
      UpdateStockAdjustmentStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateStockAdjustmentStatusRequest &&
        status == other.status &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateStockAdjustmentStatusRequest')
          ..add('status', status)
          ..add('note', note))
        .toString();
  }
}

class UpdateStockAdjustmentStatusRequestBuilder
    implements
        Builder<
          UpdateStockAdjustmentStatusRequest,
          UpdateStockAdjustmentStatusRequestBuilder
        > {
  _$UpdateStockAdjustmentStatusRequest? _$v;

  StockAdjustmentStatus? _status;
  StockAdjustmentStatus? get status => _$this._status;
  set status(StockAdjustmentStatus? status) => _$this._status = status;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  UpdateStockAdjustmentStatusRequestBuilder() {
    UpdateStockAdjustmentStatusRequest._defaults(this);
  }

  UpdateStockAdjustmentStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateStockAdjustmentStatusRequest other) {
    _$v = other as _$UpdateStockAdjustmentStatusRequest;
  }

  @override
  void update(
    void Function(UpdateStockAdjustmentStatusRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  UpdateStockAdjustmentStatusRequest build() => _build();

  _$UpdateStockAdjustmentStatusRequest _build() {
    final _$result =
        _$v ??
        _$UpdateStockAdjustmentStatusRequest._(status: status, note: note);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
