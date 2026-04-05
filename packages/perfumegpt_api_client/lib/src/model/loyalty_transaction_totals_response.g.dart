// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_transaction_totals_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoyaltyTransactionTotalsResponse
    extends LoyaltyTransactionTotalsResponse {
  @override
  final String? userId;
  @override
  final int? totalEarnedPoints;
  @override
  final int? totalSpentPoints;
  @override
  final int? pointBalance;
  @override
  final int? totalTransactions;

  factory _$LoyaltyTransactionTotalsResponse([
    void Function(LoyaltyTransactionTotalsResponseBuilder)? updates,
  ]) => (LoyaltyTransactionTotalsResponseBuilder()..update(updates))._build();

  _$LoyaltyTransactionTotalsResponse._({
    this.userId,
    this.totalEarnedPoints,
    this.totalSpentPoints,
    this.pointBalance,
    this.totalTransactions,
  }) : super._();
  @override
  LoyaltyTransactionTotalsResponse rebuild(
    void Function(LoyaltyTransactionTotalsResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LoyaltyTransactionTotalsResponseBuilder toBuilder() =>
      LoyaltyTransactionTotalsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoyaltyTransactionTotalsResponse &&
        userId == other.userId &&
        totalEarnedPoints == other.totalEarnedPoints &&
        totalSpentPoints == other.totalSpentPoints &&
        pointBalance == other.pointBalance &&
        totalTransactions == other.totalTransactions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, totalEarnedPoints.hashCode);
    _$hash = $jc(_$hash, totalSpentPoints.hashCode);
    _$hash = $jc(_$hash, pointBalance.hashCode);
    _$hash = $jc(_$hash, totalTransactions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoyaltyTransactionTotalsResponse')
          ..add('userId', userId)
          ..add('totalEarnedPoints', totalEarnedPoints)
          ..add('totalSpentPoints', totalSpentPoints)
          ..add('pointBalance', pointBalance)
          ..add('totalTransactions', totalTransactions))
        .toString();
  }
}

class LoyaltyTransactionTotalsResponseBuilder
    implements
        Builder<
          LoyaltyTransactionTotalsResponse,
          LoyaltyTransactionTotalsResponseBuilder
        > {
  _$LoyaltyTransactionTotalsResponse? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  int? _totalEarnedPoints;
  int? get totalEarnedPoints => _$this._totalEarnedPoints;
  set totalEarnedPoints(int? totalEarnedPoints) =>
      _$this._totalEarnedPoints = totalEarnedPoints;

  int? _totalSpentPoints;
  int? get totalSpentPoints => _$this._totalSpentPoints;
  set totalSpentPoints(int? totalSpentPoints) =>
      _$this._totalSpentPoints = totalSpentPoints;

  int? _pointBalance;
  int? get pointBalance => _$this._pointBalance;
  set pointBalance(int? pointBalance) => _$this._pointBalance = pointBalance;

  int? _totalTransactions;
  int? get totalTransactions => _$this._totalTransactions;
  set totalTransactions(int? totalTransactions) =>
      _$this._totalTransactions = totalTransactions;

  LoyaltyTransactionTotalsResponseBuilder() {
    LoyaltyTransactionTotalsResponse._defaults(this);
  }

  LoyaltyTransactionTotalsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _totalEarnedPoints = $v.totalEarnedPoints;
      _totalSpentPoints = $v.totalSpentPoints;
      _pointBalance = $v.pointBalance;
      _totalTransactions = $v.totalTransactions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoyaltyTransactionTotalsResponse other) {
    _$v = other as _$LoyaltyTransactionTotalsResponse;
  }

  @override
  void update(void Function(LoyaltyTransactionTotalsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoyaltyTransactionTotalsResponse build() => _build();

  _$LoyaltyTransactionTotalsResponse _build() {
    final _$result =
        _$v ??
        _$LoyaltyTransactionTotalsResponse._(
          userId: userId,
          totalEarnedPoints: totalEarnedPoints,
          totalSpentPoints: totalSpentPoints,
          pointBalance: pointBalance,
          totalTransactions: totalTransactions,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
