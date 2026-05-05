// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_revenue_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DailyRevenueItemCWProxy {
  DailyRevenueItem date(DateTime? date);

  DailyRevenueItem grossRevenue(num? grossRevenue);

  DailyRevenueItem refundedAmount(num? refundedAmount);

  DailyRevenueItem netRevenue(num? netRevenue);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DailyRevenueItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DailyRevenueItem(...).copyWith(id: 12, name: "My name")
  /// ```
  DailyRevenueItem call({
    DateTime? date,
    num? grossRevenue,
    num? refundedAmount,
    num? netRevenue,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfDailyRevenueItem.copyWith(...)` or call `instanceOfDailyRevenueItem.copyWith.fieldName(value)` for a single field.
class _$DailyRevenueItemCWProxyImpl implements _$DailyRevenueItemCWProxy {
  const _$DailyRevenueItemCWProxyImpl(this._value);

  final DailyRevenueItem _value;

  @override
  DailyRevenueItem date(DateTime? date) => call(date: date);

  @override
  DailyRevenueItem grossRevenue(num? grossRevenue) =>
      call(grossRevenue: grossRevenue);

  @override
  DailyRevenueItem refundedAmount(num? refundedAmount) =>
      call(refundedAmount: refundedAmount);

  @override
  DailyRevenueItem netRevenue(num? netRevenue) => call(netRevenue: netRevenue);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DailyRevenueItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DailyRevenueItem(...).copyWith(id: 12, name: "My name")
  /// ```
  DailyRevenueItem call({
    Object? date = const $CopyWithPlaceholder(),
    Object? grossRevenue = const $CopyWithPlaceholder(),
    Object? refundedAmount = const $CopyWithPlaceholder(),
    Object? netRevenue = const $CopyWithPlaceholder(),
  }) {
    return DailyRevenueItem(
      date: date == const $CopyWithPlaceholder()
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as DateTime?,
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
    );
  }
}

extension $DailyRevenueItemCopyWith on DailyRevenueItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfDailyRevenueItem.copyWith(...)` or `instanceOfDailyRevenueItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DailyRevenueItemCWProxy get copyWith => _$DailyRevenueItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyRevenueItem _$DailyRevenueItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DailyRevenueItem', json, ($checkedConvert) {
      final val = DailyRevenueItem(
        date: $checkedConvert(
          'date',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        grossRevenue: $checkedConvert('grossRevenue', (v) => v as num?),
        refundedAmount: $checkedConvert('refundedAmount', (v) => v as num?),
        netRevenue: $checkedConvert('netRevenue', (v) => v as num?),
      );
      return val;
    });

Map<String, dynamic> _$DailyRevenueItemToJson(DailyRevenueItem instance) =>
    <String, dynamic>{
      'date': ?instance.date?.toIso8601String(),
      'grossRevenue': ?instance.grossRevenue,
      'refundedAmount': ?instance.refundedAmount,
      'netRevenue': ?instance.netRevenue,
    };
