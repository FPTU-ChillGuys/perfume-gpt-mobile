// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_transaction_summary_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentTransactionSummaryResponseCWProxy {
  PaymentTransactionSummaryResponse fromDate(DateTime? fromDate);

  PaymentTransactionSummaryResponse toDate(DateTime? toDate);

  PaymentTransactionSummaryResponse totalTransactions(int? totalTransactions);

  PaymentTransactionSummaryResponse totalPaymentTransactions(
    int? totalPaymentTransactions,
  );

  PaymentTransactionSummaryResponse totalRefundTransactions(
    int? totalRefundTransactions,
  );

  PaymentTransactionSummaryResponse pendingTransactionsCount(
    int? pendingTransactionsCount,
  );

  PaymentTransactionSummaryResponse successTransactionsCount(
    int? successTransactionsCount,
  );

  PaymentTransactionSummaryResponse failedTransactionsCount(
    int? failedTransactionsCount,
  );

  PaymentTransactionSummaryResponse cancelledTransactionsCount(
    int? cancelledTransactionsCount,
  );

  PaymentTransactionSummaryResponse totalPaymentAmount(num? totalPaymentAmount);

  PaymentTransactionSummaryResponse totalShippingFeeDeductedPerOrder(
    num? totalShippingFeeDeductedPerOrder,
  );

  PaymentTransactionSummaryResponse totalPaymentAmountExcludingShipping(
    num? totalPaymentAmountExcludingShipping,
  );

  PaymentTransactionSummaryResponse totalRefundAmount(num? totalRefundAmount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentTransactionSummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentTransactionSummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentTransactionSummaryResponse call({
    DateTime? fromDate,
    DateTime? toDate,
    int? totalTransactions,
    int? totalPaymentTransactions,
    int? totalRefundTransactions,
    int? pendingTransactionsCount,
    int? successTransactionsCount,
    int? failedTransactionsCount,
    int? cancelledTransactionsCount,
    num? totalPaymentAmount,
    num? totalShippingFeeDeductedPerOrder,
    num? totalPaymentAmountExcludingShipping,
    num? totalRefundAmount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPaymentTransactionSummaryResponse.copyWith(...)` or call `instanceOfPaymentTransactionSummaryResponse.copyWith.fieldName(value)` for a single field.
class _$PaymentTransactionSummaryResponseCWProxyImpl
    implements _$PaymentTransactionSummaryResponseCWProxy {
  const _$PaymentTransactionSummaryResponseCWProxyImpl(this._value);

  final PaymentTransactionSummaryResponse _value;

  @override
  PaymentTransactionSummaryResponse fromDate(DateTime? fromDate) =>
      call(fromDate: fromDate);

  @override
  PaymentTransactionSummaryResponse toDate(DateTime? toDate) =>
      call(toDate: toDate);

  @override
  PaymentTransactionSummaryResponse totalTransactions(int? totalTransactions) =>
      call(totalTransactions: totalTransactions);

  @override
  PaymentTransactionSummaryResponse totalPaymentTransactions(
    int? totalPaymentTransactions,
  ) => call(totalPaymentTransactions: totalPaymentTransactions);

  @override
  PaymentTransactionSummaryResponse totalRefundTransactions(
    int? totalRefundTransactions,
  ) => call(totalRefundTransactions: totalRefundTransactions);

  @override
  PaymentTransactionSummaryResponse pendingTransactionsCount(
    int? pendingTransactionsCount,
  ) => call(pendingTransactionsCount: pendingTransactionsCount);

  @override
  PaymentTransactionSummaryResponse successTransactionsCount(
    int? successTransactionsCount,
  ) => call(successTransactionsCount: successTransactionsCount);

  @override
  PaymentTransactionSummaryResponse failedTransactionsCount(
    int? failedTransactionsCount,
  ) => call(failedTransactionsCount: failedTransactionsCount);

  @override
  PaymentTransactionSummaryResponse cancelledTransactionsCount(
    int? cancelledTransactionsCount,
  ) => call(cancelledTransactionsCount: cancelledTransactionsCount);

  @override
  PaymentTransactionSummaryResponse totalPaymentAmount(
    num? totalPaymentAmount,
  ) => call(totalPaymentAmount: totalPaymentAmount);

  @override
  PaymentTransactionSummaryResponse totalShippingFeeDeductedPerOrder(
    num? totalShippingFeeDeductedPerOrder,
  ) => call(totalShippingFeeDeductedPerOrder: totalShippingFeeDeductedPerOrder);

  @override
  PaymentTransactionSummaryResponse totalPaymentAmountExcludingShipping(
    num? totalPaymentAmountExcludingShipping,
  ) => call(
    totalPaymentAmountExcludingShipping: totalPaymentAmountExcludingShipping,
  );

  @override
  PaymentTransactionSummaryResponse totalRefundAmount(num? totalRefundAmount) =>
      call(totalRefundAmount: totalRefundAmount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentTransactionSummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentTransactionSummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentTransactionSummaryResponse call({
    Object? fromDate = const $CopyWithPlaceholder(),
    Object? toDate = const $CopyWithPlaceholder(),
    Object? totalTransactions = const $CopyWithPlaceholder(),
    Object? totalPaymentTransactions = const $CopyWithPlaceholder(),
    Object? totalRefundTransactions = const $CopyWithPlaceholder(),
    Object? pendingTransactionsCount = const $CopyWithPlaceholder(),
    Object? successTransactionsCount = const $CopyWithPlaceholder(),
    Object? failedTransactionsCount = const $CopyWithPlaceholder(),
    Object? cancelledTransactionsCount = const $CopyWithPlaceholder(),
    Object? totalPaymentAmount = const $CopyWithPlaceholder(),
    Object? totalShippingFeeDeductedPerOrder = const $CopyWithPlaceholder(),
    Object? totalPaymentAmountExcludingShipping = const $CopyWithPlaceholder(),
    Object? totalRefundAmount = const $CopyWithPlaceholder(),
  }) {
    return PaymentTransactionSummaryResponse(
      fromDate: fromDate == const $CopyWithPlaceholder()
          ? _value.fromDate
          // ignore: cast_nullable_to_non_nullable
          : fromDate as DateTime?,
      toDate: toDate == const $CopyWithPlaceholder()
          ? _value.toDate
          // ignore: cast_nullable_to_non_nullable
          : toDate as DateTime?,
      totalTransactions: totalTransactions == const $CopyWithPlaceholder()
          ? _value.totalTransactions
          // ignore: cast_nullable_to_non_nullable
          : totalTransactions as int?,
      totalPaymentTransactions:
          totalPaymentTransactions == const $CopyWithPlaceholder()
          ? _value.totalPaymentTransactions
          // ignore: cast_nullable_to_non_nullable
          : totalPaymentTransactions as int?,
      totalRefundTransactions:
          totalRefundTransactions == const $CopyWithPlaceholder()
          ? _value.totalRefundTransactions
          // ignore: cast_nullable_to_non_nullable
          : totalRefundTransactions as int?,
      pendingTransactionsCount:
          pendingTransactionsCount == const $CopyWithPlaceholder()
          ? _value.pendingTransactionsCount
          // ignore: cast_nullable_to_non_nullable
          : pendingTransactionsCount as int?,
      successTransactionsCount:
          successTransactionsCount == const $CopyWithPlaceholder()
          ? _value.successTransactionsCount
          // ignore: cast_nullable_to_non_nullable
          : successTransactionsCount as int?,
      failedTransactionsCount:
          failedTransactionsCount == const $CopyWithPlaceholder()
          ? _value.failedTransactionsCount
          // ignore: cast_nullable_to_non_nullable
          : failedTransactionsCount as int?,
      cancelledTransactionsCount:
          cancelledTransactionsCount == const $CopyWithPlaceholder()
          ? _value.cancelledTransactionsCount
          // ignore: cast_nullable_to_non_nullable
          : cancelledTransactionsCount as int?,
      totalPaymentAmount: totalPaymentAmount == const $CopyWithPlaceholder()
          ? _value.totalPaymentAmount
          // ignore: cast_nullable_to_non_nullable
          : totalPaymentAmount as num?,
      totalShippingFeeDeductedPerOrder:
          totalShippingFeeDeductedPerOrder == const $CopyWithPlaceholder()
          ? _value.totalShippingFeeDeductedPerOrder
          // ignore: cast_nullable_to_non_nullable
          : totalShippingFeeDeductedPerOrder as num?,
      totalPaymentAmountExcludingShipping:
          totalPaymentAmountExcludingShipping == const $CopyWithPlaceholder()
          ? _value.totalPaymentAmountExcludingShipping
          // ignore: cast_nullable_to_non_nullable
          : totalPaymentAmountExcludingShipping as num?,
      totalRefundAmount: totalRefundAmount == const $CopyWithPlaceholder()
          ? _value.totalRefundAmount
          // ignore: cast_nullable_to_non_nullable
          : totalRefundAmount as num?,
    );
  }
}

extension $PaymentTransactionSummaryResponseCopyWith
    on PaymentTransactionSummaryResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPaymentTransactionSummaryResponse.copyWith(...)` or `instanceOfPaymentTransactionSummaryResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaymentTransactionSummaryResponseCWProxy get copyWith =>
      _$PaymentTransactionSummaryResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentTransactionSummaryResponse _$PaymentTransactionSummaryResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaymentTransactionSummaryResponse', json, (
  $checkedConvert,
) {
  final val = PaymentTransactionSummaryResponse(
    fromDate: $checkedConvert(
      'fromDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    toDate: $checkedConvert(
      'toDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    totalTransactions: $checkedConvert(
      'totalTransactions',
      (v) => (v as num?)?.toInt(),
    ),
    totalPaymentTransactions: $checkedConvert(
      'totalPaymentTransactions',
      (v) => (v as num?)?.toInt(),
    ),
    totalRefundTransactions: $checkedConvert(
      'totalRefundTransactions',
      (v) => (v as num?)?.toInt(),
    ),
    pendingTransactionsCount: $checkedConvert(
      'pendingTransactionsCount',
      (v) => (v as num?)?.toInt(),
    ),
    successTransactionsCount: $checkedConvert(
      'successTransactionsCount',
      (v) => (v as num?)?.toInt(),
    ),
    failedTransactionsCount: $checkedConvert(
      'failedTransactionsCount',
      (v) => (v as num?)?.toInt(),
    ),
    cancelledTransactionsCount: $checkedConvert(
      'cancelledTransactionsCount',
      (v) => (v as num?)?.toInt(),
    ),
    totalPaymentAmount: $checkedConvert('totalPaymentAmount', (v) => v as num?),
    totalShippingFeeDeductedPerOrder: $checkedConvert(
      'totalShippingFeeDeductedPerOrder',
      (v) => v as num?,
    ),
    totalPaymentAmountExcludingShipping: $checkedConvert(
      'totalPaymentAmountExcludingShipping',
      (v) => v as num?,
    ),
    totalRefundAmount: $checkedConvert('totalRefundAmount', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$PaymentTransactionSummaryResponseToJson(
  PaymentTransactionSummaryResponse instance,
) => <String, dynamic>{
  'fromDate': ?instance.fromDate?.toIso8601String(),
  'toDate': ?instance.toDate?.toIso8601String(),
  'totalTransactions': ?instance.totalTransactions,
  'totalPaymentTransactions': ?instance.totalPaymentTransactions,
  'totalRefundTransactions': ?instance.totalRefundTransactions,
  'pendingTransactionsCount': ?instance.pendingTransactionsCount,
  'successTransactionsCount': ?instance.successTransactionsCount,
  'failedTransactionsCount': ?instance.failedTransactionsCount,
  'cancelledTransactionsCount': ?instance.cancelledTransactionsCount,
  'totalPaymentAmount': ?instance.totalPaymentAmount,
  'totalShippingFeeDeductedPerOrder':
      ?instance.totalShippingFeeDeductedPerOrder,
  'totalPaymentAmountExcludingShipping':
      ?instance.totalPaymentAmountExcludingShipping,
  'totalRefundAmount': ?instance.totalRefundAmount,
};
