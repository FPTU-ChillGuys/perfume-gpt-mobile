// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_product_sales_analytics_for_restock200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetProductSalesAnalyticsForRestock200ResponseCWProxy {
  InventoryControllerGetProductSalesAnalyticsForRestock200Response success(
    bool success,
  );

  InventoryControllerGetProductSalesAnalyticsForRestock200Response error(
    Object? error,
  );

  InventoryControllerGetProductSalesAnalyticsForRestock200Response payload(
    List<VariantSalesAnalyticsResponse>? payload,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetProductSalesAnalyticsForRestock200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetProductSalesAnalyticsForRestock200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetProductSalesAnalyticsForRestock200Response call({
    bool success,
    Object? error,
    List<VariantSalesAnalyticsResponse>? payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetProductSalesAnalyticsForRestock200Response.copyWith(...)` or call `instanceOfInventoryControllerGetProductSalesAnalyticsForRestock200Response.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetProductSalesAnalyticsForRestock200ResponseCWProxyImpl
    implements
        _$InventoryControllerGetProductSalesAnalyticsForRestock200ResponseCWProxy {
  const _$InventoryControllerGetProductSalesAnalyticsForRestock200ResponseCWProxyImpl(
    this._value,
  );

  final InventoryControllerGetProductSalesAnalyticsForRestock200Response _value;

  @override
  InventoryControllerGetProductSalesAnalyticsForRestock200Response success(
    bool success,
  ) => call(success: success);

  @override
  InventoryControllerGetProductSalesAnalyticsForRestock200Response error(
    Object? error,
  ) => call(error: error);

  @override
  InventoryControllerGetProductSalesAnalyticsForRestock200Response payload(
    List<VariantSalesAnalyticsResponse>? payload,
  ) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetProductSalesAnalyticsForRestock200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetProductSalesAnalyticsForRestock200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetProductSalesAnalyticsForRestock200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetProductSalesAnalyticsForRestock200Response(
      success: success == const $CopyWithPlaceholder() || success == null
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as Object?,
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<VariantSalesAnalyticsResponse>?,
    );
  }
}

extension $InventoryControllerGetProductSalesAnalyticsForRestock200ResponseCopyWith
    on InventoryControllerGetProductSalesAnalyticsForRestock200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetProductSalesAnalyticsForRestock200Response.copyWith(...)` or `instanceOfInventoryControllerGetProductSalesAnalyticsForRestock200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetProductSalesAnalyticsForRestock200ResponseCWProxy
  get copyWith =>
      _$InventoryControllerGetProductSalesAnalyticsForRestock200ResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetProductSalesAnalyticsForRestock200Response
_$InventoryControllerGetProductSalesAnalyticsForRestock200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'InventoryControllerGetProductSalesAnalyticsForRestock200Response',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['success']);
    final val =
        InventoryControllerGetProductSalesAnalyticsForRestock200Response(
          success: $checkedConvert('success', (v) => v as bool),
          error: $checkedConvert('error', (v) => v),
          payload: $checkedConvert(
            'payload',
            (v) => (v as List<dynamic>?)
                ?.map(
                  (e) => VariantSalesAnalyticsResponse.fromJson(
                    e as Map<String, dynamic>,
                  ),
                )
                .toList(),
          ),
        );
    return val;
  },
);

Map<String, dynamic>
_$InventoryControllerGetProductSalesAnalyticsForRestock200ResponseToJson(
  InventoryControllerGetProductSalesAnalyticsForRestock200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
};
