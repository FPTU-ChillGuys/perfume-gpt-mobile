// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_transaction_totals_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LoyaltyTransactionTotalsResponseCWProxy {
  LoyaltyTransactionTotalsResponse userId(String? userId);

  LoyaltyTransactionTotalsResponse totalEarnedPoints(int? totalEarnedPoints);

  LoyaltyTransactionTotalsResponse totalSpentPoints(int? totalSpentPoints);

  LoyaltyTransactionTotalsResponse pointBalance(int? pointBalance);

  LoyaltyTransactionTotalsResponse totalTransactions(int? totalTransactions);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LoyaltyTransactionTotalsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LoyaltyTransactionTotalsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  LoyaltyTransactionTotalsResponse call({
    String? userId,
    int? totalEarnedPoints,
    int? totalSpentPoints,
    int? pointBalance,
    int? totalTransactions,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLoyaltyTransactionTotalsResponse.copyWith(...)` or call `instanceOfLoyaltyTransactionTotalsResponse.copyWith.fieldName(value)` for a single field.
class _$LoyaltyTransactionTotalsResponseCWProxyImpl
    implements _$LoyaltyTransactionTotalsResponseCWProxy {
  const _$LoyaltyTransactionTotalsResponseCWProxyImpl(this._value);

  final LoyaltyTransactionTotalsResponse _value;

  @override
  LoyaltyTransactionTotalsResponse userId(String? userId) =>
      call(userId: userId);

  @override
  LoyaltyTransactionTotalsResponse totalEarnedPoints(int? totalEarnedPoints) =>
      call(totalEarnedPoints: totalEarnedPoints);

  @override
  LoyaltyTransactionTotalsResponse totalSpentPoints(int? totalSpentPoints) =>
      call(totalSpentPoints: totalSpentPoints);

  @override
  LoyaltyTransactionTotalsResponse pointBalance(int? pointBalance) =>
      call(pointBalance: pointBalance);

  @override
  LoyaltyTransactionTotalsResponse totalTransactions(int? totalTransactions) =>
      call(totalTransactions: totalTransactions);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LoyaltyTransactionTotalsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LoyaltyTransactionTotalsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  LoyaltyTransactionTotalsResponse call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? totalEarnedPoints = const $CopyWithPlaceholder(),
    Object? totalSpentPoints = const $CopyWithPlaceholder(),
    Object? pointBalance = const $CopyWithPlaceholder(),
    Object? totalTransactions = const $CopyWithPlaceholder(),
  }) {
    return LoyaltyTransactionTotalsResponse(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      totalEarnedPoints: totalEarnedPoints == const $CopyWithPlaceholder()
          ? _value.totalEarnedPoints
          // ignore: cast_nullable_to_non_nullable
          : totalEarnedPoints as int?,
      totalSpentPoints: totalSpentPoints == const $CopyWithPlaceholder()
          ? _value.totalSpentPoints
          // ignore: cast_nullable_to_non_nullable
          : totalSpentPoints as int?,
      pointBalance: pointBalance == const $CopyWithPlaceholder()
          ? _value.pointBalance
          // ignore: cast_nullable_to_non_nullable
          : pointBalance as int?,
      totalTransactions: totalTransactions == const $CopyWithPlaceholder()
          ? _value.totalTransactions
          // ignore: cast_nullable_to_non_nullable
          : totalTransactions as int?,
    );
  }
}

extension $LoyaltyTransactionTotalsResponseCopyWith
    on LoyaltyTransactionTotalsResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLoyaltyTransactionTotalsResponse.copyWith(...)` or `instanceOfLoyaltyTransactionTotalsResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LoyaltyTransactionTotalsResponseCWProxy get copyWith =>
      _$LoyaltyTransactionTotalsResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyTransactionTotalsResponse _$LoyaltyTransactionTotalsResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LoyaltyTransactionTotalsResponse', json, (
  $checkedConvert,
) {
  final val = LoyaltyTransactionTotalsResponse(
    userId: $checkedConvert('userId', (v) => v as String?),
    totalEarnedPoints: $checkedConvert(
      'totalEarnedPoints',
      (v) => (v as num?)?.toInt(),
    ),
    totalSpentPoints: $checkedConvert(
      'totalSpentPoints',
      (v) => (v as num?)?.toInt(),
    ),
    pointBalance: $checkedConvert('pointBalance', (v) => (v as num?)?.toInt()),
    totalTransactions: $checkedConvert(
      'totalTransactions',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$LoyaltyTransactionTotalsResponseToJson(
  LoyaltyTransactionTotalsResponse instance,
) => <String, dynamic>{
  'userId': ?instance.userId,
  'totalEarnedPoints': ?instance.totalEarnedPoints,
  'totalSpentPoints': ?instance.totalSpentPoints,
  'pointBalance': ?instance.pointBalance,
  'totalTransactions': ?instance.totalTransactions,
};
