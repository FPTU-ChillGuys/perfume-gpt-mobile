// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchResponse extends BatchResponse {
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

  factory _$BatchResponse([void Function(BatchResponseBuilder)? updates]) =>
      (BatchResponseBuilder()..update(updates))._build();

  _$BatchResponse._({
    this.id,
    required this.batchCode,
    this.manufactureDate,
    this.expiryDate,
    this.importQuantity,
    this.remainingQuantity,
    this.createdAt,
  }) : super._();
  @override
  BatchResponse rebuild(void Function(BatchResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchResponseBuilder toBuilder() => BatchResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchResponse &&
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
    return (newBuiltValueToStringHelper(r'BatchResponse')
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

class BatchResponseBuilder
    implements Builder<BatchResponse, BatchResponseBuilder> {
  _$BatchResponse? _$v;

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

  BatchResponseBuilder() {
    BatchResponse._defaults(this);
  }

  BatchResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(BatchResponse other) {
    _$v = other as _$BatchResponse;
  }

  @override
  void update(void Function(BatchResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchResponse build() => _build();

  _$BatchResponse _build() {
    final _$result =
        _$v ??
        _$BatchResponse._(
          id: id,
          batchCode: BuiltValueNullFieldError.checkNotNull(
            batchCode,
            r'BatchResponse',
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
