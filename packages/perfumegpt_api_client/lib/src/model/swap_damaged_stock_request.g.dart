// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap_damaged_stock_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SwapDamagedStockRequest extends SwapDamagedStockRequest {
  @override
  final String damagedReservationId;
  @override
  final String? damageNote;

  factory _$SwapDamagedStockRequest([
    void Function(SwapDamagedStockRequestBuilder)? updates,
  ]) => (SwapDamagedStockRequestBuilder()..update(updates))._build();

  _$SwapDamagedStockRequest._({
    required this.damagedReservationId,
    this.damageNote,
  }) : super._();
  @override
  SwapDamagedStockRequest rebuild(
    void Function(SwapDamagedStockRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SwapDamagedStockRequestBuilder toBuilder() =>
      SwapDamagedStockRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SwapDamagedStockRequest &&
        damagedReservationId == other.damagedReservationId &&
        damageNote == other.damageNote;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, damagedReservationId.hashCode);
    _$hash = $jc(_$hash, damageNote.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SwapDamagedStockRequest')
          ..add('damagedReservationId', damagedReservationId)
          ..add('damageNote', damageNote))
        .toString();
  }
}

class SwapDamagedStockRequestBuilder
    implements
        Builder<SwapDamagedStockRequest, SwapDamagedStockRequestBuilder> {
  _$SwapDamagedStockRequest? _$v;

  String? _damagedReservationId;
  String? get damagedReservationId => _$this._damagedReservationId;
  set damagedReservationId(String? damagedReservationId) =>
      _$this._damagedReservationId = damagedReservationId;

  String? _damageNote;
  String? get damageNote => _$this._damageNote;
  set damageNote(String? damageNote) => _$this._damageNote = damageNote;

  SwapDamagedStockRequestBuilder() {
    SwapDamagedStockRequest._defaults(this);
  }

  SwapDamagedStockRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _damagedReservationId = $v.damagedReservationId;
      _damageNote = $v.damageNote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SwapDamagedStockRequest other) {
    _$v = other as _$SwapDamagedStockRequest;
  }

  @override
  void update(void Function(SwapDamagedStockRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SwapDamagedStockRequest build() => _build();

  _$SwapDamagedStockRequest _build() {
    final _$result =
        _$v ??
        _$SwapDamagedStockRequest._(
          damagedReservationId: BuiltValueNullFieldError.checkNotNull(
            damagedReservationId,
            r'SwapDamagedStockRequest',
            'damagedReservationId',
          ),
          damageNote: damageNote,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
