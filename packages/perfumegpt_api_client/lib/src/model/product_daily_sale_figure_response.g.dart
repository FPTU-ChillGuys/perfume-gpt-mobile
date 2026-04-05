// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_daily_sale_figure_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductDailySaleFigureResponse extends ProductDailySaleFigureResponse {
  @override
  final String? productId;
  @override
  final String productName;
  @override
  final BuiltList<VariantDailySaleFigure> dailySaleFigures;

  factory _$ProductDailySaleFigureResponse([
    void Function(ProductDailySaleFigureResponseBuilder)? updates,
  ]) => (ProductDailySaleFigureResponseBuilder()..update(updates))._build();

  _$ProductDailySaleFigureResponse._({
    this.productId,
    required this.productName,
    required this.dailySaleFigures,
  }) : super._();
  @override
  ProductDailySaleFigureResponse rebuild(
    void Function(ProductDailySaleFigureResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProductDailySaleFigureResponseBuilder toBuilder() =>
      ProductDailySaleFigureResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDailySaleFigureResponse &&
        productId == other.productId &&
        productName == other.productName &&
        dailySaleFigures == other.dailySaleFigures;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, dailySaleFigures.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductDailySaleFigureResponse')
          ..add('productId', productId)
          ..add('productName', productName)
          ..add('dailySaleFigures', dailySaleFigures))
        .toString();
  }
}

class ProductDailySaleFigureResponseBuilder
    implements
        Builder<
          ProductDailySaleFigureResponse,
          ProductDailySaleFigureResponseBuilder
        > {
  _$ProductDailySaleFigureResponse? _$v;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  ListBuilder<VariantDailySaleFigure>? _dailySaleFigures;
  ListBuilder<VariantDailySaleFigure> get dailySaleFigures =>
      _$this._dailySaleFigures ??= ListBuilder<VariantDailySaleFigure>();
  set dailySaleFigures(ListBuilder<VariantDailySaleFigure>? dailySaleFigures) =>
      _$this._dailySaleFigures = dailySaleFigures;

  ProductDailySaleFigureResponseBuilder() {
    ProductDailySaleFigureResponse._defaults(this);
  }

  ProductDailySaleFigureResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _productName = $v.productName;
      _dailySaleFigures = $v.dailySaleFigures.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDailySaleFigureResponse other) {
    _$v = other as _$ProductDailySaleFigureResponse;
  }

  @override
  void update(void Function(ProductDailySaleFigureResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductDailySaleFigureResponse build() => _build();

  _$ProductDailySaleFigureResponse _build() {
    _$ProductDailySaleFigureResponse _$result;
    try {
      _$result =
          _$v ??
          _$ProductDailySaleFigureResponse._(
            productId: productId,
            productName: BuiltValueNullFieldError.checkNotNull(
              productName,
              r'ProductDailySaleFigureResponse',
              'productName',
            ),
            dailySaleFigures: dailySaleFigures.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dailySaleFigures';
        dailySaleFigures.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProductDailySaleFigureResponse',
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
