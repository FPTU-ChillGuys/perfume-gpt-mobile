// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_inspection_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecordInspectionDto extends RecordInspectionDto {
  @override
  final num? approvedRefundAmount;
  @override
  final bool? isRestocked;
  @override
  final String? inspectionNote;

  factory _$RecordInspectionDto([
    void Function(RecordInspectionDtoBuilder)? updates,
  ]) => (RecordInspectionDtoBuilder()..update(updates))._build();

  _$RecordInspectionDto._({
    this.approvedRefundAmount,
    this.isRestocked,
    this.inspectionNote,
  }) : super._();
  @override
  RecordInspectionDto rebuild(
    void Function(RecordInspectionDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecordInspectionDtoBuilder toBuilder() =>
      RecordInspectionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecordInspectionDto &&
        approvedRefundAmount == other.approvedRefundAmount &&
        isRestocked == other.isRestocked &&
        inspectionNote == other.inspectionNote;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, approvedRefundAmount.hashCode);
    _$hash = $jc(_$hash, isRestocked.hashCode);
    _$hash = $jc(_$hash, inspectionNote.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecordInspectionDto')
          ..add('approvedRefundAmount', approvedRefundAmount)
          ..add('isRestocked', isRestocked)
          ..add('inspectionNote', inspectionNote))
        .toString();
  }
}

class RecordInspectionDtoBuilder
    implements Builder<RecordInspectionDto, RecordInspectionDtoBuilder> {
  _$RecordInspectionDto? _$v;

  num? _approvedRefundAmount;
  num? get approvedRefundAmount => _$this._approvedRefundAmount;
  set approvedRefundAmount(num? approvedRefundAmount) =>
      _$this._approvedRefundAmount = approvedRefundAmount;

  bool? _isRestocked;
  bool? get isRestocked => _$this._isRestocked;
  set isRestocked(bool? isRestocked) => _$this._isRestocked = isRestocked;

  String? _inspectionNote;
  String? get inspectionNote => _$this._inspectionNote;
  set inspectionNote(String? inspectionNote) =>
      _$this._inspectionNote = inspectionNote;

  RecordInspectionDtoBuilder() {
    RecordInspectionDto._defaults(this);
  }

  RecordInspectionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _approvedRefundAmount = $v.approvedRefundAmount;
      _isRestocked = $v.isRestocked;
      _inspectionNote = $v.inspectionNote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecordInspectionDto other) {
    _$v = other as _$RecordInspectionDto;
  }

  @override
  void update(void Function(RecordInspectionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecordInspectionDto build() => _build();

  _$RecordInspectionDto _build() {
    final _$result =
        _$v ??
        _$RecordInspectionDto._(
          approvedRefundAmount: approvedRefundAmount,
          isRestocked: isRestocked,
          inspectionNote: inspectionNote,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
