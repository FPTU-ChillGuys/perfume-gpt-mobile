// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReceiptItemDto extends ReceiptItemDto {
  @override
  final String productName;
  @override
  final String variantInfo;
  @override
  final int? quantity;
  @override
  final num? unitPrice;
  @override
  final num? subtotal;

  factory _$ReceiptItemDto([void Function(ReceiptItemDtoBuilder)? updates]) =>
      (ReceiptItemDtoBuilder()..update(updates))._build();

  _$ReceiptItemDto._({
    required this.productName,
    required this.variantInfo,
    this.quantity,
    this.unitPrice,
    this.subtotal,
  }) : super._();
  @override
  ReceiptItemDto rebuild(void Function(ReceiptItemDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReceiptItemDtoBuilder toBuilder() => ReceiptItemDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReceiptItemDto &&
        productName == other.productName &&
        variantInfo == other.variantInfo &&
        quantity == other.quantity &&
        unitPrice == other.unitPrice &&
        subtotal == other.subtotal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, variantInfo.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, subtotal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReceiptItemDto')
          ..add('productName', productName)
          ..add('variantInfo', variantInfo)
          ..add('quantity', quantity)
          ..add('unitPrice', unitPrice)
          ..add('subtotal', subtotal))
        .toString();
  }
}

class ReceiptItemDtoBuilder
    implements Builder<ReceiptItemDto, ReceiptItemDtoBuilder> {
  _$ReceiptItemDto? _$v;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  String? _variantInfo;
  String? get variantInfo => _$this._variantInfo;
  set variantInfo(String? variantInfo) => _$this._variantInfo = variantInfo;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  num? _unitPrice;
  num? get unitPrice => _$this._unitPrice;
  set unitPrice(num? unitPrice) => _$this._unitPrice = unitPrice;

  num? _subtotal;
  num? get subtotal => _$this._subtotal;
  set subtotal(num? subtotal) => _$this._subtotal = subtotal;

  ReceiptItemDtoBuilder() {
    ReceiptItemDto._defaults(this);
  }

  ReceiptItemDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productName = $v.productName;
      _variantInfo = $v.variantInfo;
      _quantity = $v.quantity;
      _unitPrice = $v.unitPrice;
      _subtotal = $v.subtotal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReceiptItemDto other) {
    _$v = other as _$ReceiptItemDto;
  }

  @override
  void update(void Function(ReceiptItemDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReceiptItemDto build() => _build();

  _$ReceiptItemDto _build() {
    final _$result =
        _$v ??
        _$ReceiptItemDto._(
          productName: BuiltValueNullFieldError.checkNotNull(
            productName,
            r'ReceiptItemDto',
            'productName',
          ),
          variantInfo: BuiltValueNullFieldError.checkNotNull(
            variantInfo,
            r'ReceiptItemDto',
            'variantInfo',
          ),
          quantity: quantity,
          unitPrice: unitPrice,
          subtotal: subtotal,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
