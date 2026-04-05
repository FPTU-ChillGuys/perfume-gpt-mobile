//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_transaction_totals_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoyaltyTransactionTotalsResponse {
  /// Returns a new [LoyaltyTransactionTotalsResponse] instance.
  LoyaltyTransactionTotalsResponse({
    this.userId,

    this.totalEarnedPoints,

    this.totalSpentPoints,

    this.pointBalance,

    this.totalTransactions,
  });

  @JsonKey(name: r'userId', required: false, includeIfNull: false)
  final String? userId;

  @JsonKey(name: r'totalEarnedPoints', required: false, includeIfNull: false)
  final int? totalEarnedPoints;

  @JsonKey(name: r'totalSpentPoints', required: false, includeIfNull: false)
  final int? totalSpentPoints;

  @JsonKey(name: r'pointBalance', required: false, includeIfNull: false)
  final int? pointBalance;

  @JsonKey(name: r'totalTransactions', required: false, includeIfNull: false)
  final int? totalTransactions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoyaltyTransactionTotalsResponse &&
          other.userId == userId &&
          other.totalEarnedPoints == totalEarnedPoints &&
          other.totalSpentPoints == totalSpentPoints &&
          other.pointBalance == pointBalance &&
          other.totalTransactions == totalTransactions;

  @override
  int get hashCode =>
      userId.hashCode +
      totalEarnedPoints.hashCode +
      totalSpentPoints.hashCode +
      pointBalance.hashCode +
      totalTransactions.hashCode;

  factory LoyaltyTransactionTotalsResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$LoyaltyTransactionTotalsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$LoyaltyTransactionTotalsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
