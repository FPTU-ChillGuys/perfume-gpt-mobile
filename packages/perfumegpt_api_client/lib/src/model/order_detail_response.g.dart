// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderDetailResponse extends OrderDetailResponse {
  @override
  final String? id;
  @override
  final String? variantId;
  @override
  final String variantName;
  @override
  final String? imageUrl;
  @override
  final int? quantity;
  @override
  final num? unitPrice;
  @override
  final num? refunablePrice;
  @override
  final num? total;
  @override
  final BuiltList<ReservedBatchResponse> reservedBatches;

  factory _$OrderDetailResponse([
    void Function(OrderDetailResponseBuilder)? updates,
  ]) => (OrderDetailResponseBuilder()..update(updates))._build();

  _$OrderDetailResponse._({
    this.id,
    this.variantId,
    required this.variantName,
    this.imageUrl,
    this.quantity,
    this.unitPrice,
    this.refunablePrice,
    this.total,
    required this.reservedBatches,
  }) : super._();
  @override
  OrderDetailResponse rebuild(
    void Function(OrderDetailResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OrderDetailResponseBuilder toBuilder() =>
      OrderDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDetailResponse &&
        id == other.id &&
        variantId == other.variantId &&
        variantName == other.variantName &&
        imageUrl == other.imageUrl &&
        quantity == other.quantity &&
        unitPrice == other.unitPrice &&
        refunablePrice == other.refunablePrice &&
        total == other.total &&
        reservedBatches == other.reservedBatches;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, variantName.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, refunablePrice.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, reservedBatches.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderDetailResponse')
          ..add('id', id)
          ..add('variantId', variantId)
          ..add('variantName', variantName)
          ..add('imageUrl', imageUrl)
          ..add('quantity', quantity)
          ..add('unitPrice', unitPrice)
          ..add('refunablePrice', refunablePrice)
          ..add('total', total)
          ..add('reservedBatches', reservedBatches))
        .toString();
  }
}

class OrderDetailResponseBuilder
    implements Builder<OrderDetailResponse, OrderDetailResponseBuilder> {
  _$OrderDetailResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  num? _unitPrice;
  num? get unitPrice => _$this._unitPrice;
  set unitPrice(num? unitPrice) => _$this._unitPrice = unitPrice;

  num? _refunablePrice;
  num? get refunablePrice => _$this._refunablePrice;
  set refunablePrice(num? refunablePrice) =>
      _$this._refunablePrice = refunablePrice;

  num? _total;
  num? get total => _$this._total;
  set total(num? total) => _$this._total = total;

  ListBuilder<ReservedBatchResponse>? _reservedBatches;
  ListBuilder<ReservedBatchResponse> get reservedBatches =>
      _$this._reservedBatches ??= ListBuilder<ReservedBatchResponse>();
  set reservedBatches(ListBuilder<ReservedBatchResponse>? reservedBatches) =>
      _$this._reservedBatches = reservedBatches;

  OrderDetailResponseBuilder() {
    OrderDetailResponse._defaults(this);
  }

  OrderDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _variantId = $v.variantId;
      _variantName = $v.variantName;
      _imageUrl = $v.imageUrl;
      _quantity = $v.quantity;
      _unitPrice = $v.unitPrice;
      _refunablePrice = $v.refunablePrice;
      _total = $v.total;
      _reservedBatches = $v.reservedBatches.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDetailResponse other) {
    _$v = other as _$OrderDetailResponse;
  }

  @override
  void update(void Function(OrderDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderDetailResponse build() => _build();

  _$OrderDetailResponse _build() {
    _$OrderDetailResponse _$result;
    try {
      _$result =
          _$v ??
          _$OrderDetailResponse._(
            id: id,
            variantId: variantId,
            variantName: BuiltValueNullFieldError.checkNotNull(
              variantName,
              r'OrderDetailResponse',
              'variantName',
            ),
            imageUrl: imageUrl,
            quantity: quantity,
            unitPrice: unitPrice,
            refunablePrice: refunablePrice,
            total: total,
            reservedBatches: reservedBatches.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservedBatches';
        reservedBatches.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OrderDetailResponse',
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
