// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_order_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserOrderResponse extends UserOrderResponse {
  @override
  final String? id;
  @override
  final String code;
  @override
  final OrderType? type;
  @override
  final OrderStatus? status;
  @override
  final bool? isReturnable;
  @override
  final PaymentStatus? paymentStatus;
  @override
  final num? totalAmount;
  @override
  final String? voucherCode;
  @override
  final DateTime? paymentExpiresAt;
  @override
  final DateTime? paidAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final BuiltList<PaymentInfoResponse>? paymentTransactions;
  @override
  final ShippingInfoResponse? shippingInfo;
  @override
  final RecipientInfoResponse? recipientInfo;
  @override
  final BuiltList<OrderDetailResponse> orderDetails;

  factory _$UserOrderResponse([
    void Function(UserOrderResponseBuilder)? updates,
  ]) => (UserOrderResponseBuilder()..update(updates))._build();

  _$UserOrderResponse._({
    this.id,
    required this.code,
    this.type,
    this.status,
    this.isReturnable,
    this.paymentStatus,
    this.totalAmount,
    this.voucherCode,
    this.paymentExpiresAt,
    this.paidAt,
    this.createdAt,
    this.updatedAt,
    this.paymentTransactions,
    this.shippingInfo,
    this.recipientInfo,
    required this.orderDetails,
  }) : super._();
  @override
  UserOrderResponse rebuild(void Function(UserOrderResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserOrderResponseBuilder toBuilder() =>
      UserOrderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserOrderResponse &&
        id == other.id &&
        code == other.code &&
        type == other.type &&
        status == other.status &&
        isReturnable == other.isReturnable &&
        paymentStatus == other.paymentStatus &&
        totalAmount == other.totalAmount &&
        voucherCode == other.voucherCode &&
        paymentExpiresAt == other.paymentExpiresAt &&
        paidAt == other.paidAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        paymentTransactions == other.paymentTransactions &&
        shippingInfo == other.shippingInfo &&
        recipientInfo == other.recipientInfo &&
        orderDetails == other.orderDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, isReturnable.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, voucherCode.hashCode);
    _$hash = $jc(_$hash, paymentExpiresAt.hashCode);
    _$hash = $jc(_$hash, paidAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, paymentTransactions.hashCode);
    _$hash = $jc(_$hash, shippingInfo.hashCode);
    _$hash = $jc(_$hash, recipientInfo.hashCode);
    _$hash = $jc(_$hash, orderDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserOrderResponse')
          ..add('id', id)
          ..add('code', code)
          ..add('type', type)
          ..add('status', status)
          ..add('isReturnable', isReturnable)
          ..add('paymentStatus', paymentStatus)
          ..add('totalAmount', totalAmount)
          ..add('voucherCode', voucherCode)
          ..add('paymentExpiresAt', paymentExpiresAt)
          ..add('paidAt', paidAt)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('paymentTransactions', paymentTransactions)
          ..add('shippingInfo', shippingInfo)
          ..add('recipientInfo', recipientInfo)
          ..add('orderDetails', orderDetails))
        .toString();
  }
}

