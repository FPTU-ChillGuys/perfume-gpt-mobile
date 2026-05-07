//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/stock_adjustment_list_item.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paged_result_of_stock_adjustment_list_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PagedResultOfStockAdjustmentListItem {
  /// Returns a new [PagedResultOfStockAdjustmentListItem] instance.
  PagedResultOfStockAdjustmentListItem({
    required this.items,

    required this.pageNumber,

    required this.pageSize,

    required this.totalCount,

    this.totalPages,

    this.hasPreviousPage,

    this.hasNextPage,
  });

  @JsonKey(name: r'items', required: true, includeIfNull: false)
  final List<StockAdjustmentListItem> items;

  @JsonKey(name: r'pageNumber', required: true, includeIfNull: false)
  final int pageNumber;

  @JsonKey(name: r'pageSize', required: true, includeIfNull: false)
  final int pageSize;

  @JsonKey(name: r'totalCount', required: true, includeIfNull: false)
  final int totalCount;

  @JsonKey(name: r'totalPages', required: false, includeIfNull: false)
  final int? totalPages;

  @JsonKey(name: r'hasPreviousPage', required: false, includeIfNull: false)
  final bool? hasPreviousPage;

  @JsonKey(name: r'hasNextPage', required: false, includeIfNull: false)
  final bool? hasNextPage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PagedResultOfStockAdjustmentListItem &&
          other.items == items &&
          other.pageNumber == pageNumber &&
          other.pageSize == pageSize &&
          other.totalCount == totalCount &&
          other.totalPages == totalPages &&
          other.hasPreviousPage == hasPreviousPage &&
          other.hasNextPage == hasNextPage;

  @override
  int get hashCode =>
      items.hashCode +
      pageNumber.hashCode +
      pageSize.hashCode +
      totalCount.hashCode +
      totalPages.hashCode +
      hasPreviousPage.hashCode +
      hasNextPage.hashCode;

  factory PagedResultOfStockAdjustmentListItem.fromJson(
    Map<String, dynamic> json,
  ) => _$PagedResultOfStockAdjustmentListItemFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PagedResultOfStockAdjustmentListItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
