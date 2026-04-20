// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_trend_forecast_structured_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AITrendForecastStructuredResponseCWProxy {
  AITrendForecastStructuredResponse forecast(String forecast);

  AITrendForecastStructuredResponse period(String period);

  AITrendForecastStructuredResponse analyzedLogCount(num analyzedLogCount);

  AITrendForecastStructuredResponse generatedAt(DateTime generatedAt);

  AITrendForecastStructuredResponse metadata(AIResponseMetadata? metadata);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AITrendForecastStructuredResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AITrendForecastStructuredResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AITrendForecastStructuredResponse call({
    String forecast,
    String period,
    num analyzedLogCount,
    DateTime generatedAt,
    AIResponseMetadata? metadata,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAITrendForecastStructuredResponse.copyWith(...)` or call `instanceOfAITrendForecastStructuredResponse.copyWith.fieldName(value)` for a single field.
class _$AITrendForecastStructuredResponseCWProxyImpl
    implements _$AITrendForecastStructuredResponseCWProxy {
  const _$AITrendForecastStructuredResponseCWProxyImpl(this._value);

  final AITrendForecastStructuredResponse _value;

  @override
  AITrendForecastStructuredResponse forecast(String forecast) =>
      call(forecast: forecast);

  @override
  AITrendForecastStructuredResponse period(String period) =>
      call(period: period);

  @override
  AITrendForecastStructuredResponse analyzedLogCount(num analyzedLogCount) =>
      call(analyzedLogCount: analyzedLogCount);

  @override
  AITrendForecastStructuredResponse generatedAt(DateTime generatedAt) =>
      call(generatedAt: generatedAt);

  @override
  AITrendForecastStructuredResponse metadata(AIResponseMetadata? metadata) =>
      call(metadata: metadata);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AITrendForecastStructuredResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AITrendForecastStructuredResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AITrendForecastStructuredResponse call({
    Object? forecast = const $CopyWithPlaceholder(),
    Object? period = const $CopyWithPlaceholder(),
    Object? analyzedLogCount = const $CopyWithPlaceholder(),
    Object? generatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return AITrendForecastStructuredResponse(
      forecast: forecast == const $CopyWithPlaceholder() || forecast == null
          ? _value.forecast
          // ignore: cast_nullable_to_non_nullable
          : forecast as String,
      period: period == const $CopyWithPlaceholder() || period == null
          ? _value.period
          // ignore: cast_nullable_to_non_nullable
          : period as String,
      analyzedLogCount:
          analyzedLogCount == const $CopyWithPlaceholder() ||
              analyzedLogCount == null
          ? _value.analyzedLogCount
          // ignore: cast_nullable_to_non_nullable
          : analyzedLogCount as num,
      generatedAt:
          generatedAt == const $CopyWithPlaceholder() || generatedAt == null
          ? _value.generatedAt
          // ignore: cast_nullable_to_non_nullable
          : generatedAt as DateTime,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as AIResponseMetadata?,
    );
  }
}

extension $AITrendForecastStructuredResponseCopyWith
    on AITrendForecastStructuredResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAITrendForecastStructuredResponse.copyWith(...)` or `instanceOfAITrendForecastStructuredResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AITrendForecastStructuredResponseCWProxy get copyWith =>
      _$AITrendForecastStructuredResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AITrendForecastStructuredResponse _$AITrendForecastStructuredResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AITrendForecastStructuredResponse', json, (
  $checkedConvert,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'forecast',
      'period',
      'analyzedLogCount',
      'generatedAt',
    ],
  );
  final val = AITrendForecastStructuredResponse(
    forecast: $checkedConvert('forecast', (v) => v as String),
    period: $checkedConvert('period', (v) => v as String),
    analyzedLogCount: $checkedConvert('analyzedLogCount', (v) => v as num),
    generatedAt: $checkedConvert(
      'generatedAt',
      (v) => DateTime.parse(v as String),
    ),
    metadata: $checkedConvert(
      'metadata',
      (v) => v == null
          ? null
          : AIResponseMetadata.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$AITrendForecastStructuredResponseToJson(
  AITrendForecastStructuredResponse instance,
) => <String, dynamic>{
  'forecast': instance.forecast,
  'period': instance.period,
  'analyzedLogCount': instance.analyzedLogCount,
  'generatedAt': instance.generatedAt.toIso8601String(),
  'metadata': ?instance.metadata?.toJson(),
};
