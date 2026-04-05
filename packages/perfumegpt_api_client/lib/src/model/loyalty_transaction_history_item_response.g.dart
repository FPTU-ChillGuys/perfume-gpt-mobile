// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_transaction_history_item_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoyaltyTransactionHistoryItemResponse
    extends LoyaltyTransactionHistoryItemResponse {
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String? voucherId;
  @override
  final String? orderId;
  @override
  final LoyaltyTransactionType? transactionType;
  @override
  final int? pointsChanged;
  @override
  final int? absolutePoints;
  @override
  final String reason;

  factory _$LoyaltyTransactionHistoryItemResponse([
    void Function(LoyaltyTransactionHistoryItemResponseBuilder)? updates,
  ]) => (LoyaltyTransactionHistoryItemResponseBuilder()..update(updates))
      ._build();

  _$LoyaltyTransactionHistoryItemResponse._({
    this.id,
    this.userId,
    this.voucherId,
    this.orderId,
    this.transactionType,
    this.pointsChanged,
    this.absolutePoints,
    required this.reason,
  }) : super._();
  @override
  LoyaltyTransactionHistoryItemResponse rebuild(
    void Function(LoyaltyTransactionHistoryItemResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LoyaltyTransactionHistoryItemResponseBuilder toBuilder() =>
      LoyaltyTransactionHistoryItemResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoyaltyTransactionHistoryItemResponse &&
        id == other.id &&
        userId == other.userId &&
        voucherId == other.voucherId &&
        orderId == other.orderId &&
        transactionType == other.transactionType &&
        pointsChanged == other.pointsChanged &&
        absolutePoints == other.absolutePoints &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, voucherId.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, transactionType.hashCode);
    _$hash = $jc(_$hash, pointsChanged.hashCode);
    _$hash = $jc(_$hash, absolutePoints.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'LoyaltyTransactionHistoryItemResponse',
          )
          ..add('id', id)
          ..add('userId', userId)
          ..add('voucherId', voucherId)
          ..add('orderId', orderId)
          ..add('transactionType', transactionType)
          ..add('pointsChanged', pointsChanged)
          ..add('absolutePoints', absolutePoints)
          ..add('reason', reason))
        .toString();
  }
}

class LoyaltyTransactionHistoryItemResponseBuilder
    implements
        Builder<
          LoyaltyTransactionHistoryItemResponse,
          LoyaltyTransactionHistoryItemResponseBuilder
        > {
  _$LoyaltyTransactionHistoryItemResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _voucherId;
  String? get voucherId => _$this._voucherId;
  set voucherId(String? voucherId) => _$this._voucherId = voucherId;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  LoyaltyTransactionType? _transactionType;
  LoyaltyTransactionType? get transactionType => _$this._transactionType;
  set transactionType(LoyaltyTransactionType? transactionType) =>
      _$this._transactionType = transactionType;

  int? _pointsChanged;
  int? get pointsChanged => _$this._pointsChanged;
  set pointsChanged(int? pointsChanged) =>
      _$this._pointsChanged = pointsChanged;

  int? _absolutePoints;
  int? get absolutePoints => _$this._absolutePoints;
  set absolutePoints(int? absolutePoints) =>
      _$this._absolutePoints = absolutePoints;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  LoyaltyTransactionHistoryItemResponseBuilder() {
    LoyaltyTransactionHistoryItemResponse._defaults(this);
  }

  LoyaltyTransactionHistoryItemResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _voucherId = $v.voucherId;
      _orderId = $v.orderId;
      _transactionType = $v.transactionType;
      _pointsChanged = $v.pointsChanged;
      _absolutePoints = $v.absolutePoints;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoyaltyTransactionHistoryItemResponse other) {
    _$v = other as _$LoyaltyTransactionHistoryItemResponse;
  }

  @override
  void update(
    void Function(LoyaltyTransactionHistoryItemResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  LoyaltyTransactionHistoryItemResponse build() => _build();

  _$LoyaltyTransactionHistoryItemResponse _build() {
    final _$result =
        _$v ??
        _$LoyaltyTransactionHistoryItemResponse._(
          id: id,
          userId: userId,
          voucherId: voucherId,
          orderId: orderId,
          transactionType: transactionType,
          pointsChanged: pointsChanged,
          absolutePoints: absolutePoints,
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'LoyaltyTransactionHistoryItemResponse',
            'reason',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
