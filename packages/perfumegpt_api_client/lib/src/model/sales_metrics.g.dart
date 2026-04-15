// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_metrics.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SalesMetricsCWProxy {
  SalesMetrics last7DaysSales(num last7DaysSales);

  SalesMetrics last30DaysSales(num last30DaysSales);

  SalesMetrics trend(SalesMetricsTrendEnum trend);

  SalesMetrics volatility(SalesMetricsVolatilityEnum volatility);

  SalesMetrics encodedData(String? encodedData);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SalesMetrics(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SalesMetrics(...).copyWith(id: 12, name: "My name")
  /// ```
  SalesMetrics call({
    num last7DaysSales,
    num last30DaysSales,
    SalesMetricsTrendEnum trend,
    SalesMetricsVolatilityEnum volatility,
    String? encodedData,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSalesMetrics.copyWith(...)` or call `instanceOfSalesMetrics.copyWith.fieldName(value)` for a single field.
class _$SalesMetricsCWProxyImpl implements _$SalesMetricsCWProxy {
  const _$SalesMetricsCWProxyImpl(this._value);

  final SalesMetrics _value;

  @override
  SalesMetrics last7DaysSales(num last7DaysSales) =>
      call(last7DaysSales: last7DaysSales);

  @override
  SalesMetrics last30DaysSales(num last30DaysSales) =>
      call(last30DaysSales: last30DaysSales);

  @override
  SalesMetrics trend(SalesMetricsTrendEnum trend) => call(trend: trend);

  @override
  SalesMetrics volatility(SalesMetricsVolatilityEnum volatility) =>
      call(volatility: volatility);

  @override
  SalesMetrics encodedData(String? encodedData) =>
      call(encodedData: encodedData);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SalesMetrics(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SalesMetrics(...).copyWith(id: 12, name: "My name")
  /// ```
  SalesMetrics call({
    Object? last7DaysSales = const $CopyWithPlaceholder(),
    Object? last30DaysSales = const $CopyWithPlaceholder(),
    Object? trend = const $CopyWithPlaceholder(),
    Object? volatility = const $CopyWithPlaceholder(),
    Object? encodedData = const $CopyWithPlaceholder(),
  }) {
    return SalesMetrics(
      last7DaysSales:
          last7DaysSales == const $CopyWithPlaceholder() ||
              last7DaysSales == null
          ? _value.last7DaysSales
          // ignore: cast_nullable_to_non_nullable
          : last7DaysSales as num,
      last30DaysSales:
          last30DaysSales == const $CopyWithPlaceholder() ||
              last30DaysSales == null
          ? _value.last30DaysSales
          // ignore: cast_nullable_to_non_nullable
          : last30DaysSales as num,
      trend: trend == const $CopyWithPlaceholder() || trend == null
          ? _value.trend
          // ignore: cast_nullable_to_non_nullable
          : trend as SalesMetricsTrendEnum,
      volatility:
          volatility == const $CopyWithPlaceholder() || volatility == null
          ? _value.volatility
          // ignore: cast_nullable_to_non_nullable
          : volatility as SalesMetricsVolatilityEnum,
      encodedData: encodedData == const $CopyWithPlaceholder()
          ? _value.encodedData
          // ignore: cast_nullable_to_non_nullable
          : encodedData as String?,
    );
  }
}

extension $SalesMetricsCopyWith on SalesMetrics {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSalesMetrics.copyWith(...)` or `instanceOfSalesMetrics.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SalesMetricsCWProxy get copyWith => _$SalesMetricsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesMetrics _$SalesMetricsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SalesMetrics', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const [
          'last7DaysSales',
          'last30DaysSales',
          'trend',
          'volatility',
          'encodedData',
        ],
      );
      final val = SalesMetrics(
        last7DaysSales: $checkedConvert('last7DaysSales', (v) => v as num),
        last30DaysSales: $checkedConvert('last30DaysSales', (v) => v as num),
        trend: $checkedConvert(
          'trend',
          (v) => $enumDecode(_$SalesMetricsTrendEnumEnumMap, v),
        ),
        volatility: $checkedConvert(
          'volatility',
          (v) => $enumDecode(_$SalesMetricsVolatilityEnumEnumMap, v),
        ),
        encodedData: $checkedConvert('encodedData', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$SalesMetricsToJson(SalesMetrics instance) =>
    <String, dynamic>{
      'last7DaysSales': instance.last7DaysSales,
      'last30DaysSales': instance.last30DaysSales,
      'trend': _$SalesMetricsTrendEnumEnumMap[instance.trend]!,
      'volatility': _$SalesMetricsVolatilityEnumEnumMap[instance.volatility]!,
      'encodedData': instance.encodedData,
    };

const _$SalesMetricsTrendEnumEnumMap = {
  SalesMetricsTrendEnum.INCREASING: 'INCREASING',
  SalesMetricsTrendEnum.STABLE: 'STABLE',
  SalesMetricsTrendEnum.DECLINING: 'DECLINING',
};

const _$SalesMetricsVolatilityEnumEnumMap = {
  SalesMetricsVolatilityEnum.LOW: 'LOW',
  SalesMetricsVolatilityEnum.MEDIUM: 'MEDIUM',
  SalesMetricsVolatilityEnum.HIGH: 'HIGH',
};
