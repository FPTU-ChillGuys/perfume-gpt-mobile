//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'daily_revenue_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DailyRevenueItem {
  /// Returns a new [DailyRevenueItem] instance.
  DailyRevenueItem({
    this.date,

    this.grossRevenue,

    this.refundedAmount,

    this.netRevenue,
  });

  @JsonKey(name: r'date', required: false, includeIfNull: false)
  final DateTime? date;

  @JsonKey(name: r'grossRevenue', required: false, includeIfNull: false)
  final num? grossRevenue;

  @JsonKey(name: r'refundedAmount', required: false, includeIfNull: false)
  final num? refundedAmount;

  @JsonKey(name: r'netRevenue', required: false, includeIfNull: false)
  final num? netRevenue;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DailyRevenueItem &&
          other.date == date &&
          other.grossRevenue == grossRevenue &&
          other.refundedAmount == refundedAmount &&
          other.netRevenue == netRevenue;

  @override
  int get hashCode =>
      date.hashCode +
      grossRevenue.hashCode +
      refundedAmount.hashCode +
      netRevenue.hashCode;

  factory DailyRevenueItem.fromJson(Map<String, dynamic> json) =>
      _$DailyRevenueItemFromJson(json);

  Map<String, dynamic> toJson() => _$DailyRevenueItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
