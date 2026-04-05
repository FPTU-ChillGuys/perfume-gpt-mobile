// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_product_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TopProductResponse extends TopProductResponse {
  @override
  final String? productId;
  @override
  final String productName;
  @override
  final int? totalUnitsSold;
  @override
  final num? revenue;

  factory _$TopProductResponse([
    void Function(TopProductResponseBuilder)? updates,
  ]) => (TopProductResponseBuilder()..update(updates))._build();

  _$TopProductResponse._({
    this.productId,
    required this.productName,
    this.totalUnitsSold,
    this.revenue,
  }) : super._();
  @override
  TopProductResponse rebuild(
    void Function(TopProductResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TopProductResponseBuilder toBuilder() =>
      TopProductResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopProductResponse &&
        productId == other.productId &&
        productName == other.productName &&
        totalUnitsSold == other.totalUnitsSold &&
        revenue == other.revenue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, totalUnitsSold.hashCode);
    _$hash = $jc(_$hash, revenue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TopProductResponse')
          ..add('productId', productId)
          ..add('productName', productName)
          ..add('totalUnitsSold', totalUnitsSold)
          ..add('revenue', revenue))
        .toString();
  }
}

class TopProductResponseBuilder
    implements Builder<TopProductResponse, TopProductResponseBuilder> {
  _$TopProductResponse? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  int? _totalUnitsSold;
  int? get totalUnitsSold => _$this._totalUnitsSold;
  set totalUnitsSold(int? totalUnitsSold) =>
      _$this._totalUnitsSold = totalUnitsSold;

  num? _revenue;
  num? get revenue => _$this._revenue;
  set revenue(num? revenue) => _$this._revenue = revenue;

  TopProductResponseBuilder() {
    TopProductResponse._defaults(this);
  }

  TopProductResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _productName = $v.productName;
      _totalUnitsSold = $v.totalUnitsSold;
      _revenue = $v.revenue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopProductResponse other) {
    _$v = other as _$TopProductResponse;
  }

  @override
  void update(void Function(TopProductResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TopProductResponse build() => _build();

  _$TopProductResponse _build() {
    final _$result =
        _$v ??
        _$TopProductResponse._(
          productId: productId,
          productName: BuiltValueNullFieldError.checkNotNull(
            productName,
            r'TopProductResponse',
            'productName',
          ),
          totalUnitsSold: totalUnitsSold,
          revenue: revenue,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
