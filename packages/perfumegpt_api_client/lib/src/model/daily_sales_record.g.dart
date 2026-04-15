// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_sales_record.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DailySalesRecordCWProxy {
  DailySalesRecord date(String date);

  DailySalesRecord quantitySold(num quantitySold);

  DailySalesRecord revenue(num revenue);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DailySalesRecord(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DailySalesRecord(...).copyWith(id: 12, name: "My name")
  /// ```
  DailySalesRecord call({String date, num quantitySold, num revenue});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfDailySalesRecord.copyWith(...)` or call `instanceOfDailySalesRecord.copyWith.fieldName(value)` for a single field.
class _$DailySalesRecordCWProxyImpl implements _$DailySalesRecordCWProxy {
  const _$DailySalesRecordCWProxyImpl(this._value);

  final DailySalesRecord _value;

  @override
  DailySalesRecord date(String date) => call(date: date);

  @override
  DailySalesRecord quantitySold(num quantitySold) =>
      call(quantitySold: quantitySold);

  @override
  DailySalesRecord revenue(num revenue) => call(revenue: revenue);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DailySalesRecord(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DailySalesRecord(...).copyWith(id: 12, name: "My name")
  /// ```
  DailySalesRecord call({
    Object? date = const $CopyWithPlaceholder(),
    Object? quantitySold = const $CopyWithPlaceholder(),
    Object? revenue = const $CopyWithPlaceholder(),
  }) {
    return DailySalesRecord(
      date: date == const $CopyWithPlaceholder() || date == null
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as String,
      quantitySold:
          quantitySold == const $CopyWithPlaceholder() || quantitySold == null
          ? _value.quantitySold
          // ignore: cast_nullable_to_non_nullable
          : quantitySold as num,
      revenue: revenue == const $CopyWithPlaceholder() || revenue == null
          ? _value.revenue
          // ignore: cast_nullable_to_non_nullable
          : revenue as num,
    );
  }
}

extension $DailySalesRecordCopyWith on DailySalesRecord {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfDailySalesRecord.copyWith(...)` or `instanceOfDailySalesRecord.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DailySalesRecordCWProxy get copyWith => _$DailySalesRecordCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailySalesRecord _$DailySalesRecordFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DailySalesRecord', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['date', 'quantitySold', 'revenue']);
      final val = DailySalesRecord(
        date: $checkedConvert('date', (v) => v as String),
        quantitySold: $checkedConvert('quantitySold', (v) => v as num),
        revenue: $checkedConvert('revenue', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$DailySalesRecordToJson(DailySalesRecord instance) =>
    <String, dynamic>{
      'date': instance.date,
      'quantitySold': instance.quantitySold,
      'revenue': instance.revenue,
    };
