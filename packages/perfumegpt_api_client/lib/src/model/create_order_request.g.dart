// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateOrderRequest extends CreateOrderRequest {
  @override
  final String? voucherCode;
  @override
  final BuiltList<String>? itemIds;
  @override
  final num? expectedTotalPrice;
  @override
  final DeliveryMethod? deliveryMethod;
  @override
  final String? savedAddressId;
  @override
  final ContactAddressInformation? recipient;
  @override
  final PaymentInformation payment;

  factory _$CreateOrderRequest([
    void Function(CreateOrderRequestBuilder)? updates,
  ]) => (CreateOrderRequestBuilder()..update(updates))._build();

  _$CreateOrderRequest._({
    this.voucherCode,
    this.itemIds,
    this.expectedTotalPrice,
    this.deliveryMethod,
    this.savedAddressId,
    this.recipient,
    required this.payment,
  }) : super._();
  @override
  CreateOrderRequest rebuild(
    void Function(CreateOrderRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateOrderRequestBuilder toBuilder() =>
      CreateOrderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateOrderRequest &&
        voucherCode == other.voucherCode &&
        itemIds == other.itemIds &&
        expectedTotalPrice == other.expectedTotalPrice &&
        deliveryMethod == other.deliveryMethod &&
        savedAddressId == other.savedAddressId &&
        recipient == other.recipient &&
        payment == other.payment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, voucherCode.hashCode);
    _$hash = $jc(_$hash, itemIds.hashCode);
    _$hash = $jc(_$hash, expectedTotalPrice.hashCode);
    _$hash = $jc(_$hash, deliveryMethod.hashCode);
    _$hash = $jc(_$hash, savedAddressId.hashCode);
    _$hash = $jc(_$hash, recipient.hashCode);
    _$hash = $jc(_$hash, payment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateOrderRequest')
          ..add('voucherCode', voucherCode)
          ..add('itemIds', itemIds)
          ..add('expectedTotalPrice', expectedTotalPrice)
          ..add('deliveryMethod', deliveryMethod)
          ..add('savedAddressId', savedAddressId)
          ..add('recipient', recipient)
          ..add('payment', payment))
        .toString();
  }
}

class CreateOrderRequestBuilder
    implements Builder<CreateOrderRequest, CreateOrderRequestBuilder> {
  _$CreateOrderRequest? _$v;

  String? _voucherCode;
  String? get voucherCode => _$this._voucherCode;
  set voucherCode(String? voucherCode) => _$this._voucherCode = voucherCode;

  ListBuilder<String>? _itemIds;
  ListBuilder<String> get itemIds => _$this._itemIds ??= ListBuilder<String>();
  set itemIds(ListBuilder<String>? itemIds) => _$this._itemIds = itemIds;

  num? _expectedTotalPrice;
  num? get expectedTotalPrice => _$this._expectedTotalPrice;
  set expectedTotalPrice(num? expectedTotalPrice) =>
      _$this._expectedTotalPrice = expectedTotalPrice;

  DeliveryMethod? _deliveryMethod;
  DeliveryMethod? get deliveryMethod => _$this._deliveryMethod;
  set deliveryMethod(DeliveryMethod? deliveryMethod) =>
      _$this._deliveryMethod = deliveryMethod;

  String? _savedAddressId;
  String? get savedAddressId => _$this._savedAddressId;
  set savedAddressId(String? savedAddressId) =>
      _$this._savedAddressId = savedAddressId;

  ContactAddressInformationBuilder? _recipient;
  ContactAddressInformationBuilder get recipient =>
      _$this._recipient ??= ContactAddressInformationBuilder();
  set recipient(ContactAddressInformationBuilder? recipient) =>
      _$this._recipient = recipient;

  PaymentInformationBuilder? _payment;
  PaymentInformationBuilder get payment =>
      _$this._payment ??= PaymentInformationBuilder();
  set payment(PaymentInformationBuilder? payment) => _$this._payment = payment;

  CreateOrderRequestBuilder() {
    CreateOrderRequest._defaults(this);
  }

  CreateOrderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _voucherCode = $v.voucherCode;
      _itemIds = $v.itemIds?.toBuilder();
      _expectedTotalPrice = $v.expectedTotalPrice;
      _deliveryMethod = $v.deliveryMethod;
      _savedAddressId = $v.savedAddressId;
      _recipient = $v.recipient?.toBuilder();
      _payment = $v.payment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateOrderRequest other) {
    _$v = other as _$CreateOrderRequest;
  }

  @override
  void update(void Function(CreateOrderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOrderRequest build() => _build();

  _$CreateOrderRequest _build() {
    _$CreateOrderRequest _$result;
    try {
      _$result =
          _$v ??
          _$CreateOrderRequest._(
            voucherCode: voucherCode,
            itemIds: _itemIds?.build(),
            expectedTotalPrice: expectedTotalPrice,
            deliveryMethod: deliveryMethod,
            savedAddressId: savedAddressId,
            recipient: _recipient?.build(),
            payment: payment.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'itemIds';
        _itemIds?.build();

        _$failedField = 'recipient';
        _recipient?.build();
        _$failedField = 'payment';
        payment.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CreateOrderRequest',
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
