//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_controller_get_best_selling_products200_response_all_of_payload.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductControllerGetBestSellingProducts200ResponseAllOfPayload {
  /// Returns a new [ProductControllerGetBestSellingProducts200ResponseAllOfPayload] instance.
  ProductControllerGetBestSellingProducts200ResponseAllOfPayload({
    required this.items,

    required this.pageNumber,

    required this.pageSize,

    required this.totalCount,

    required this.totalPages,
  });

  @JsonKey(name: r'items', required: true, includeIfNull: false)
  final List<Object> items;

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
      other is ProductControllerGetBestSellingProducts200ResponseAllOfPayload &&
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

  factory ProductControllerGetBestSellingProducts200ResponseAllOfPayload.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductControllerGetBestSellingProducts200ResponseAllOfPayloadFromJson(
    json,
  );

  Map<String, dynamic> toJson() =>
      _$ProductControllerGetBestSellingProducts200ResponseAllOfPayloadToJson(
        this,
      );

  @override
  String toString() {
    return toJson().toString();
  }
}
