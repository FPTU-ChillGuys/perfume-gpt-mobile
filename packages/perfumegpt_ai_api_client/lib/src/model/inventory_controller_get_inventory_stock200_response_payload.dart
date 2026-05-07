//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/inventory_stock_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventory_controller_get_inventory_stock200_response_payload.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InventoryControllerGetInventoryStock200ResponsePayload {
  /// Returns a new [InventoryControllerGetInventoryStock200ResponsePayload] instance.
  InventoryControllerGetInventoryStock200ResponsePayload({
    required this.items,

    required this.pageNumber,

    required this.pageSize,

    required this.totalCount,

    required this.totalPages,
  });

  @JsonKey(name: r'items', required: true, includeIfNull: false)
  final List<InventoryStockResponse> items;

  /// Số trang hiện tại
  @JsonKey(name: r'pageNumber', required: true, includeIfNull: false)
  final num pageNumber;

  /// Số bản ghi mỗi trang
  @JsonKey(name: r'pageSize', required: true, includeIfNull: false)
  final num pageSize;

  /// Tổng số bản ghi
  @JsonKey(name: r'totalCount', required: true, includeIfNull: false)
  final num totalCount;

  /// Tổng số trang
  @JsonKey(name: r'totalPages', required: true, includeIfNull: false)
  final num totalPages;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InventoryControllerGetInventoryStock200ResponsePayload &&
          other.items == items &&
          other.pageNumber == pageNumber &&
          other.pageSize == pageSize &&
          other.totalCount == totalCount &&
          other.totalPages == totalPages;

  @override
  int get hashCode =>
      items.hashCode +
      pageNumber.hashCode +
      pageSize.hashCode +
      totalCount.hashCode +
      totalPages.hashCode;

  factory InventoryControllerGetInventoryStock200ResponsePayload.fromJson(
    Map<String, dynamic> json,
  ) => _$InventoryControllerGetInventoryStock200ResponsePayloadFromJson(json);

  Map<String, dynamic> toJson() =>
      _$InventoryControllerGetInventoryStock200ResponsePayloadToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
