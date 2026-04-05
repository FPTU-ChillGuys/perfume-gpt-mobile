// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_dashboard_overview_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdminDashboardOverviewResponse extends AdminDashboardOverviewResponse {
  @override
  final RevenueSummaryResponse? revenue;
  @override
  final InventoryLevelsResponse? inventoryLevels;
  @override
  final BuiltList<TopProductResponse> topProducts;

  factory _$AdminDashboardOverviewResponse([
    void Function(AdminDashboardOverviewResponseBuilder)? updates,
  ]) => (AdminDashboardOverviewResponseBuilder()..update(updates))._build();

  _$AdminDashboardOverviewResponse._({
    this.revenue,
    this.inventoryLevels,
    required this.topProducts,
  }) : super._();
  @override
  AdminDashboardOverviewResponse rebuild(
    void Function(AdminDashboardOverviewResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AdminDashboardOverviewResponseBuilder toBuilder() =>
      AdminDashboardOverviewResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminDashboardOverviewResponse &&
        revenue == other.revenue &&
        inventoryLevels == other.inventoryLevels &&
        topProducts == other.topProducts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, revenue.hashCode);
    _$hash = $jc(_$hash, inventoryLevels.hashCode);
    _$hash = $jc(_$hash, topProducts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminDashboardOverviewResponse')
          ..add('revenue', revenue)
          ..add('inventoryLevels', inventoryLevels)
          ..add('topProducts', topProducts))
        .toString();
  }
}

class AdminDashboardOverviewResponseBuilder
    implements
        Builder<
          AdminDashboardOverviewResponse,
          AdminDashboardOverviewResponseBuilder
        > {
  _$AdminDashboardOverviewResponse? _$v;

  RevenueSummaryResponseBuilder? _revenue;
  RevenueSummaryResponseBuilder get revenue =>
      _$this._revenue ??= RevenueSummaryResponseBuilder();
  set revenue(RevenueSummaryResponseBuilder? revenue) =>
      _$this._revenue = revenue;

  InventoryLevelsResponseBuilder? _inventoryLevels;
  InventoryLevelsResponseBuilder get inventoryLevels =>
      _$this._inventoryLevels ??= InventoryLevelsResponseBuilder();
  set inventoryLevels(InventoryLevelsResponseBuilder? inventoryLevels) =>
      _$this._inventoryLevels = inventoryLevels;

  ListBuilder<TopProductResponse>? _topProducts;
  ListBuilder<TopProductResponse> get topProducts =>
      _$this._topProducts ??= ListBuilder<TopProductResponse>();
  set topProducts(ListBuilder<TopProductResponse>? topProducts) =>
      _$this._topProducts = topProducts;

  AdminDashboardOverviewResponseBuilder() {
    AdminDashboardOverviewResponse._defaults(this);
  }

  AdminDashboardOverviewResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _revenue = $v.revenue?.toBuilder();
      _inventoryLevels = $v.inventoryLevels?.toBuilder();
      _topProducts = $v.topProducts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminDashboardOverviewResponse other) {
    _$v = other as _$AdminDashboardOverviewResponse;
  }

  @override
  void update(void Function(AdminDashboardOverviewResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminDashboardOverviewResponse build() => _build();

  _$AdminDashboardOverviewResponse _build() {
    _$AdminDashboardOverviewResponse _$result;
    try {
      _$result =
          _$v ??
          _$AdminDashboardOverviewResponse._(
            revenue: _revenue?.build(),
            inventoryLevels: _inventoryLevels?.build(),
            topProducts: topProducts.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'revenue';
        _revenue?.build();
        _$failedField = 'inventoryLevels';
        _inventoryLevels?.build();
        _$failedField = 'topProducts';
        topProducts.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AdminDashboardOverviewResponse',
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
