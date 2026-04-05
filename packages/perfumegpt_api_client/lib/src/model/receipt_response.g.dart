// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReceiptResponse extends ReceiptResponse {
  @override
  final String? orderId;
  @override
  final String code;
  @override
  final DateTime? orderDate;
  @override
  final String orderStatus;
  @override
  final String staffName;
  @override
  final String customerName;
  @override
  final String recipientPhone;
  @override
  final String recipientAddress;
  @override
  final BuiltList<ReceiptItemDto> items;
  @override
  final num? subtotal;
  @override
  final num? discount;
  @override
  final num? tax;
  @override
  final num? total;
  @override
  final String paymentMethod;
  @override
  final String? note;

  factory _$ReceiptResponse([void Function(ReceiptResponseBuilder)? updates]) =>
      (ReceiptResponseBuilder()..update(updates))._build();

  _$ReceiptResponse._({
    this.orderId,
    required this.code,
    this.orderDate,
    required this.orderStatus,
    required this.staffName,
    required this.customerName,
    required this.recipientPhone,
    required this.recipientAddress,
    required this.items,
    this.subtotal,
    this.discount,
    this.tax,
    this.total,
    required this.paymentMethod,
    this.note,
  }) : super._();
  @override
  ReceiptResponse rebuild(void Function(ReceiptResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReceiptResponseBuilder toBuilder() => ReceiptResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReceiptResponse &&
        orderId == other.orderId &&
        code == other.code &&
        orderDate == other.orderDate &&
        orderStatus == other.orderStatus &&
        staffName == other.staffName &&
        customerName == other.customerName &&
        recipientPhone == other.recipientPhone &&
        recipientAddress == other.recipientAddress &&
        items == other.items &&
        subtotal == other.subtotal &&
        discount == other.discount &&
        tax == other.tax &&
        total == other.total &&
        paymentMethod == other.paymentMethod &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, orderDate.hashCode);
    _$hash = $jc(_$hash, orderStatus.hashCode);
    _$hash = $jc(_$hash, staffName.hashCode);
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, recipientPhone.hashCode);
    _$hash = $jc(_$hash, recipientAddress.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, subtotal.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, tax.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, paymentMethod.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReceiptResponse')
          ..add('orderId', orderId)
          ..add('code', code)
          ..add('orderDate', orderDate)
          ..add('orderStatus', orderStatus)
          ..add('staffName', staffName)
          ..add('customerName', customerName)
          ..add('recipientPhone', recipientPhone)
          ..add('recipientAddress', recipientAddress)
          ..add('items', items)
          ..add('subtotal', subtotal)
          ..add('discount', discount)
          ..add('tax', tax)
          ..add('total', total)
          ..add('paymentMethod', paymentMethod)
          ..add('note', note))
        .toString();
  }
}

class ReceiptResponseBuilder
    implements Builder<ReceiptResponse, ReceiptResponseBuilder> {
  _$ReceiptResponse? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  DateTime? _orderDate;
  DateTime? get orderDate => _$this._orderDate;
  set orderDate(DateTime? orderDate) => _$this._orderDate = orderDate;

  String? _orderStatus;
  String? get orderStatus => _$this._orderStatus;
  set orderStatus(String? orderStatus) => _$this._orderStatus = orderStatus;

  String? _staffName;
  String? get staffName => _$this._staffName;
  set staffName(String? staffName) => _$this._staffName = staffName;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _recipientPhone;
  String? get recipientPhone => _$this._recipientPhone;
  set recipientPhone(String? recipientPhone) =>
      _$this._recipientPhone = recipientPhone;

  String? _recipientAddress;
  String? get recipientAddress => _$this._recipientAddress;
  set recipientAddress(String? recipientAddress) =>
      _$this._recipientAddress = recipientAddress;

  ListBuilder<ReceiptItemDto>? _items;
  ListBuilder<ReceiptItemDto> get items =>
      _$this._items ??= ListBuilder<ReceiptItemDto>();
  set items(ListBuilder<ReceiptItemDto>? items) => _$this._items = items;

  num? _subtotal;
  num? get subtotal => _$this._subtotal;
  set subtotal(num? subtotal) => _$this._subtotal = subtotal;

  num? _discount;
  num? get discount => _$this._discount;
  set discount(num? discount) => _$this._discount = discount;

  num? _tax;
  num? get tax => _$this._tax;
  set tax(num? tax) => _$this._tax = tax;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  ReceiptResponseBuilder() {
    ReceiptResponse._defaults(this);
  }

  ReceiptResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _code = $v.code;
      _orderDate = $v.orderDate;
      _orderStatus = $v.orderStatus;
      _staffName = $v.staffName;
      _customerName = $v.customerName;
      _recipientPhone = $v.recipientPhone;
      _recipientAddress = $v.recipientAddress;
      _items = $v.items.toBuilder();
      _subtotal = $v.subtotal;
      _discount = $v.discount;
      _tax = $v.tax;
      _total = $v.total;
      _paymentMethod = $v.paymentMethod;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReceiptResponse other) {
    _$v = other as _$ReceiptResponse;
  }

  @override
  void update(void Function(ReceiptResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReceiptResponse build() => _build();

  _$ReceiptResponse _build() {
    _$ReceiptResponse _$result;
    try {
      _$result =
          _$v ??
          _$ReceiptResponse._(
            orderId: orderId,
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'ReceiptResponse',
              'code',
            ),
            orderDate: orderDate,
            orderStatus: BuiltValueNullFieldError.checkNotNull(
              orderStatus,
              r'ReceiptResponse',
              'orderStatus',
            ),
            staffName: BuiltValueNullFieldError.checkNotNull(
              staffName,
              r'ReceiptResponse',
              'staffName',
            ),
            customerName: BuiltValueNullFieldError.checkNotNull(
              customerName,
              r'ReceiptResponse',
              'customerName',
            ),
            recipientPhone: BuiltValueNullFieldError.checkNotNull(
              recipientPhone,
              r'ReceiptResponse',
              'recipientPhone',
            ),
            recipientAddress: BuiltValueNullFieldError.checkNotNull(
              recipientAddress,
              r'ReceiptResponse',
              'recipientAddress',
            ),
            items: items.build(),
            subtotal: subtotal,
            discount: discount,
            tax: tax,
            total: total,
            paymentMethod: BuiltValueNullFieldError.checkNotNull(
              paymentMethod,
              r'ReceiptResponse',
              'paymentMethod',
            ),
            note: note,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReceiptResponse',
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
