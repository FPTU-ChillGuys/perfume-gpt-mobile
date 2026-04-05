// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fulfill_order_item_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FulfillOrderItemRequest extends FulfillOrderItemRequest {
  @override
  final String orderDetailId;
  @override
  final String scannedBatchCode;
  @override
  final int? quantity;

  factory _$FulfillOrderItemRequest([
    void Function(FulfillOrderItemRequestBuilder)? updates,
  ]) => (FulfillOrderItemRequestBuilder()..update(updates))._build();

  _$FulfillOrderItemRequest._({
    required this.orderDetailId,
    required this.scannedBatchCode,
    this.quantity,
  }) : super._();
  @override
  FulfillOrderItemRequest rebuild(
    void Function(FulfillOrderItemRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FulfillOrderItemRequestBuilder toBuilder() =>
      FulfillOrderItemRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FulfillOrderItemRequest &&
        orderDetailId == other.orderDetailId &&
        scannedBatchCode == other.scannedBatchCode &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderDetailId.hashCode);
    _$hash = $jc(_$hash, scannedBatchCode.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FulfillOrderItemRequest')
          ..add('orderDetailId', orderDetailId)
          ..add('scannedBatchCode', scannedBatchCode)
          ..add('quantity', quantity))
        .toString();
  }
}

class FulfillOrderItemRequestBuilder
    implements
        Builder<FulfillOrderItemRequest, FulfillOrderItemRequestBuilder> {
  _$FulfillOrderItemRequest? _$v;

  String? _orderDetailId;
  String? get orderDetailId => _$this._orderDetailId;
  set orderDetailId(String? orderDetailId) =>
      _$this._orderDetailId = orderDetailId;

  String? _scannedBatchCode;
  String? get scannedBatchCode => _$this._scannedBatchCode;
  set scannedBatchCode(String? scannedBatchCode) =>
      _$this._scannedBatchCode = scannedBatchCode;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  FulfillOrderItemRequestBuilder() {
    FulfillOrderItemRequest._defaults(this);
  }

  FulfillOrderItemRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderDetailId = $v.orderDetailId;
      _scannedBatchCode = $v.scannedBatchCode;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FulfillOrderItemRequest other) {
    _$v = other as _$FulfillOrderItemRequest;
  }

  @override
  void update(void Function(FulfillOrderItemRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FulfillOrderItemRequest build() => _build();

  _$FulfillOrderItemRequest _build() {
    final _$result =
        _$v ??
        _$FulfillOrderItemRequest._(
          orderDetailId: BuiltValueNullFieldError.checkNotNull(
            orderDetailId,
            r'FulfillOrderItemRequest',
            'orderDetailId',
          ),
          scannedBatchCode: BuiltValueNullFieldError.checkNotNull(
            scannedBatchCode,
            r'FulfillOrderItemRequest',
            'scannedBatchCode',
          ),
          quantity: quantity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
