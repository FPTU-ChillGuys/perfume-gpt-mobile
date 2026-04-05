// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revenue_summary_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RevenueSummaryResponseCWProxy {
  RevenueSummaryResponse fromDate(DateTime? fromDate);

  RevenueSummaryResponse toDate(DateTime? toDate);

  RevenueSummaryResponse grossRevenue(num? grossRevenue);

  RevenueSummaryResponse refundedAmount(num? refundedAmount);

  RevenueSummaryResponse netRevenue(num? netRevenue);

  RevenueSummaryResponse successfulTransactionsCount(
    int? successfulTransactionsCount,
  );

  RevenueSummaryResponse paidOrdersCount(int? paidOrdersCount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RevenueSummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RevenueSummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  RevenueSummaryResponse call({
    DateTime? fromDate,
    DateTime? toDate,
    num? grossRevenue,
    num? refundedAmount,
    num? netRevenue,
    int? successfulTransactionsCount,
    int? paidOrdersCount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRevenueSummaryResponse.copyWith(...)` or call `instanceOfRevenueSummaryResponse.copyWith.fieldName(value)` for a single field.
class _$RevenueSummaryResponseCWProxyImpl
    implements _$RevenueSummaryResponseCWProxy {
  const _$RevenueSummaryResponseCWProxyImpl(this._value);

  final RevenueSummaryResponse _value;

  @override
  RevenueSummaryResponse fromDate(DateTime? fromDate) =>
      call(fromDate: fromDate);

  @override
  RevenueSummaryResponse toDate(DateTime? toDate) => call(toDate: toDate);

  @override
  RevenueSummaryResponse grossRevenue(num? grossRevenue) =>
      call(grossRevenue: grossRevenue);

  @override
  RevenueSummaryResponse refundedAmount(num? refundedAmount) =>
      call(refundedAmount: refundedAmount);

  @override
  RevenueSummaryResponse netRevenue(num? netRevenue) =>
      call(netRevenue: netRevenue);

  @override
  RevenueSummaryResponse successfulTransactionsCount(
    int? successfulTransactionsCount,
  ) => call(successfulTransactionsCount: successfulTransactionsCount);

  @override
  RevenueSummaryResponse paidOrdersCount(int? paidOrdersCount) =>
      call(paidOrdersCount: paidOrdersCount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RevenueSummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RevenueSummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  RevenueSummaryResponse call({
    Object? fromDate = const $CopyWithPlaceholder(),
    Object? toDate = const $CopyWithPlaceholder(),
    Object? grossRevenue = const $CopyWithPlaceholder(),
    Object? refundedAmount = const $CopyWithPlaceholder(),
    Object? netRevenue = const $CopyWithPlaceholder(),
    Object? successfulTransactionsCount = const $CopyWithPlaceholder(),
    Object? paidOrdersCount = const $CopyWithPlaceholder(),
  }) {
    return RevenueSummaryResponse(
      fromDate: fromDate == const $CopyWithPlaceholder()
          ? _value.fromDate
          // ignore: cast_nullable_to_non_nullable
          : fromDate as DateTime?,
      toDate: toDate == const $CopyWithPlaceholder()
          ? _value.toDate
          // ignore: cast_nullable_to_non_nullable
          : toDate as DateTime?,
      grossRevenue: grossRevenue == const $CopyWithPlaceholder()
          ? _value.grossRevenue
          // ignore: cast_nullable_to_non_nullable
          : grossRevenue as num?,
      refundedAmount: refundedAmount == const $CopyWithPlaceholder()
          ? _value.refundedAmount
          // ignore: cast_nullable_to_non_nullable
          : refundedAmount as num?,
      netRevenue: netRevenue == const $CopyWithPlaceholder()
          ? _value.netRevenue
          // ignore: cast_nullable_to_non_nullable
          : netRevenue as num?,
      successfulTransactionsCount:
          successfulTransactionsCount == const $CopyWithPlaceholder()
          ? _value.successfulTransactionsCount
          // ignore: cast_nullable_to_non_nullable
          : successfulTransactionsCount as int?,
      paidOrdersCount: paidOrdersCount == const $CopyWithPlaceholder()
          ? _value.paidOrdersCount
          // ignore: cast_nullable_to_non_nullable
          : paidOrdersCount as int?,
    );
  }
}

extension $RevenueSummaryResponseCopyWith on RevenueSummaryResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRevenueSummaryResponse.copyWith(...)` or `instanceOfRevenueSummaryResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RevenueSummaryResponseCWProxy get copyWith =>
      _$RevenueSummaryResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RevenueSummaryResponse _$RevenueSummaryResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RevenueSummaryResponse', json, ($checkedConvert) {
  final val = RevenueSummaryResponse(
    fromDate: $checkedConvert(
      'fromDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    toDate: $checkedConvert(
      'toDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    grossRevenue: $checkedConvert('grossRevenue', (v) => v as num?),
    refundedAmount: $checkedConvert('refundedAmount', (v) => v as num?),
    netRevenue: $checkedConvert('netRevenue', (v) => v as num?),
    successfulTransactionsCount: $checkedConvert(
      'successfulTransactionsCount',
      (v) => (v as num?)?.toInt(),
    ),
    paidOrdersCount: $checkedConvert(
      'paidOrdersCount',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$RevenueSummaryResponseToJson(
  RevenueSummaryResponse instance,
) => <String, dynamic>{
  'fromDate': ?instance.fromDate?.toIso8601String(),
  'toDate': ?instance.toDate?.toIso8601String(),
  'grossRevenue': ?instance.grossRevenue,
  'refundedAmount': ?instance.refundedAmount,
  'netRevenue': ?instance.netRevenue,
  'successfulTransactionsCount': ?instance.successfulTransactionsCount,
  'paidOrdersCount': ?instance.paidOrdersCount,
};
