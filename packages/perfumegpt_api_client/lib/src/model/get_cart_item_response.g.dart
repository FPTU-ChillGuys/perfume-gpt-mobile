// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_item_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCartItemResponse extends GetCartItemResponse {
  @override
  final String? cartItemId;
  @override
  final String? variantId;
  @override
  final String variantName;
  @override
  final String imageUrl;
  @override
  final int? volumeMl;
  @override
  final VariantType? type;
  @override
  final num? variantPrice;
  @override
  final int? quantity;
  @override
  final bool? isAvailable;
  @override
  final num? subTotal;

  factory _$GetCartItemResponse([
    void Function(GetCartItemResponseBuilder)? updates,
  ]) => (GetCartItemResponseBuilder()..update(updates))._build();

  _$GetCartItemResponse._({
    this.cartItemId,
    this.variantId,
    required this.variantName,
    required this.imageUrl,
    this.volumeMl,
    this.type,
    this.variantPrice,
    this.quantity,
    this.isAvailable,
    this.subTotal,
  }) : super._();
  @override
  GetCartItemResponse rebuild(
    void Function(GetCartItemResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetCartItemResponseBuilder toBuilder() =>
      GetCartItemResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCartItemResponse &&
        cartItemId == other.cartItemId &&
        variantId == other.variantId &&
        variantName == other.variantName &&
        imageUrl == other.imageUrl &&
        volumeMl == other.volumeMl &&
        type == other.type &&
        variantPrice == other.variantPrice &&
        quantity == other.quantity &&
        isAvailable == other.isAvailable &&
        subTotal == other.subTotal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cartItemId.hashCode);
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, variantName.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, volumeMl.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, variantPrice.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, isAvailable.hashCode);
    _$hash = $jc(_$hash, subTotal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetCartItemResponse')
          ..add('cartItemId', cartItemId)
          ..add('variantId', variantId)
          ..add('variantName', variantName)
          ..add('imageUrl', imageUrl)
          ..add('volumeMl', volumeMl)
          ..add('type', type)
          ..add('variantPrice', variantPrice)
          ..add('quantity', quantity)
          ..add('isAvailable', isAvailable)
          ..add('subTotal', subTotal))
        .toString();
  }
}

class GetCartItemResponseBuilder
    implements Builder<GetCartItemResponse, GetCartItemResponseBuilder> {
  _$GetCartItemResponse? _$v;

  String? _cartItemId;
  String? get cartItemId => _$this._cartItemId;
  set cartItemId(String? cartItemId) => _$this._cartItemId = cartItemId;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  String? _variantName;
  String? get variantName => _$this._variantName;
  set variantName(String? variantName) => _$this._variantName = variantName;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  int? _volumeMl;
  int? get volumeMl => _$this._volumeMl;
  set volumeMl(int? volumeMl) => _$this._volumeMl = volumeMl;

  VariantType? _type;
  VariantType? get type => _$this._type;
  set type(VariantType? type) => _$this._type = type;

  num? _variantPrice;
  num? get variantPrice => _$this._variantPrice;
  set variantPrice(num? variantPrice) => _$this._variantPrice = variantPrice;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  bool? _isAvailable;
  bool? get isAvailable => _$this._isAvailable;
  set isAvailable(bool? isAvailable) => _$this._isAvailable = isAvailable;

  num? _subTotal;
  num? get subTotal => _$this._subTotal;
  set subTotal(num? subTotal) => _$this._subTotal = subTotal;

  GetCartItemResponseBuilder() {
    GetCartItemResponse._defaults(this);
  }

  GetCartItemResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cartItemId = $v.cartItemId;
      _variantId = $v.variantId;
      _variantName = $v.variantName;
      _imageUrl = $v.imageUrl;
      _volumeMl = $v.volumeMl;
      _type = $v.type;
      _variantPrice = $v.variantPrice;
      _quantity = $v.quantity;
      _isAvailable = $v.isAvailable;
      _subTotal = $v.subTotal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCartItemResponse other) {
    _$v = other as _$GetCartItemResponse;
  }

  @override
  void update(void Function(GetCartItemResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCartItemResponse build() => _build();

  _$GetCartItemResponse _build() {
    final _$result =
        _$v ??
        _$GetCartItemResponse._(
          cartItemId: cartItemId,
          variantId: variantId,
          variantName: BuiltValueNullFieldError.checkNotNull(
            variantName,
            r'GetCartItemResponse',
            'variantName',
          ),
          imageUrl: BuiltValueNullFieldError.checkNotNull(
            imageUrl,
            r'GetCartItemResponse',
            'imageUrl',
          ),
          volumeMl: volumeMl,
          type: type,
          variantPrice: variantPrice,
          quantity: quantity,
          isAvailable: isAvailable,
          subTotal: subTotal,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
