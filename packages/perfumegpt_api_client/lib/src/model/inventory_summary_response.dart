//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventory_summary_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InventorySummaryResponse {
  /// Returns a new [InventorySummaryResponse] instance.
  InventorySummaryResponse({
    this.totalVariants,

    this.totalStockQuantity,

    this.lowStockVariantsCount,

    this.totalBatches,

    this.expiredBatchesCount,

    this.expiringSoonCount,
  });

  @JsonKey(name: r'totalVariants', required: false, includeIfNull: false)
  final int? totalVariants;

  @JsonKey(name: r'totalStockQuantity', required: false, includeIfNull: false)
  final int? totalStockQuantity;

  @JsonKey(
    name: r'lowStockVariantsCount',
    required: false,
    includeIfNull: false,
  )
  final int? lowStockVariantsCount;

  @JsonKey(name: r'totalBatches', required: false, includeIfNull: false)
  final int? totalBatches;

  @JsonKey(name: r'expiredBatchesCount', required: false, includeIfNull: false)
  final int? expiredBatchesCount;

  @JsonKey(name: r'expiringSoonCount', required: false, includeIfNull: false)
  final int? expiringSoonCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InventorySummaryResponse &&
          other.totalVariants == totalVariants &&
          other.totalStockQuantity == totalStockQuantity &&
          other.lowStockVariantsCount == lowStockVariantsCount &&
          other.totalBatches == totalBatches &&
          other.expiredBatchesCount == expiredBatchesCount &&
          other.expiringSoonCount == expiringSoonCount;

  @override
  int get hashCode =>
      totalVariants.hashCode +
      totalStockQuantity.hashCode +
      lowStockVariantsCount.hashCode +
      totalBatches.hashCode +
      expiredBatchesCount.hashCode +
      expiringSoonCount.hashCode;

  factory InventorySummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$InventorySummaryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InventorySummaryResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
