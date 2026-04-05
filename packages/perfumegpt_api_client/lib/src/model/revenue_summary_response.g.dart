// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_summary_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RevenueSummaryResponse extends RevenueSummaryResponse {
  @override
  final DateTime? fromDate;
  @override
  final DateTime? toDate;
  @override
  final num? grossRevenue;
  @override
  final num? refundedAmount;
  @override
  final num? netRevenue;
  @override
  final int? successfulTransactionsCount;
  @override
  final int? paidOrdersCount;

  factory _$RevenueSummaryResponse([
    void Function(RevenueSummaryResponseBuilder)? updates,
  ]) => (RevenueSummaryResponseBuilder()..update(updates))._build();

  _$RevenueSummaryResponse._({
    this.fromDate,
    this.toDate,
    this.grossRevenue,
    this.refundedAmount,
    this.netRevenue,
    this.successfulTransactionsCount,
    this.paidOrdersCount,
  }) : super._();
  @override
  RevenueSummaryResponse rebuild(
    void Function(RevenueSummaryResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RevenueSummaryResponseBuilder toBuilder() =>
      RevenueSummaryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevenueSummaryResponse &&
        fromDate == other.fromDate &&
        toDate == other.toDate &&
        grossRevenue == other.grossRevenue &&
        refundedAmount == other.refundedAmount &&
        netRevenue == other.netRevenue &&
        successfulTransactionsCount == other.successfulTransactionsCount &&
        paidOrdersCount == other.paidOrdersCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fromDate.hashCode);
    _$hash = $jc(_$hash, toDate.hashCode);
    _$hash = $jc(_$hash, grossRevenue.hashCode);
    _$hash = $jc(_$hash, refundedAmount.hashCode);
    _$hash = $jc(_$hash, netRevenue.hashCode);
    _$hash = $jc(_$hash, successfulTransactionsCount.hashCode);
    _$hash = $jc(_$hash, paidOrdersCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RevenueSummaryResponse')
          ..add('fromDate', fromDate)
          ..add('toDate', toDate)
          ..add('grossRevenue', grossRevenue)
          ..add('refundedAmount', refundedAmount)
          ..add('netRevenue', netRevenue)
          ..add('successfulTransactionsCount', successfulTransactionsCount)
          ..add('paidOrdersCount', paidOrdersCount))
        .toString();
  }
}

class RevenueSummaryResponseBuilder
    implements Builder<RevenueSummaryResponse, RevenueSummaryResponseBuilder> {
  _$RevenueSummaryResponse? _$v;

  DateTime? _fromDate;
  DateTime? get fromDate => _$this._fromDate;
  set fromDate(DateTime? fromDate) => _$this._fromDate = fromDate;

  DateTime? _toDate;
  DateTime? get toDate => _$this._toDate;
  set toDate(DateTime? toDate) => _$this._toDate = toDate;

  num? _grossRevenue;
  num? get grossRevenue => _$this._grossRevenue;
  set grossRevenue(num? grossRevenue) => _$this._grossRevenue = grossRevenue;

  num? _refundedAmount;
  num? get refundedAmount => _$this._refundedAmount;
  set refundedAmount(num? refundedAmount) =>
      _$this._refundedAmount = refundedAmount;

  num? _netRevenue;
  num? get netRevenue => _$this._netRevenue;
  set netRevenue(num? netRevenue) => _$this._netRevenue = netRevenue;

  int? _successfulTransactionsCount;
  int? get successfulTransactionsCount => _$this._successfulTransactionsCount;
  set successfulTransactionsCount(int? successfulTransactionsCount) =>
      _$this._successfulTransactionsCount = successfulTransactionsCount;

  int? _paidOrdersCount;
  int? get paidOrdersCount => _$this._paidOrdersCount;
  set paidOrdersCount(int? paidOrdersCount) =>
      _$this._paidOrdersCount = paidOrdersCount;

  RevenueSummaryResponseBuilder() {
    RevenueSummaryResponse._defaults(this);
  }

  RevenueSummaryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fromDate = $v.fromDate;
      _toDate = $v.toDate;
      _grossRevenue = $v.grossRevenue;
      _refundedAmount = $v.refundedAmount;
      _netRevenue = $v.netRevenue;
      _successfulTransactionsCount = $v.successfulTransactionsCount;
      _paidOrdersCount = $v.paidOrdersCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RevenueSummaryResponse other) {
    _$v = other as _$RevenueSummaryResponse;
  }

  @override
  void update(void Function(RevenueSummaryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevenueSummaryResponse build() => _build();

  _$RevenueSummaryResponse _build() {
    final _$result =
        _$v ??
        _$RevenueSummaryResponse._(
          fromDate: fromDate,
          toDate: toDate,
          grossRevenue: grossRevenue,
          refundedAmount: refundedAmount,
          netRevenue: netRevenue,
          successfulTransactionsCount: successfulTransactionsCount,
          paidOrdersCount: paidOrdersCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
