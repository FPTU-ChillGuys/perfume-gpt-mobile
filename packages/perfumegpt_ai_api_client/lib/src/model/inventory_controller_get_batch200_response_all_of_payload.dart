//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/batch_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventory_controller_get_batch200_response_all_of_payload.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InventoryControllerGetBatch200ResponseAllOfPayload {
  /// Returns a new [InventoryControllerGetBatch200ResponseAllOfPayload] instance.
  InventoryControllerGetBatch200ResponseAllOfPayload({
    required this.items,

    required this.pageNumber,

    required this.pageSize,

    required this.totalCount,

    required this.totalPages,
  });

  @JsonKey(name: r'items', required: true, includeIfNull: false)
  final List<BatchResponse> items;

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
      other is InventoryControllerGetBatch200ResponseAllOfPayload &&
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

  factory InventoryControllerGetBatch200ResponseAllOfPayload.fromJson(
    Map<String, dynamic> json,
  ) => _$InventoryControllerGetBatch200ResponseAllOfPayloadFromJson(json);

  Map<String, dynamic> toJson() =>
      _$InventoryControllerGetBatch200ResponseAllOfPayloadToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