class UserOrderResponseBuilder
    implements Builder<UserOrderResponse, UserOrderResponseBuilder> {
  _$UserOrderResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  OrderType? _type;
  OrderType? get type => _$this._type;
  set type(OrderType? type) => _$this._type = type;

  OrderStatus? _status;
  OrderStatus? get status => _$this._status;
  set status(OrderStatus? status) => _$this._status = status;

  bool? _isReturnable;
  bool? get isReturnable => _$this._isReturnable;
  set isReturnable(bool? isReturnable) => _$this._isReturnable = isReturnable;

  PaymentStatus? _paymentStatus;
  PaymentStatus? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(PaymentStatus? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  num? _totalAmount;
  num? get totalAmount => _$this._totalAmount;
  set totalAmount(num? totalAmount) => _$this._totalAmount = totalAmount;

  String? _voucherCode;
  String? get voucherCode => _$this._voucherCode;
  set voucherCode(String? voucherCode) => _$this._voucherCode = voucherCode;

  DateTime? _paymentExpiresAt;
  DateTime? get paymentExpiresAt => _$this._paymentExpiresAt;
  set paymentExpiresAt(DateTime? paymentExpiresAt) =>
      _$this._paymentExpiresAt = paymentExpiresAt;

  DateTime? _paidAt;
  DateTime? get paidAt => _$this._paidAt;
  set paidAt(DateTime? paidAt) => _$this._paidAt = paidAt;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ListBuilder<PaymentInfoResponse>? _paymentTransactions;
  ListBuilder<PaymentInfoResponse> get paymentTransactions =>
      _$this._paymentTransactions ??= ListBuilder<PaymentInfoResponse>();
  set paymentTransactions(
    ListBuilder<PaymentInfoResponse>? paymentTransactions,
  ) => _$this._paymentTransactions = paymentTransactions;

  ShippingInfoResponseBuilder? _shippingInfo;
  ShippingInfoResponseBuilder get shippingInfo =>
      _$this._shippingInfo ??= ShippingInfoResponseBuilder();
  set shippingInfo(ShippingInfoResponseBuilder? shippingInfo) =>
      _$this._shippingInfo = shippingInfo;

  RecipientInfoResponseBuilder? _recipientInfo;
  RecipientInfoResponseBuilder get recipientInfo =>
      _$this._recipientInfo ??= RecipientInfoResponseBuilder();
  set recipientInfo(RecipientInfoResponseBuilder? recipientInfo) =>
      _$this._recipientInfo = recipientInfo;

  ListBuilder<OrderDetailResponse>? _orderDetails;
  ListBuilder<OrderDetailResponse> get orderDetails =>
      _$this._orderDetails ??= ListBuilder<OrderDetailResponse>();
  set orderDetails(ListBuilder<OrderDetailResponse>? orderDetails) =>
      _$this._orderDetails = orderDetails;

  UserOrderResponseBuilder() {
    UserOrderResponse._defaults(this);
  }

  UserOrderResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _type = $v.type;
      _status = $v.status;
      _isReturnable = $v.isReturnable;
      _paymentStatus = $v.paymentStatus;
      _totalAmount = $v.totalAmount;
      _voucherCode = $v.voucherCode;
      _paymentExpiresAt = $v.paymentExpiresAt;
      _paidAt = $v.paidAt;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _paymentTransactions = $v.paymentTransactions?.toBuilder();
      _shippingInfo = $v.shippingInfo?.toBuilder();
      _recipientInfo = $v.recipientInfo?.toBuilder();
      _orderDetails = $v.orderDetails.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserOrderResponse other) {
    _$v = other as _$UserOrderResponse;
  }

  @override
  void update(void Function(UserOrderResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserOrderResponse build() => _build();

  _$UserOrderResponse _build() {
    _$UserOrderResponse _$result;
    try {
      _$result =
          _$v ??
          _$UserOrderResponse._(
            id: id,
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'UserOrderResponse',
              'code',
            ),
            type: type,
            status: status,
            isReturnable: isReturnable,
            paymentStatus: paymentStatus,
            totalAmount: totalAmount,
            voucherCode: voucherCode,
            paymentExpiresAt: paymentExpiresAt,
            paidAt: paidAt,
            createdAt: createdAt,
            updatedAt: updatedAt,
            paymentTransactions: _paymentTransactions?.build(),
            shippingInfo: _shippingInfo?.build(),
            recipientInfo: _recipientInfo?.build(),
            orderDetails: orderDetails.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'paymentTransactions';
        _paymentTransactions?.build();
        _$failedField = 'shippingInfo';
        _shippingInfo?.build();
        _$failedField = 'recipientInfo';
        _recipientInfo?.build();
        _$failedField = 'orderDetails';
        orderDetails.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserOrderResponse',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
