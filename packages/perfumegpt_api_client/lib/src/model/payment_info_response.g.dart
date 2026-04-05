// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_info_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentInfoResponse extends PaymentInfoResponse {
  @override
  final String? id;
  @override
  final TransactionType? transactionType;
  @override
  final TransactionStatus? status;
  @override
  final PaymentMethod? paymentMethod;
  @override
  final String? failureReason;
  @override
  final num? totalAmount;

  factory _$PaymentInfoResponse([
    void Function(PaymentInfoResponseBuilder)? updates,
  ]) => (PaymentInfoResponseBuilder()..update(updates))._build();

  _$PaymentInfoResponse._({
    this.id,
    this.transactionType,
    this.status,
    this.paymentMethod,
    this.failureReason,
    this.totalAmount,
  }) : super._();
  @override
  PaymentInfoResponse rebuild(
    void Function(PaymentInfoResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PaymentInfoResponseBuilder toBuilder() =>
      PaymentInfoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentInfoResponse &&
        id == other.id &&
        transactionType == other.transactionType &&
        status == other.status &&
        paymentMethod == other.paymentMethod &&
        failureReason == other.failureReason &&
        totalAmount == other.totalAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, transactionType.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, failureReason.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentInfoResponse')
          ..add('id', id)
          ..add('transactionType', transactionType)
          ..add('status', status)
          ..add('paymentMethod', paymentMethod)
          ..add('failureReason', failureReason)
          ..add('totalAmount', totalAmount))
        .toString();
  }
}

class PaymentInfoResponseBuilder
    implements Builder<PaymentInfoResponse, PaymentInfoResponseBuilder> {
  _$PaymentInfoResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TransactionType? _transactionType;
  TransactionType? get transactionType => _$this._transactionType;
  set transactionType(TransactionType? transactionType) =>
      _$this._transactionType = transactionType;

  TransactionStatus? _status;
  TransactionStatus? get status => _$this._status;
  set status(TransactionStatus? status) => _$this._status = status;

  PaymentMethod? _paymentMethod;
  PaymentMethod? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(PaymentMethod? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _failureReason;
  String? get failureReason => _$this._failureReason;
  set failureReason(String? failureReason) =>
      _$this._failureReason = failureReason;

  num? _totalAmount;
  num? get totalAmount => _$this._totalAmount;
  set totalAmount(num? totalAmount) => _$this._totalAmount = totalAmount;

  PaymentInfoResponseBuilder() {
    PaymentInfoResponse._defaults(this);
  }

  PaymentInfoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _transactionType = $v.transactionType;
      _status = $v.status;
      _paymentMethod = $v.paymentMethod;
      _failureReason = $v.failureReason;
      _totalAmount = $v.totalAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentInfoResponse other) {
    _$v = other as _$PaymentInfoResponse;
  }

  @override
  void update(void Function(PaymentInfoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentInfoResponse build() => _build();

  _$PaymentInfoResponse _build() {
    final _$result =
        _$v ??
        _$PaymentInfoResponse._(
          id: id,
          transactionType: transactionType,
          status: status,
          paymentMethod: paymentMethod,
          failureReason: failureReason,
          totalAmount: totalAmount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
