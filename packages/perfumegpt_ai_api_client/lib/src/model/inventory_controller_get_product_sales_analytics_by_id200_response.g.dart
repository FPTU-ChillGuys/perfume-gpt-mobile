// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_product_sales_analytics_by_id200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetProductSalesAnalyticsById200ResponseCWProxy {
  InventoryControllerGetProductSalesAnalyticsById200Response success(
    bool success,
  );

  InventoryControllerGetProductSalesAnalyticsById200Response error(
    Object? error,
  );

  InventoryControllerGetProductSalesAnalyticsById200Response payload(
    Object? payload,
  );

  InventoryControllerGetProductSalesAnalyticsById200Response data(
    VariantSalesAnalyticsResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetProductSalesAnalyticsById200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetProductSalesAnalyticsById200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetProductSalesAnalyticsById200Response call({
    bool success,
    Object? error,
    Object? payload,
    VariantSalesAnalyticsResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetProductSalesAnalyticsById200Response.copyWith(...)` or call `instanceOfInventoryControllerGetProductSalesAnalyticsById200Response.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetProductSalesAnalyticsById200ResponseCWProxyImpl
    implements
        _$InventoryControllerGetProductSalesAnalyticsById200ResponseCWProxy {
  const _$InventoryControllerGetProductSalesAnalyticsById200ResponseCWProxyImpl(
    this._value,
  );

  final InventoryControllerGetProductSalesAnalyticsById200Response _value;

  @override
  InventoryControllerGetProductSalesAnalyticsById200Response success(
    bool success,
  ) => call(success: success);

  @override
  InventoryControllerGetProductSalesAnalyticsById200Response error(
    Object? error,
  ) => call(error: error);

  @override
  InventoryControllerGetProductSalesAnalyticsById200Response payload(
    Object? payload,
  ) => call(payload: payload);

  @override
  InventoryControllerGetProductSalesAnalyticsById200Response data(
    VariantSalesAnalyticsResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetProductSalesAnalyticsById200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetProductSalesAnalyticsById200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetProductSalesAnalyticsById200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetProductSalesAnalyticsById200Response(
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
          : payload as Object?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as VariantSalesAnalyticsResponse?,
    );
  }
}

extension $InventoryControllerGetProductSalesAnalyticsById200ResponseCopyWith
    on InventoryControllerGetProductSalesAnalyticsById200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetProductSalesAnalyticsById200Response.copyWith(...)` or `instanceOfInventoryControllerGetProductSalesAnalyticsById200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetProductSalesAnalyticsById200ResponseCWProxy
  get copyWith =>
      _$InventoryControllerGetProductSalesAnalyticsById200ResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetProductSalesAnalyticsById200Response
_$InventoryControllerGetProductSalesAnalyticsById200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'InventoryControllerGetProductSalesAnalyticsById200Response',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['success']);
    final val = InventoryControllerGetProductSalesAnalyticsById200Response(
      success: $checkedConvert('success', (v) => v as bool),
      error: $checkedConvert('error', (v) => v),
      payload: $checkedConvert('payload', (v) => v),
      data: $checkedConvert(
        'data',
        (v) => v == null
            ? null
            : VariantSalesAnalyticsResponse.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$InventoryControllerGetProductSalesAnalyticsById200ResponseToJson(
  InventoryControllerGetProductSalesAnalyticsById200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload,
  'data': ?instance.data?.toJson(),
};
