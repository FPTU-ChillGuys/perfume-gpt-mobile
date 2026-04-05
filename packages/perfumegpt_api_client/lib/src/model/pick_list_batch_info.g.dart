// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_list_batch_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PickListBatchInfo extends PickListBatchInfo {
  @override
  final String? reservationId;
  @override
  final String? batchId;
  @override
  final String batchCode;
  @override
  final String? note;
  @override
  final int? reservedQuantity;
  @override
  final DateTime? expiryDate;

  factory _$PickListBatchInfo([
    void Function(PickListBatchInfoBuilder)? updates,
  ]) => (PickListBatchInfoBuilder()..update(updates))._build();

  _$PickListBatchInfo._({
    this.reservationId,
    this.batchId,
    required this.batchCode,
    this.note,
    this.reservedQuantity,
    this.expiryDate,
  }) : super._();
  @override
  PickListBatchInfo rebuild(void Function(PickListBatchInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PickListBatchInfoBuilder toBuilder() =>
      PickListBatchInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PickListBatchInfo &&
        reservationId == other.reservationId &&
        batchId == other.batchId &&
        batchCode == other.batchCode &&
        note == other.note &&
        reservedQuantity == other.reservedQuantity &&
        expiryDate == other.expiryDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reservationId.hashCode);
    _$hash = $jc(_$hash, batchId.hashCode);
    _$hash = $jc(_$hash, batchCode.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, reservedQuantity.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PickListBatchInfo')
          ..add('reservationId', reservationId)
          ..add('batchId', batchId)
          ..add('batchCode', batchCode)
          ..add('note', note)
          ..add('reservedQuantity', reservedQuantity)
          ..add('expiryDate', expiryDate))
        .toString();
  }
}

class PickListBatchInfoBuilder
    implements Builder<PickListBatchInfo, PickListBatchInfoBuilder> {
  _$PickListBatchInfo? _$v;

  String? _reservationId;
  String? get reservationId => _$this._reservationId;
  set reservationId(String? reservationId) =>
      _$this._reservationId = reservationId;

  String? _batchId;
  String? get batchId => _$this._batchId;
  set batchId(String? batchId) => _$this._batchId = batchId;

  String? _batchCode;
  String? get batchCode => _$this._batchCode;
  set batchCode(String? batchCode) => _$this._batchCode = batchCode;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  int? _reservedQuantity;
  int? get reservedQuantity => _$this._reservedQuantity;
  set reservedQuantity(int? reservedQuantity) =>
      _$this._reservedQuantity = reservedQuantity;

  DateTime? _expiryDate;
  DateTime? get expiryDate => _$this._expiryDate;
  set expiryDate(DateTime? expiryDate) => _$this._expiryDate = expiryDate;

  PickListBatchInfoBuilder() {
    PickListBatchInfo._defaults(this);
  }

  PickListBatchInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reservationId = $v.reservationId;
      _batchId = $v.batchId;
      _batchCode = $v.batchCode;
      _note = $v.note;
      _reservedQuantity = $v.reservedQuantity;
      _expiryDate = $v.expiryDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PickListBatchInfo other) {
    _$v = other as _$PickListBatchInfo;
  }

  @override
  void update(void Function(PickListBatchInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PickListBatchInfo build() => _build();

  _$PickListBatchInfo _build() {
    final _$result =
        _$v ??
        _$PickListBatchInfo._(
          reservationId: reservationId,
          batchId: batchId,
          batchCode: BuiltValueNullFieldError.checkNotNull(
            batchCode,
            r'PickListBatchInfo',
            'batchCode',
          ),
          note: note,
          reservedQuantity: reservedQuantity,
          expiryDate: expiryDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
