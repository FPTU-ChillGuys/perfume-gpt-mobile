//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_transaction_summary_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaymentTransactionSummaryResponse {
  /// Returns a new [PaymentTransactionSummaryResponse] instance.
  PaymentTransactionSummaryResponse({

     this.fromDate,

     this.toDate,

     this.totalTransactions,

     this.totalPaymentTransactions,

     this.totalRefundTransactions,

     this.pendingTransactionsCount,

     this.successTransactionsCount,

     this.failedTransactionsCount,

     this.cancelledTransactionsCount,

     this.totalPaymentAmount,

     this.totalRefundAmount,
  });

  @JsonKey(
    
    name: r'fromDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? fromDate;



  @JsonKey(
    
    name: r'toDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? toDate;



  @JsonKey(
    
    name: r'totalTransactions',
    required: false,
    includeIfNull: false,
  )


  final int? totalTransactions;



  @JsonKey(
    
    name: r'totalPaymentTransactions',
    required: false,
    includeIfNull: false,
  )


  final int? totalPaymentTransactions;



  @JsonKey(
    
    name: r'totalRefundTransactions',
    required: false,
    includeIfNull: false,
  )


  final int? totalRefundTransactions;



  @JsonKey(
    
    name: r'pendingTransactionsCount',
    required: false,
    includeIfNull: false,
  )


  final int? pendingTransactionsCount;



  @JsonKey(
    
    name: r'successTransactionsCount',
    required: false,
    includeIfNull: false,
  )


  final int? successTransactionsCount;



  @JsonKey(
    
    name: r'failedTransactionsCount',
    required: false,
    includeIfNull: false,
  )


  final int? failedTransactionsCount;



  @JsonKey(
    
    name: r'cancelledTransactionsCount',
    required: false,
    includeIfNull: false,
  )


  final int? cancelledTransactionsCount;



  @JsonKey(
    
    name: r'totalPaymentAmount',
    required: false,
    includeIfNull: false,
  )


  final num? totalPaymentAmount;



  @JsonKey(
    
    name: r'totalRefundAmount',
    required: false,
    includeIfNull: false,
  )


  final num? totalRefundAmount;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PaymentTransactionSummaryResponse &&
      other.fromDate == fromDate &&
      other.toDate == toDate &&
      other.totalTransactions == totalTransactions &&
      other.totalPaymentTransactions == totalPaymentTransactions &&
      other.totalRefundTransactions == totalRefundTransactions &&
      other.pendingTransactionsCount == pendingTransactionsCount &&
      other.successTransactionsCount == successTransactionsCount &&
      other.failedTransactionsCount == failedTransactionsCount &&
      other.cancelledTransactionsCount == cancelledTransactionsCount &&
      other.totalPaymentAmount == totalPaymentAmount &&
      other.totalRefundAmount == totalRefundAmount;

    @override
    int get hashCode =>
        fromDate.hashCode +
        toDate.hashCode +
        totalTransactions.hashCode +
        totalPaymentTransactions.hashCode +
        totalRefundTransactions.hashCode +
        pendingTransactionsCount.hashCode +
        successTransactionsCount.hashCode +
        failedTransactionsCount.hashCode +
        cancelledTransactionsCount.hashCode +
        totalPaymentAmount.hashCode +
        totalRefundAmount.hashCode;

  factory PaymentTransactionSummaryResponse.fromJson(Map<String, dynamic> json) => _$PaymentTransactionSummaryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentTransactionSummaryResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

