//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/stock_transaction_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventory_ledger_item_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InventoryLedgerItemResponse {
  /// Returns a new [InventoryLedgerItemResponse] instance.
  InventoryLedgerItemResponse({
    this.id,

    this.createdAt,

    this.variantId,

    this.batchId,

    this.quantityChange,

    this.balanceAfter,

    this.type,

    this.referenceId,

    this.description,

    this.actorId,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'variantId', required: false, includeIfNull: false)
  final String? variantId;

  @JsonKey(name: r'batchId', required: false, includeIfNull: false)
  final String? batchId;

  @JsonKey(name: r'quantityChange', required: false, includeIfNull: false)
  final int? quantityChange;

  @JsonKey(name: r'balanceAfter', required: false, includeIfNull: false)
  final int? balanceAfter;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final StockTransactionType? type;

  @JsonKey(name: r'referenceId', required: false, includeIfNull: false)
  final String? referenceId;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  @JsonKey(name: r'actorId', required: false, includeIfNull: false)
  final String? actorId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InventoryLedgerItemResponse &&
          other.id == id &&
          other.createdAt == createdAt &&
          other.variantId == variantId &&
          other.batchId == batchId &&
          other.quantityChange == quantityChange &&
          other.balanceAfter == balanceAfter &&
          other.type == type &&
          other.referenceId == referenceId &&
          other.description == description &&
          other.actorId == actorId;

  @override
  int get hashCode =>
      id.hashCode +
      createdAt.hashCode +
      variantId.hashCode +
      batchId.hashCode +
      quantityChange.hashCode +
      balanceAfter.hashCode +
      type.hashCode +
      referenceId.hashCode +
      (description == null ? 0 : description.hashCode) +
      (actorId == null ? 0 : actorId.hashCode);

  factory InventoryLedgerItemResponse.fromJson(Map<String, dynamic> json) =>
      _$InventoryLedgerItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryLedgerItemResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
