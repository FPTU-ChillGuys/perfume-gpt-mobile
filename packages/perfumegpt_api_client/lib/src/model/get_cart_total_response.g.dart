// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_total_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCartTotalResponse extends GetCartTotalResponse {
  @override
  final num? subtotal;
  @override
  final num? shippingFee;
  @override
  final num? discount;
  @override
  final num? totalPrice;

  factory _$GetCartTotalResponse([
    void Function(GetCartTotalResponseBuilder)? updates,
  ]) => (GetCartTotalResponseBuilder()..update(updates))._build();

  _$GetCartTotalResponse._({
    this.subtotal,
    this.shippingFee,
    this.discount,
    this.totalPrice,
  }) : super._();
  @override
  GetCartTotalResponse rebuild(
    void Function(GetCartTotalResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetCartTotalResponseBuilder toBuilder() =>
      GetCartTotalResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCartTotalResponse &&
        subtotal == other.subtotal &&
        shippingFee == other.shippingFee &&
        discount == other.discount &&
        totalPrice == other.totalPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subtotal.hashCode);
    _$hash = $jc(_$hash, shippingFee.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCartTotalResponse')
          ..add('subtotal', subtotal)
          ..add('shippingFee', shippingFee)
          ..add('discount', discount)
          ..add('totalPrice', totalPrice))
        .toString();
  }
}

class GetCartTotalResponseBuilder
    implements Builder<GetCartTotalResponse, GetCartTotalResponseBuilder> {
  _$GetCartTotalResponse? _$v;

  num? _subtotal;
  num? get subtotal => _$this._subtotal;
  set subtotal(num? subtotal) => _$this._subtotal = subtotal;

  num? _shippingFee;
  num? get shippingFee => _$this._shippingFee;
  set shippingFee(num? shippingFee) => _$this._shippingFee = shippingFee;

  num? _discount;
  num? get discount => _$this._discount;
  set discount(num? discount) => _$this._discount = discount;

  num? _totalPrice;
  num? get totalPrice => _$this._totalPrice;
  set totalPrice(num? totalPrice) => _$this._totalPrice = totalPrice;

  GetCartTotalResponseBuilder() {
    GetCartTotalResponse._defaults(this);
  }

  GetCartTotalResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subtotal = $v.subtotal;
      _shippingFee = $v.shippingFee;
      _discount = $v.discount;
      _totalPrice = $v.totalPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCartTotalResponse other) {
    _$v = other as _$GetCartTotalResponse;
  }

  @override
  void update(void Function(GetCartTotalResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCartTotalResponse build() => _build();

  _$GetCartTotalResponse _build() {
    final _$result =
        _$v ??
        _$GetCartTotalResponse._(
          subtotal: subtotal,
          shippingFee: shippingFee,
          discount: discount,
          totalPrice: totalPrice,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
