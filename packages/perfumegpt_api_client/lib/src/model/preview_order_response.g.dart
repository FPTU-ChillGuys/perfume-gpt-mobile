// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preview_order_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreviewOrderResponse extends PreviewOrderResponse {
  @override
  final BuiltList<OrderDetailListItems> items;
  @override
  final num? subTotal;
  @override
  final num? shippingFee;
  @override
  final num? discount;
  @override
  final num? total;

  factory _$PreviewOrderResponse([
    void Function(PreviewOrderResponseBuilder)? updates,
  ]) => (PreviewOrderResponseBuilder()..update(updates))._build();

  _$PreviewOrderResponse._({
    required this.items,
    this.subTotal,
    this.shippingFee,
    this.discount,
    this.total,
  }) : super._();
  @override
  PreviewOrderResponse rebuild(
    void Function(PreviewOrderResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PreviewOrderResponseBuilder toBuilder() =>
      PreviewOrderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreviewOrderResponse &&
        items == other.items &&
        subTotal == other.subTotal &&
        shippingFee == other.shippingFee &&
        discount == other.discount &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, subTotal.hashCode);
    _$hash = $jc(_$hash, shippingFee.hashCode);
    _$hash = $jc(_$hash, discount.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreviewOrderResponse')
          ..add('items', items)
          ..add('subTotal', subTotal)
          ..add('shippingFee', shippingFee)
          ..add('discount', discount)
          ..add('total', total))
        .toString();
  }
}

class PreviewOrderResponseBuilder
    implements Builder<PreviewOrderResponse, PreviewOrderResponseBuilder> {
  _$PreviewOrderResponse? _$v;

  ListBuilder<OrderDetailListItems>? _items;
  ListBuilder<OrderDetailListItems> get items =>
      _$this._items ??= ListBuilder<OrderDetailListItems>();
  set items(ListBuilder<OrderDetailListItems>? items) => _$this._items = items;

  num? _subTotal;
  num? get subTotal => _$this._subTotal;
  set subTotal(num? subTotal) => _$this._subTotal = subTotal;

  num? _shippingFee;
  num? get shippingFee => _$this._shippingFee;
  set shippingFee(num? shippingFee) => _$this._shippingFee = shippingFee;

  num? _discount;
  num? get discount => _$this._discount;
  set discount(num? discount) => _$this._discount = discount;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  PreviewOrderResponseBuilder() {
    PreviewOrderResponse._defaults(this);
  }

  PreviewOrderResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _subTotal = $v.subTotal;
      _shippingFee = $v.shippingFee;
      _discount = $v.discount;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreviewOrderResponse other) {
    _$v = other as _$PreviewOrderResponse;
  }

  @override
  void update(void Function(PreviewOrderResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreviewOrderResponse build() => _build();

  _$PreviewOrderResponse _build() {
    _$PreviewOrderResponse _$result;
    try {
      _$result =
          _$v ??
          _$PreviewOrderResponse._(
            items: items.build(),
            subTotal: subTotal,
            shippingFee: shippingFee,
            discount: discount,
            total: total,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PreviewOrderResponse',
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
