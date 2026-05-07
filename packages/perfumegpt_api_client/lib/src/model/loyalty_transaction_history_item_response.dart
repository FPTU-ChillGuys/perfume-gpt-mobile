//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/loyalty_transaction_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_transaction_history_item_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoyaltyTransactionHistoryItemResponse {
  /// Returns a new [LoyaltyTransactionHistoryItemResponse] instance.
  LoyaltyTransactionHistoryItemResponse({
    this.id,

    this.userId,

    this.voucherId,

    this.orderId,

    this.transactionType,

    this.pointsChanged,

    this.absolutePoints,

    required this.reason,

    this.createdAt,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'userId', required: false, includeIfNull: false)
  final String? userId;

  @JsonKey(name: r'voucherId', required: false, includeIfNull: false)
  final String? voucherId;

  @JsonKey(name: r'orderId', required: false, includeIfNull: false)
  final String? orderId;

  @JsonKey(name: r'transactionType', required: false, includeIfNull: false)
  final LoyaltyTransactionType? transactionType;

  @JsonKey(name: r'pointsChanged', required: false, includeIfNull: false)
  final int? pointsChanged;

  @JsonKey(name: r'absolutePoints', required: false, includeIfNull: false)
  final int? absolutePoints;

  @JsonKey(name: r'reason', required: true, includeIfNull: false)
  final String reason;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoyaltyTransactionHistoryItemResponse &&
          other.id == id &&
          other.userId == userId &&
          other.voucherId == voucherId &&
          other.orderId == orderId &&
          other.transactionType == transactionType &&
          other.pointsChanged == pointsChanged &&
          other.absolutePoints == absolutePoints &&
          other.reason == reason &&
          other.createdAt == createdAt;

  @override
  int get hashCode =>
      id.hashCode +
      userId.hashCode +
      (voucherId == null ? 0 : voucherId.hashCode) +
      (orderId == null ? 0 : orderId.hashCode) +
      transactionType.hashCode +
      pointsChanged.hashCode +
      absolutePoints.hashCode +
      reason.hashCode +
      createdAt.hashCode;

  factory LoyaltyTransactionHistoryItemResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$LoyaltyTransactionHistoryItemResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$LoyaltyTransactionHistoryItemResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
