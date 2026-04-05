// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_fast_look_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VariantFastLookResponse extends VariantFastLookResponse {
  @override
  final String? id;
  @override
  final String sku;
  @override
  final String displayName;
  @override
  final num? price;
  @override
  final num? retailPrice;
  @override
  final int? stockQuantity;
  @override
  final MediaResponse? media;

  factory _$VariantFastLookResponse([
    void Function(VariantFastLookResponseBuilder)? updates,
  ]) => (VariantFastLookResponseBuilder()..update(updates))._build();

  _$VariantFastLookResponse._({
    this.id,
    required this.sku,
    required this.displayName,
    this.price,
    this.retailPrice,
    this.stockQuantity,
    this.media,
  }) : super._();
  @override
  VariantFastLookResponse rebuild(
    void Function(VariantFastLookResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  VariantFastLookResponseBuilder toBuilder() =>
      VariantFastLookResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VariantFastLookResponse &&
        id == other.id &&
        sku == other.sku &&
        displayName == other.displayName &&
        price == other.price &&
        retailPrice == other.retailPrice &&
        stockQuantity == other.stockQuantity &&
        media == other.media;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, sku.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, retailPrice.hashCode);
    _$hash = $jc(_$hash, stockQuantity.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VariantFastLookResponse')
          ..add('id', id)
          ..add('sku', sku)
          ..add('displayName', displayName)
          ..add('price', price)
          ..add('retailPrice', retailPrice)
          ..add('stockQuantity', stockQuantity)
          ..add('media', media))
        .toString();
  }
}

class VariantFastLookResponseBuilder
    implements
        Builder<VariantFastLookResponse, VariantFastLookResponseBuilder> {
  _$VariantFastLookResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _sku;
  String? get sku => _$this._sku;
  set sku(String? sku) => _$this._sku = sku;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  num? _retailPrice;
  num? get retailPrice => _$this._retailPrice;
  set retailPrice(num? retailPrice) => _$this._retailPrice = retailPrice;

  int? _stockQuantity;
  int? get stockQuantity => _$this._stockQuantity;
  set stockQuantity(int? stockQuantity) =>
      _$this._stockQuantity = stockQuantity;

  MediaResponseBuilder? _media;
  MediaResponseBuilder get media => _$this._media ??= MediaResponseBuilder();
  set media(MediaResponseBuilder? media) => _$this._media = media;

  VariantFastLookResponseBuilder() {
    VariantFastLookResponse._defaults(this);
  }

  VariantFastLookResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _sku = $v.sku;
      _displayName = $v.displayName;
      _price = $v.price;
      _retailPrice = $v.retailPrice;
      _stockQuantity = $v.stockQuantity;
      _media = $v.media?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VariantFastLookResponse other) {
    _$v = other as _$VariantFastLookResponse;
  }

  @override
  void update(void Function(VariantFastLookResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VariantFastLookResponse build() => _build();

  _$VariantFastLookResponse _build() {
    _$VariantFastLookResponse _$result;
    try {
      _$result =
          _$v ??
          _$VariantFastLookResponse._(
            id: id,
            sku: BuiltValueNullFieldError.checkNotNull(
              sku,
              r'VariantFastLookResponse',
              'sku',
            ),
            displayName: BuiltValueNullFieldError.checkNotNull(
              displayName,
              r'VariantFastLookResponse',
              'displayName',
            ),
            price: price,
            retailPrice: retailPrice,
            stockQuantity: stockQuantity,
            media: _media?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'VariantFastLookResponse',
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
