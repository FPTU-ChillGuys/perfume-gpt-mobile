// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderListItem extends OrderListItem {
  @override
  final String? id;
  @override
  final String code;
  @override
  final String? customerId;
  @override
  final String? customerName;
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
  final int? itemCount;
  @override
  final bool? isReturnalbe;
  @override
  final ShippingStatus? shippingStatus;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final BuiltList<OrderDetailListItem> orderDetails;

  factory _$OrderListItem([void Function(OrderListItemBuilder)? updates]) =>
      (OrderListItemBuilder()..update(updates))._build();

  _$OrderListItem._({
    this.id,
    required this.code,
    this.customerId,
    this.customerName,
    this.staffId,
    this.staffName,
    this.type,
    this.status,
    this.paymentStatus,
    this.totalAmount,
    this.itemCount,
    this.isReturnalbe,
    this.shippingStatus,
    this.createdAt,
    this.updatedAt,
    required this.orderDetails,
  }) : super._();
  @override
  OrderListItem rebuild(void Function(OrderListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderListItemBuilder toBuilder() => OrderListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderListItem &&
        id == other.id &&
        code == other.code &&
        customerId == other.customerId &&
        customerName == other.customerName &&
        staffId == other.staffId &&
        staffName == other.staffName &&
        type == other.type &&
        status == other.status &&
        paymentStatus == other.paymentStatus &&
        totalAmount == other.totalAmount &&
        itemCount == other.itemCount &&
        isReturnalbe == other.isReturnalbe &&
        shippingStatus == other.shippingStatus &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        orderDetails == other.orderDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, staffId.hashCode);
    _$hash = $jc(_$hash, staffName.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, paymentStatus.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, itemCount.hashCode);
    _$hash = $jc(_$hash, isReturnalbe.hashCode);
    _$hash = $jc(_$hash, shippingStatus.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, orderDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderListItem')
          ..add('id', id)
          ..add('code', code)
          ..add('customerId', customerId)
          ..add('customerName', customerName)
          ..add('staffId', staffId)
          ..add('staffName', staffName)
          ..add('type', type)
          ..add('status', status)
          ..add('paymentStatus', paymentStatus)
          ..add('totalAmount', totalAmount)
          ..add('itemCount', itemCount)
          ..add('isReturnalbe', isReturnalbe)
          ..add('shippingStatus', shippingStatus)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('orderDetails', orderDetails))
        .toString();
  }
}

class OrderListItemBuilder
    implements Builder<OrderListItem, OrderListItemBuilder> {
  _$OrderListItem? _$v;

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

  int? _itemCount;
  int? get itemCount => _$this._itemCount;
  set itemCount(int? itemCount) => _$this._itemCount = itemCount;

  bool? _isReturnalbe;
  bool? get isReturnalbe => _$this._isReturnalbe;
  set isReturnalbe(bool? isReturnalbe) => _$this._isReturnalbe = isReturnalbe;

  ShippingStatus? _shippingStatus;
  ShippingStatus? get shippingStatus => _$this._shippingStatus;
  set shippingStatus(ShippingStatus? shippingStatus) =>
      _$this._shippingStatus = shippingStatus;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ListBuilder<OrderDetailListItem>? _orderDetails;
  ListBuilder<OrderDetailListItem> get orderDetails =>
      _$this._orderDetails ??= ListBuilder<OrderDetailListItem>();
  set orderDetails(ListBuilder<OrderDetailListItem>? orderDetails) =>
      _$this._orderDetails = orderDetails;

  OrderListItemBuilder() {
    OrderListItem._defaults(this);
  }

  OrderListItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _customerId = $v.customerId;
      _customerName = $v.customerName;
      _staffId = $v.staffId;
      _staffName = $v.staffName;
      _type = $v.type;
      _status = $v.status;
      _paymentStatus = $v.paymentStatus;
      _totalAmount = $v.totalAmount;
      _itemCount = $v.itemCount;
      _isReturnalbe = $v.isReturnalbe;
      _shippingStatus = $v.shippingStatus;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _orderDetails = $v.orderDetails.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderListItem other) {
    _$v = other as _$OrderListItem;
  }

  @override
  void update(void Function(OrderListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderListItem build() => _build();

  _$OrderListItem _build() {
    _$OrderListItem _$result;
    try {
      _$result =
          _$v ??
          _$OrderListItem._(
            id: id,
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'OrderListItem',
              'code',
            ),
            customerId: customerId,
            customerName: customerName,
            staffId: staffId,
            staffName: staffName,
            type: type,
            status: status,
            paymentStatus: paymentStatus,
            totalAmount: totalAmount,
            itemCount: itemCount,
            isReturnalbe: isReturnalbe,
            shippingStatus: shippingStatus,
            createdAt: createdAt,
            updatedAt: updatedAt,
            orderDetails: orderDetails.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderDetails';
        orderDetails.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OrderListItem',
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
