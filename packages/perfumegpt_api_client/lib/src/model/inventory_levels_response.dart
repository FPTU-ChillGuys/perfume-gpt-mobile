//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventory_levels_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InventoryLevelsResponse {
  /// Returns a new [InventoryLevelsResponse] instance.
  InventoryLevelsResponse({
    this.totalVariants,

    this.totalStockQuantity,

    this.totalAvailableQuantity,

    this.lowStockVariantsCount,

    this.outOfStockVariantsCount,

    this.totalBatches,

    this.expiredBatchesCount,

    this.expiringSoonCount,
  });

  @JsonKey(name: r'totalVariants', required: false, includeIfNull: false)
  final int? totalVariants;

  @JsonKey(name: r'totalStockQuantity', required: false, includeIfNull: false)
  final int? totalStockQuantity;

  @JsonKey(
    name: r'totalAvailableQuantity',
    required: false,
    includeIfNull: false,
  )
  final int? totalAvailableQuantity;

  @JsonKey(
    name: r'lowStockVariantsCount',
    required: false,
    includeIfNull: false,
  )
  final int? lowStockVariantsCount;

  @JsonKey(
    name: r'outOfStockVariantsCount',
    required: false,
    includeIfNull: false,
  )
  final int? outOfStockVariantsCount;

  @JsonKey(name: r'totalBatches', required: false, includeIfNull: false)
  final int? totalBatches;

  @JsonKey(name: r'expiredBatchesCount', required: false, includeIfNull: false)
  final int? expiredBatchesCount;

  @JsonKey(name: r'expiringSoonCount', required: false, includeIfNull: false)
  final int? expiringSoonCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InventoryLevelsResponse &&
          other.totalVariants == totalVariants &&
          other.totalStockQuantity == totalStockQuantity &&
          other.totalAvailableQuantity == totalAvailableQuantity &&
          other.lowStockVariantsCount == lowStockVariantsCount &&
          other.outOfStockVariantsCount == outOfStockVariantsCount &&
          other.totalBatches == totalBatches &&
          other.expiredBatchesCount == expiredBatchesCount &&
          other.expiringSoonCount == expiringSoonCount;

  @override
  int get hashCode =>
      totalVariants.hashCode +
      totalStockQuantity.hashCode +
      totalAvailableQuantity.hashCode +
      lowStockVariantsCount.hashCode +
      outOfStockVariantsCount.hashCode +
      totalBatches.hashCode +
      expiredBatchesCount.hashCode +
      expiringSoonCount.hashCode;

  factory InventoryLevelsResponse.fromJson(Map<String, dynamic> json) =>
      _$InventoryLevelsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryLevelsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
