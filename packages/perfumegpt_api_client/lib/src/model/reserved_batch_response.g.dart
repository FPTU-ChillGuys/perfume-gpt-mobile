// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_batch_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservedBatchResponse extends ReservedBatchResponse {
  @override
  final String? batchId;
  @override
  final String batchCode;
  @override
  final int? reservedQuantity;
  @override
  final DateTime? expiryDate;

  factory _$ReservedBatchResponse([
    void Function(ReservedBatchResponseBuilder)? updates,
  ]) => (ReservedBatchResponseBuilder()..update(updates))._build();

  _$ReservedBatchResponse._({
    this.batchId,
    required this.batchCode,
    this.reservedQuantity,
    this.expiryDate,
  }) : super._();
  @override
  ReservedBatchResponse rebuild(
    void Function(ReservedBatchResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReservedBatchResponseBuilder toBuilder() =>
      ReservedBatchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservedBatchResponse &&
        batchId == other.batchId &&
        batchCode == other.batchCode &&
        reservedQuantity == other.reservedQuantity &&
        expiryDate == other.expiryDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, batchId.hashCode);
    _$hash = $jc(_$hash, batchCode.hashCode);
    _$hash = $jc(_$hash, reservedQuantity.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReservedBatchResponse')
          ..add('batchId', batchId)
          ..add('batchCode', batchCode)
          ..add('reservedQuantity', reservedQuantity)
          ..add('expiryDate', expiryDate))
        .toString();
  }
}

class ReservedBatchResponseBuilder
    implements Builder<ReservedBatchResponse, ReservedBatchResponseBuilder> {
  _$ReservedBatchResponse? _$v;

  String? _batchId;
  String? get batchId => _$this._batchId;
  set batchId(String? batchId) => _$this._batchId = batchId;

  String? _batchCode;
  String? get batchCode => _$this._batchCode;
  set batchCode(String? batchCode) => _$this._batchCode = batchCode;

  int? _reservedQuantity;
  int? get reservedQuantity => _$this._reservedQuantity;
  set reservedQuantity(int? reservedQuantity) =>
      _$this._reservedQuantity = reservedQuantity;

  DateTime? _expiryDate;
  DateTime? get expiryDate => _$this._expiryDate;
  set expiryDate(DateTime? expiryDate) => _$this._expiryDate = expiryDate;

  ReservedBatchResponseBuilder() {
    ReservedBatchResponse._defaults(this);
  }

  ReservedBatchResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _batchId = $v.batchId;
      _batchCode = $v.batchCode;
      _reservedQuantity = $v.reservedQuantity;
      _expiryDate = $v.expiryDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservedBatchResponse other) {
    _$v = other as _$ReservedBatchResponse;
  }

  @override
  void update(void Function(ReservedBatchResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservedBatchResponse build() => _build();

  _$ReservedBatchResponse _build() {
    final _$result =
        _$v ??
        _$ReservedBatchResponse._(
          batchId: batchId,
          batchCode: BuiltValueNullFieldError.checkNotNull(
            batchCode,
            r'ReservedBatchResponse',
            'batchCode',
          ),
          reservedQuantity: reservedQuantity,
          expiryDate: expiryDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
