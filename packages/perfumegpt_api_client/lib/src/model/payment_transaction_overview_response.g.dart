// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_transaction_overview_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentTransactionOverviewResponseCWProxy {
  PaymentTransactionOverviewResponse summary(
    PaymentTransactionSummaryResponse summary,
  );

  PaymentTransactionOverviewResponse transactions(
    PagedResultOfPaymentTransactionAdminItemResponse transactions,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentTransactionOverviewResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentTransactionOverviewResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentTransactionOverviewResponse call({
    PaymentTransactionSummaryResponse summary,
    PagedResultOfPaymentTransactionAdminItemResponse transactions,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPaymentTransactionOverviewResponse.copyWith(...)` or call `instanceOfPaymentTransactionOverviewResponse.copyWith.fieldName(value)` for a single field.
class _$PaymentTransactionOverviewResponseCWProxyImpl
    implements _$PaymentTransactionOverviewResponseCWProxy {
  const _$PaymentTransactionOverviewResponseCWProxyImpl(this._value);

  final PaymentTransactionOverviewResponse _value;

  @override
  PaymentTransactionOverviewResponse summary(
    PaymentTransactionSummaryResponse summary,
  ) => call(summary: summary);

  @override
  PaymentTransactionOverviewResponse transactions(
    PagedResultOfPaymentTransactionAdminItemResponse transactions,
  ) => call(transactions: transactions);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentTransactionOverviewResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentTransactionOverviewResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentTransactionOverviewResponse call({
    Object? summary = const $CopyWithPlaceholder(),
    Object? transactions = const $CopyWithPlaceholder(),
  }) {
    return PaymentTransactionOverviewResponse(
      summary: summary == const $CopyWithPlaceholder() || summary == null
          ? _value.summary
          // ignore: cast_nullable_to_non_nullable
          : summary as PaymentTransactionSummaryResponse,
      transactions:
          transactions == const $CopyWithPlaceholder() || transactions == null
          ? _value.transactions
          // ignore: cast_nullable_to_non_nullable
          : transactions as PagedResultOfPaymentTransactionAdminItemResponse,
    );
  }
}

extension $PaymentTransactionOverviewResponseCopyWith
    on PaymentTransactionOverviewResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPaymentTransactionOverviewResponse.copyWith(...)` or `instanceOfPaymentTransactionOverviewResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaymentTransactionOverviewResponseCWProxy get copyWith =>
      _$PaymentTransactionOverviewResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentTransactionOverviewResponse _$PaymentTransactionOverviewResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaymentTransactionOverviewResponse', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['summary', 'transactions']);
  final val = PaymentTransactionOverviewResponse(
    summary: $checkedConvert(
      'summary',
      (v) =>
          PaymentTransactionSummaryResponse.fromJson(v as Map<String, dynamic>),
    ),
    transactions: $checkedConvert(
      'transactions',
      (v) => PagedResultOfPaymentTransactionAdminItemResponse.fromJson(
        v as Map<String, dynamic>,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaymentTransactionOverviewResponseToJson(
  PaymentTransactionOverviewResponse instance,
) => <String, dynamic>{
  'summary': instance.summary.toJson(),
  'transactions': instance.transactions.toJson(),
};
