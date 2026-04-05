// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_batch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateBatchRequest extends CreateBatchRequest {
  @override
  final String batchCode;
  @override
  final DateTime manufactureDate;
  @override
  final DateTime expiryDate;
  @override
  final int? quantity;

  factory _$CreateBatchRequest([
    void Function(CreateBatchRequestBuilder)? updates,
  ]) => (CreateBatchRequestBuilder()..update(updates))._build();

  _$CreateBatchRequest._({
    required this.batchCode,
    required this.manufactureDate,
    required this.expiryDate,
    this.quantity,
  }) : super._();
  @override
  CreateBatchRequest rebuild(
    void Function(CreateBatchRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateBatchRequestBuilder toBuilder() =>
      CreateBatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateBatchRequest &&
        batchCode == other.batchCode &&
        manufactureDate == other.manufactureDate &&
        expiryDate == other.expiryDate &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, batchCode.hashCode);
    _$hash = $jc(_$hash, manufactureDate.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateBatchRequest')
          ..add('batchCode', batchCode)
          ..add('manufactureDate', manufactureDate)
          ..add('expiryDate', expiryDate)
          ..add('quantity', quantity))
        .toString();
  }
}

class CreateBatchRequestBuilder
    implements Builder<CreateBatchRequest, CreateBatchRequestBuilder> {
  _$CreateBatchRequest? _$v;

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

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  CreateBatchRequestBuilder() {
    CreateBatchRequest._defaults(this);
  }

  CreateBatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _batchCode = $v.batchCode;
      _manufactureDate = $v.manufactureDate;
      _expiryDate = $v.expiryDate;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateBatchRequest other) {
    _$v = other as _$CreateBatchRequest;
  }

  @override
  void update(void Function(CreateBatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateBatchRequest build() => _build();

  _$CreateBatchRequest _build() {
    final _$result =
        _$v ??
        _$CreateBatchRequest._(
          batchCode: BuiltValueNullFieldError.checkNotNull(
            batchCode,
            r'CreateBatchRequest',
            'batchCode',
          ),
          manufactureDate: BuiltValueNullFieldError.checkNotNull(
            manufactureDate,
            r'CreateBatchRequest',
            'manufactureDate',
          ),
          expiryDate: BuiltValueNullFieldError.checkNotNull(
            expiryDate,
            r'CreateBatchRequest',
            'expiryDate',
          ),
          quantity: quantity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
