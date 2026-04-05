// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_list_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderDetailListItems extends OrderDetailListItems {
  @override
  final String? variantId;
  @override
  final String variantName;
  @override
  final String imageUrl;
  @override
  final int? quantity;
  @override
  final int? total;

  factory _$OrderDetailListItems([
    void Function(OrderDetailListItemsBuilder)? updates,
  ]) => (OrderDetailListItemsBuilder()..update(updates))._build();

  _$OrderDetailListItems._({
    this.variantId,
    required this.variantName,
    required this.imageUrl,
    this.quantity,
    this.total,
  }) : super._();
  @override
  OrderDetailListItems rebuild(
    void Function(OrderDetailListItemsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OrderDetailListItemsBuilder toBuilder() =>
      OrderDetailListItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDetailListItems &&
        variantId == other.variantId &&
        variantName == other.variantName &&
        imageUrl == other.imageUrl &&
        quantity == other.quantity &&
        total == other.total;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, variantName.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderDetailListItems')
          ..add('variantId', variantId)
          ..add('variantName', variantName)
          ..add('imageUrl', imageUrl)
          ..add('quantity', quantity)
          ..add('total', total))
        .toString();
  }
}

class OrderDetailListItemsBuilder
    implements Builder<OrderDetailListItems, OrderDetailListItemsBuilder> {
  _$OrderDetailListItems? _$v;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  String? _variantName;
  String? get variantName => _$this._variantName;
  set variantName(String? variantName) => _$this._variantName = variantName;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  OrderDetailListItemsBuilder() {
    OrderDetailListItems._defaults(this);
  }

  OrderDetailListItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _variantId = $v.variantId;
      _variantName = $v.variantName;
      _imageUrl = $v.imageUrl;
      _quantity = $v.quantity;
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDetailListItems other) {
    _$v = other as _$OrderDetailListItems;
  }

  @override
  void update(void Function(OrderDetailListItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderDetailListItems build() => _build();

  _$OrderDetailListItems _build() {
    final _$result =
        _$v ??
        _$OrderDetailListItems._(
          variantId: variantId,
          variantName: BuiltValueNullFieldError.checkNotNull(
            variantName,
            r'OrderDetailListItems',
            'variantName',
          ),
          imageUrl: BuiltValueNullFieldError.checkNotNull(
            imageUrl,
            r'OrderDetailListItems',
            'imageUrl',
          ),
          quantity: quantity,
          total: total,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
