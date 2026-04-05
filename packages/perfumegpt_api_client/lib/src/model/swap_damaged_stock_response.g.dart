// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap_damaged_stock_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SwapDamagedStockResponse extends SwapDamagedStockResponse {
  @override
  final String? newReservationId;
  @override
  final String? newBatchId;
  @override
  final String newBatchCode;
  @override
  final String? newLocation;
  @override
  final int? reservedQuantity;
  @override
  final DateTime? expiryDate;
  @override
  final String message;

  factory _$SwapDamagedStockResponse([
    void Function(SwapDamagedStockResponseBuilder)? updates,
  ]) => (SwapDamagedStockResponseBuilder()..update(updates))._build();

  _$SwapDamagedStockResponse._({
    this.newReservationId,
    this.newBatchId,
    required this.newBatchCode,
    this.newLocation,
    this.reservedQuantity,
    this.expiryDate,
    required this.message,
  }) : super._();
  @override
  SwapDamagedStockResponse rebuild(
    void Function(SwapDamagedStockResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SwapDamagedStockResponseBuilder toBuilder() =>
      SwapDamagedStockResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SwapDamagedStockResponse &&
        newReservationId == other.newReservationId &&
        newBatchId == other.newBatchId &&
        newBatchCode == other.newBatchCode &&
        newLocation == other.newLocation &&
        reservedQuantity == other.reservedQuantity &&
        expiryDate == other.expiryDate &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newReservationId.hashCode);
    _$hash = $jc(_$hash, newBatchId.hashCode);
    _$hash = $jc(_$hash, newBatchCode.hashCode);
    _$hash = $jc(_$hash, newLocation.hashCode);
    _$hash = $jc(_$hash, reservedQuantity.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SwapDamagedStockResponse')
          ..add('newReservationId', newReservationId)
          ..add('newBatchId', newBatchId)
          ..add('newBatchCode', newBatchCode)
          ..add('newLocation', newLocation)
          ..add('reservedQuantity', reservedQuantity)
          ..add('expiryDate', expiryDate)
          ..add('message', message))
        .toString();
  }
}

class SwapDamagedStockResponseBuilder
    implements
        Builder<SwapDamagedStockResponse, SwapDamagedStockResponseBuilder> {
  _$SwapDamagedStockResponse? _$v;

  String? _newReservationId;
  String? get newReservationId => _$this._newReservationId;
  set newReservationId(String? newReservationId) =>
      _$this._newReservationId = newReservationId;

  String? _newBatchId;
  String? get newBatchId => _$this._newBatchId;
  set newBatchId(String? newBatchId) => _$this._newBatchId = newBatchId;

  String? _newBatchCode;
  String? get newBatchCode => _$this._newBatchCode;
  set newBatchCode(String? newBatchCode) => _$this._newBatchCode = newBatchCode;

  String? _newLocation;
  String? get newLocation => _$this._newLocation;
  set newLocation(String? newLocation) => _$this._newLocation = newLocation;

  int? _reservedQuantity;
  int? get reservedQuantity => _$this._reservedQuantity;
  set reservedQuantity(int? reservedQuantity) =>
      _$this._reservedQuantity = reservedQuantity;

  DateTime? _expiryDate;
  DateTime? get expiryDate => _$this._expiryDate;
  set expiryDate(DateTime? expiryDate) => _$this._expiryDate = expiryDate;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SwapDamagedStockResponseBuilder() {
    SwapDamagedStockResponse._defaults(this);
  }

  SwapDamagedStockResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newReservationId = $v.newReservationId;
      _newBatchId = $v.newBatchId;
      _newBatchCode = $v.newBatchCode;
      _newLocation = $v.newLocation;
      _reservedQuantity = $v.reservedQuantity;
      _expiryDate = $v.expiryDate;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SwapDamagedStockResponse other) {
    _$v = other as _$SwapDamagedStockResponse;
  }

  @override
  void update(void Function(SwapDamagedStockResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SwapDamagedStockResponse build() => _build();

  _$SwapDamagedStockResponse _build() {
    final _$result =
        _$v ??
        _$SwapDamagedStockResponse._(
          newReservationId: newReservationId,
          newBatchId: newBatchId,
          newBatchCode: BuiltValueNullFieldError.checkNotNull(
            newBatchCode,
            r'SwapDamagedStockResponse',
            'newBatchCode',
          ),
          newLocation: newLocation,
          reservedQuantity: reservedQuantity,
          expiryDate: expiryDate,
          message: BuiltValueNullFieldError.checkNotNull(
            message,
            r'SwapDamagedStockResponse',
            'message',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
