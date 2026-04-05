// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_in_store_order_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateInStoreOrderRequest extends CreateInStoreOrderRequest {
  @override
  final String? voucherCode;
  @override
  final bool? isPickupInStore;
  @override
  final BuiltList<CreateOrderDetailRequest> orderDetails;
  @override
  final ContactAddressInformation? recipient;
  @override
  final PaymentInformation payment;

  factory _$CreateInStoreOrderRequest([
    void Function(CreateInStoreOrderRequestBuilder)? updates,
  ]) => (CreateInStoreOrderRequestBuilder()..update(updates))._build();

  _$CreateInStoreOrderRequest._({
    this.voucherCode,
    this.isPickupInStore,
    required this.orderDetails,
    this.recipient,
    required this.payment,
  }) : super._();
  @override
  CreateInStoreOrderRequest rebuild(
    void Function(CreateInStoreOrderRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateInStoreOrderRequestBuilder toBuilder() =>
      CreateInStoreOrderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateInStoreOrderRequest &&
        voucherCode == other.voucherCode &&
        isPickupInStore == other.isPickupInStore &&
        orderDetails == other.orderDetails &&
        recipient == other.recipient &&
        payment == other.payment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, voucherCode.hashCode);
    _$hash = $jc(_$hash, isPickupInStore.hashCode);
    _$hash = $jc(_$hash, orderDetails.hashCode);
    _$hash = $jc(_$hash, recipient.hashCode);
    _$hash = $jc(_$hash, payment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateInStoreOrderRequest')
          ..add('voucherCode', voucherCode)
          ..add('isPickupInStore', isPickupInStore)
          ..add('orderDetails', orderDetails)
          ..add('recipient', recipient)
          ..add('payment', payment))
        .toString();
  }
}

class CreateInStoreOrderRequestBuilder
    implements
        Builder<CreateInStoreOrderRequest, CreateInStoreOrderRequestBuilder> {
  _$CreateInStoreOrderRequest? _$v;

  String? _voucherCode;
  String? get voucherCode => _$this._voucherCode;
  set voucherCode(String? voucherCode) => _$this._voucherCode = voucherCode;

  bool? _isPickupInStore;
  bool? get isPickupInStore => _$this._isPickupInStore;
  set isPickupInStore(bool? isPickupInStore) =>
      _$this._isPickupInStore = isPickupInStore;

  ListBuilder<CreateOrderDetailRequest>? _orderDetails;
  ListBuilder<CreateOrderDetailRequest> get orderDetails =>
      _$this._orderDetails ??= ListBuilder<CreateOrderDetailRequest>();
  set orderDetails(ListBuilder<CreateOrderDetailRequest>? orderDetails) =>
      _$this._orderDetails = orderDetails;

  ContactAddressInformationBuilder? _recipient;
  ContactAddressInformationBuilder get recipient =>
      _$this._recipient ??= ContactAddressInformationBuilder();
  set recipient(ContactAddressInformationBuilder? recipient) =>
      _$this._recipient = recipient;

  PaymentInformationBuilder? _payment;
  PaymentInformationBuilder get payment =>
      _$this._payment ??= PaymentInformationBuilder();
  set payment(PaymentInformationBuilder? payment) => _$this._payment = payment;

  CreateInStoreOrderRequestBuilder() {
    CreateInStoreOrderRequest._defaults(this);
  }

  CreateInStoreOrderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _voucherCode = $v.voucherCode;
      _isPickupInStore = $v.isPickupInStore;
      _orderDetails = $v.orderDetails.toBuilder();
      _recipient = $v.recipient?.toBuilder();
      _payment = $v.payment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateInStoreOrderRequest other) {
    _$v = other as _$CreateInStoreOrderRequest;
  }

  @override
  void update(void Function(CreateInStoreOrderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateInStoreOrderRequest build() => _build();

  _$CreateInStoreOrderRequest _build() {
    _$CreateInStoreOrderRequest _$result;
    try {
      _$result =
          _$v ??
          _$CreateInStoreOrderRequest._(
            voucherCode: voucherCode,
            isPickupInStore: isPickupInStore,
            orderDetails: orderDetails.build(),
            recipient: _recipient?.build(),
            payment: payment.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderDetails';
        orderDetails.build();
        _$failedField = 'recipient';
        _recipient?.build();
        _$failedField = 'payment';
        payment.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CreateInStoreOrderRequest',
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
