//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/variant_sales_analytics_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventory_controller_get_product_sales_analytics_by_id200_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InventoryControllerGetProductSalesAnalyticsById200Response {
  /// Returns a new [InventoryControllerGetProductSalesAnalyticsById200Response] instance.
  InventoryControllerGetProductSalesAnalyticsById200Response({
    required this.success,

    this.error,

    this.payload,
  });

  /// Kết quả xử lý
  @JsonKey(name: r'success', required: true, includeIfNull: false)
  final bool success;

  /// Thông báo lỗi
  @JsonKey(name: r'error', required: false, includeIfNull: false)
  final Object? error;

  @JsonKey(name: r'payload', required: false, includeIfNull: false)
  final VariantSalesAnalyticsResponse? payload;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InventoryControllerGetProductSalesAnalyticsById200Response &&
          other.success == success &&
          other.error == error &&
          other.payload == payload;

  @override
  int get hashCode =>
      success.hashCode +
      (error == null ? 0 : error.hashCode) +
      payload.hashCode;

  factory InventoryControllerGetProductSalesAnalyticsById200Response.fromJson(
    Map<String, dynamic> json,
  ) => _$InventoryControllerGetProductSalesAnalyticsById200ResponseFromJson(
    json,
  );

  Map<String, dynamic> toJson() =>
      _$InventoryControllerGetProductSalesAnalyticsById200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
