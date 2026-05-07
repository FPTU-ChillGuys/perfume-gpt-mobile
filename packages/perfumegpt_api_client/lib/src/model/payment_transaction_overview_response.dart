//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_transaction_summary_response.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_payment_transaction_admin_item_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_transaction_overview_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaymentTransactionOverviewResponse {
  /// Returns a new [PaymentTransactionOverviewResponse] instance.
  PaymentTransactionOverviewResponse({
    required this.summary,

    required this.transactions,
  });

  @JsonKey(name: r'summary', required: true, includeIfNull: false)
  final PaymentTransactionSummaryResponse summary;

  @JsonKey(name: r'transactions', required: true, includeIfNull: false)
  final PagedResultOfPaymentTransactionAdminItemResponse transactions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentTransactionOverviewResponse &&
          other.summary == summary &&
          other.transactions == transactions;

  @override
  int get hashCode => summary.hashCode + transactions.hashCode;

  factory PaymentTransactionOverviewResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$PaymentTransactionOverviewResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PaymentTransactionOverviewResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
