// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_dashboard_overview_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AdminDashboardOverviewResponseCWProxy {
  AdminDashboardOverviewResponse revenue(RevenueSummaryResponse? revenue);

  AdminDashboardOverviewResponse inventoryLevels(
    InventoryLevelsResponse? inventoryLevels,
  );

  AdminDashboardOverviewResponse topProducts(
    List<TopProductResponse> topProducts,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AdminDashboardOverviewResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AdminDashboardOverviewResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AdminDashboardOverviewResponse call({
    RevenueSummaryResponse? revenue,
    InventoryLevelsResponse? inventoryLevels,
    List<TopProductResponse> topProducts,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAdminDashboardOverviewResponse.copyWith(...)` or call `instanceOfAdminDashboardOverviewResponse.copyWith.fieldName(value)` for a single field.
class _$AdminDashboardOverviewResponseCWProxyImpl
    implements _$AdminDashboardOverviewResponseCWProxy {
  const _$AdminDashboardOverviewResponseCWProxyImpl(this._value);

  final AdminDashboardOverviewResponse _value;

  @override
  AdminDashboardOverviewResponse revenue(RevenueSummaryResponse? revenue) =>
      call(revenue: revenue);

  @override
  AdminDashboardOverviewResponse inventoryLevels(
    InventoryLevelsResponse? inventoryLevels,
  ) => call(inventoryLevels: inventoryLevels);

  @override
  AdminDashboardOverviewResponse topProducts(
    List<TopProductResponse> topProducts,
  ) => call(topProducts: topProducts);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AdminDashboardOverviewResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AdminDashboardOverviewResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AdminDashboardOverviewResponse call({
    Object? revenue = const $CopyWithPlaceholder(),
    Object? inventoryLevels = const $CopyWithPlaceholder(),
    Object? topProducts = const $CopyWithPlaceholder(),
  }) {
    return AdminDashboardOverviewResponse(
      revenue: revenue == const $CopyWithPlaceholder()
          ? _value.revenue
          // ignore: cast_nullable_to_non_nullable
          : revenue as RevenueSummaryResponse?,
      inventoryLevels: inventoryLevels == const $CopyWithPlaceholder()
          ? _value.inventoryLevels
          // ignore: cast_nullable_to_non_nullable
          : inventoryLevels as InventoryLevelsResponse?,
      topProducts:
          topProducts == const $CopyWithPlaceholder() || topProducts == null
          ? _value.topProducts
          // ignore: cast_nullable_to_non_nullable
          : topProducts as List<TopProductResponse>,
    );
  }
}

extension $AdminDashboardOverviewResponseCopyWith
    on AdminDashboardOverviewResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAdminDashboardOverviewResponse.copyWith(...)` or `instanceOfAdminDashboardOverviewResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AdminDashboardOverviewResponseCWProxy get copyWith =>
      _$AdminDashboardOverviewResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminDashboardOverviewResponse _$AdminDashboardOverviewResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AdminDashboardOverviewResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['topProducts']);
  final val = AdminDashboardOverviewResponse(
    revenue: $checkedConvert(
      'revenue',
      (v) => v == null
          ? null
          : RevenueSummaryResponse.fromJson(v as Map<String, dynamic>),
    ),
    inventoryLevels: $checkedConvert(
      'inventoryLevels',
      (v) => v == null
          ? null
          : InventoryLevelsResponse.fromJson(v as Map<String, dynamic>),
    ),
    topProducts: $checkedConvert(
      'topProducts',
      (v) => (v as List<dynamic>)
          .map((e) => TopProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$AdminDashboardOverviewResponseToJson(
  AdminDashboardOverviewResponse instance,
) => <String, dynamic>{
  'revenue': ?instance.revenue?.toJson(),
  'inventoryLevels': ?instance.inventoryLevels?.toJson(),
  'topProducts': instance.topProducts.map((e) => e.toJson()).toList(),
};
