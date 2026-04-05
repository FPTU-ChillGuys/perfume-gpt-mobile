// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_return_request_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderReturnRequestDetailResponse
    extends OrderReturnRequestDetailResponse {
  @override
  final String? id;
  @override
  final String? orderDetailId;
  @override
  final String? variantId;
  @override
  final int? requestedQuantity;
  @override
  final num? unitPrice;
  @override
  final num? refundableAmount;

  factory _$OrderReturnRequestDetailResponse([
    void Function(OrderReturnRequestDetailResponseBuilder)? updates,
  ]) => (OrderReturnRequestDetailResponseBuilder()..update(updates))._build();

  _$OrderReturnRequestDetailResponse._({
    this.id,
    this.orderDetailId,
    this.variantId,
    this.requestedQuantity,
    this.unitPrice,
    this.refundableAmount,
  }) : super._();
  @override
  OrderReturnRequestDetailResponse rebuild(
    void Function(OrderReturnRequestDetailResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OrderReturnRequestDetailResponseBuilder toBuilder() =>
      OrderReturnRequestDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderReturnRequestDetailResponse &&
        id == other.id &&
        orderDetailId == other.orderDetailId &&
        variantId == other.variantId &&
        requestedQuantity == other.requestedQuantity &&
        unitPrice == other.unitPrice &&
        refundableAmount == other.refundableAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderDetailId.hashCode);
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, requestedQuantity.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, refundableAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderReturnRequestDetailResponse')
          ..add('id', id)
          ..add('orderDetailId', orderDetailId)
          ..add('variantId', variantId)
          ..add('requestedQuantity', requestedQuantity)
          ..add('unitPrice', unitPrice)
          ..add('refundableAmount', refundableAmount))
        .toString();
  }
}

class OrderReturnRequestDetailResponseBuilder
    implements
        Builder<
          OrderReturnRequestDetailResponse,
          OrderReturnRequestDetailResponseBuilder
        > {
  _$OrderReturnRequestDetailResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _orderDetailId;
  String? get orderDetailId => _$this._orderDetailId;
  set orderDetailId(String? orderDetailId) =>
      _$this._orderDetailId = orderDetailId;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  int? _requestedQuantity;
  int? get requestedQuantity => _$this._requestedQuantity;
  set requestedQuantity(int? requestedQuantity) =>
      _$this._requestedQuantity = requestedQuantity;

  num? _unitPrice;
  num? get unitPrice => _$this._unitPrice;
  set unitPrice(num? unitPrice) => _$this._unitPrice = unitPrice;

  num? _refundableAmount;
  num? get refundableAmount => _$this._refundableAmount;
  set refundableAmount(num? refundableAmount) =>
      _$this._refundableAmount = refundableAmount;

  OrderReturnRequestDetailResponseBuilder() {
    OrderReturnRequestDetailResponse._defaults(this);
  }

  OrderReturnRequestDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderDetailId = $v.orderDetailId;
      _variantId = $v.variantId;
      _requestedQuantity = $v.requestedQuantity;
      _unitPrice = $v.unitPrice;
      _refundableAmount = $v.refundableAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderReturnRequestDetailResponse other) {
    _$v = other as _$OrderReturnRequestDetailResponse;
  }

  @override
  void update(void Function(OrderReturnRequestDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderReturnRequestDetailResponse build() => _build();

  _$OrderReturnRequestDetailResponse _build() {
    final _$result =
        _$v ??
        _$OrderReturnRequestDetailResponse._(
          id: id,
          orderDetailId: orderDetailId,
          variantId: variantId,
          requestedQuantity: requestedQuantity,
          unitPrice: unitPrice,
          refundableAmount: refundableAmount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
