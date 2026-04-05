//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'revenue_summary_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RevenueSummaryResponse {
  /// Returns a new [RevenueSummaryResponse] instance.
  RevenueSummaryResponse({
    this.fromDate,

    this.toDate,

    this.grossRevenue,

    this.refundedAmount,

    this.netRevenue,

    this.successfulTransactionsCount,

    this.paidOrdersCount,
  });

  @JsonKey(name: r'fromDate', required: false, includeIfNull: false)
  final DateTime? fromDate;

  @JsonKey(name: r'toDate', required: false, includeIfNull: false)
  final DateTime? toDate;

  @JsonKey(name: r'grossRevenue', required: false, includeIfNull: false)
  final num? grossRevenue;

  @JsonKey(name: r'refundedAmount', required: false, includeIfNull: false)
  final num? refundedAmount;

  @JsonKey(name: r'netRevenue', required: false, includeIfNull: false)
  final num? netRevenue;

  @JsonKey(
    name: r'successfulTransactionsCount',
    required: false,
    includeIfNull: false,
  )
  final int? successfulTransactionsCount;

  @JsonKey(name: r'paidOrdersCount', required: false, includeIfNull: false)
  final int? paidOrdersCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RevenueSummaryResponse &&
          other.fromDate == fromDate &&
          other.toDate == toDate &&
          other.grossRevenue == grossRevenue &&
          other.refundedAmount == refundedAmount &&
          other.netRevenue == netRevenue &&
          other.successfulTransactionsCount == successfulTransactionsCount &&
          other.paidOrdersCount == paidOrdersCount;

  @override
  int get hashCode =>
      fromDate.hashCode +
      toDate.hashCode +
      grossRevenue.hashCode +
      refundedAmount.hashCode +
      netRevenue.hashCode +
      successfulTransactionsCount.hashCode +
      paidOrdersCount.hashCode;

  factory RevenueSummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$RevenueSummaryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RevenueSummaryResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
