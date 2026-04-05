// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderResponse extends OrderResponse {
  @override
  final String? id;
  @override
  final String code;
  @override
  final String? customerId;
  @override
  final String? customerName;
  @override
  final String? customerEmail;
  @override
  final String? staffId;
  @override
  final String? staffName;
  @override
  final OrderType? type;
  @override
  final OrderStatus? status;
  @override
  final PaymentStatus? paymentStatus;
  @override
  final num? totalAmount;
  @override
  final String? voucherId;
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

  factory _$OrderResponse([void Function(OrderResponseBuilder)? updates]) =>
      (OrderResponseBuilder()..update(updates))._build();

  _$OrderResponse._({
    this.id,
    required this.code,
    this.customerId,
    this.customerName,
    this.customerEmail,
    this.staffId,
    this.staffName,
    this.type,
    this.status,
    this.paymentStatus,
    this.totalAmount,
    this.voucherId,
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
  OrderResponse rebuild(void Function(OrderResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderResponseBuilder toBuilder() => OrderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderResponse &&
        id == other.id &&
        code == other.code &&
        customerId == other.customerId &&
        customerName == other.customerName &&
        customerEmail == other.customerEmail &&
        staffId == other.staffId &&
        staffName == other.staffName &&
        type == other.type &&
        status == other.status &&
        paymentStatus == other.paymentStatus &&
        totalAmount == other.totalAmount &&
        voucherId == other.voucherId &&
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
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerEmail.hashCode);
    _$hash = $jc(_$hash, staffId.hashCode);
    _$hash = $jc(_$hash, staffName.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, voucherId.hashCode);
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
    return (newBuiltValueToStringHelper(r'OrderResponse')
          ..add('id', id)
          ..add('code', code)
          ..add('customerId', customerId)
          ..add('customerName', customerName)
          ..add('customerEmail', customerEmail)
          ..add('staffId', staffId)
          ..add('staffName', staffName)
          ..add('type', type)
          ..add('status', status)
          ..add('paymentStatus', paymentStatus)
          ..add('totalAmount', totalAmount)
          ..add('voucherId', voucherId)
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

class OrderResponseBuilder
    implements Builder<OrderResponse, OrderResponseBuilder> {
  _$OrderResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _customerEmail;
  String? get customerEmail => _$this._customerEmail;
  set customerEmail(String? customerEmail) =>
      _$this._customerEmail = customerEmail;

  String? _staffId;
  String? get staffId => _$this._staffId;
  set staffId(String? staffId) => _$this._staffId = staffId;

  String? _staffName;
  String? get staffName => _$this._staffName;
  set staffName(String? staffName) => _$this._staffName = staffName;

  OrderType? _type;
  OrderType? get type => _$this._type;
  set type(OrderType? type) => _$this._type = type;

  OrderStatus? _status;
  OrderStatus? get status => _$this._status;
  set status(OrderStatus? status) => _$this._status = status;

  PaymentStatus? _paymentStatus;
  PaymentStatus? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(PaymentStatus? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  num? _totalAmount;
  num? get totalAmount => _$this._totalAmount;
  set totalAmount(num? totalAmount) => _$this._totalAmount = totalAmount;

  String? _voucherId;
  String? get voucherId => _$this._voucherId;
  set voucherId(String? voucherId) => _$this._voucherId = voucherId;

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

  OrderResponseBuilder() {
    OrderResponse._defaults(this);
  }

  OrderResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _customerId = $v.customerId;
      _customerName = $v.customerName;
      _customerEmail = $v.customerEmail;
      _staffId = $v.staffId;
      _staffName = $v.staffName;
      _type = $v.type;
      _status = $v.status;
      _paymentStatus = $v.paymentStatus;
      _totalAmount = $v.totalAmount;
      _voucherId = $v.voucherId;
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
  void replace(OrderResponse other) {
    _$v = other as _$OrderResponse;
  }

  @override
  void update(void Function(OrderResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderResponse build() => _build();

  _$OrderResponse _build() {
    _$OrderResponse _$result;
    try {
      _$result =
          _$v ??
          _$OrderResponse._(
            id: id,
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'OrderResponse',
              'code',
            ),
            customerId: customerId,
            customerName: customerName,
            customerEmail: customerEmail,
            staffId: staffId,
            staffName: staffName,
            type: type,
            status: status,
            paymentStatus: paymentStatus,
            totalAmount: totalAmount,
            voucherId: voucherId,
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
          r'OrderResponse',
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
