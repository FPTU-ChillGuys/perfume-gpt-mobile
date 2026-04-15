// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_log_time_series_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventLogTimeSeriesResponseCWProxy {
  EventLogTimeSeriesResponse userId(String? userId);

  EventLogTimeSeriesResponse startDate(DateTime? startDate);

  EventLogTimeSeriesResponse endDate(DateTime? endDate);

  EventLogTimeSeriesResponse granularity(
    EventLogTimeSeriesResponseGranularityEnum granularity,
  );

  EventLogTimeSeriesResponse points(
    List<EventLogTimeSeriesPointResponse> points,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventLogTimeSeriesResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventLogTimeSeriesResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  EventLogTimeSeriesResponse call({
    String? userId,
    DateTime? startDate,
    DateTime? endDate,
    EventLogTimeSeriesResponseGranularityEnum granularity,
    List<EventLogTimeSeriesPointResponse> points,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfEventLogTimeSeriesResponse.copyWith(...)` or call `instanceOfEventLogTimeSeriesResponse.copyWith.fieldName(value)` for a single field.
class _$EventLogTimeSeriesResponseCWProxyImpl
    implements _$EventLogTimeSeriesResponseCWProxy {
  const _$EventLogTimeSeriesResponseCWProxyImpl(this._value);

  final EventLogTimeSeriesResponse _value;

  @override
  EventLogTimeSeriesResponse userId(String? userId) => call(userId: userId);

  @override
  EventLogTimeSeriesResponse startDate(DateTime? startDate) =>
      call(startDate: startDate);

  @override
  EventLogTimeSeriesResponse endDate(DateTime? endDate) =>
      call(endDate: endDate);

  @override
  EventLogTimeSeriesResponse granularity(
    EventLogTimeSeriesResponseGranularityEnum granularity,
  ) => call(granularity: granularity);

  @override
  EventLogTimeSeriesResponse points(
    List<EventLogTimeSeriesPointResponse> points,
  ) => call(points: points);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventLogTimeSeriesResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventLogTimeSeriesResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  EventLogTimeSeriesResponse call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? granularity = const $CopyWithPlaceholder(),
    Object? points = const $CopyWithPlaceholder(),
  }) {
    return EventLogTimeSeriesResponse(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      startDate: startDate == const $CopyWithPlaceholder()
          ? _value.startDate
          // ignore: cast_nullable_to_non_nullable
          : startDate as DateTime?,
      endDate: endDate == const $CopyWithPlaceholder()
          ? _value.endDate
          // ignore: cast_nullable_to_non_nullable
          : endDate as DateTime?,
      granularity:
          granularity == const $CopyWithPlaceholder() || granularity == null
          ? _value.granularity
          // ignore: cast_nullable_to_non_nullable
          : granularity as EventLogTimeSeriesResponseGranularityEnum,
      points: points == const $CopyWithPlaceholder() || points == null
          ? _value.points
          // ignore: cast_nullable_to_non_nullable
          : points as List<EventLogTimeSeriesPointResponse>,
    );
  }
}

extension $EventLogTimeSeriesResponseCopyWith on EventLogTimeSeriesResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfEventLogTimeSeriesResponse.copyWith(...)` or `instanceOfEventLogTimeSeriesResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventLogTimeSeriesResponseCWProxy get copyWith =>
      _$EventLogTimeSeriesResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventLogTimeSeriesResponse _$EventLogTimeSeriesResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EventLogTimeSeriesResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['granularity', 'points']);
  final val = EventLogTimeSeriesResponse(
    userId: $checkedConvert('userId', (v) => v as String?),
    startDate: $checkedConvert(
      'startDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    endDate: $checkedConvert(
      'endDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    granularity: $checkedConvert(
      'granularity',
      (v) => $enumDecode(_$EventLogTimeSeriesResponseGranularityEnumEnumMap, v),
    ),
    points: $checkedConvert(
      'points',
      (v) => (v as List<dynamic>)
          .map(
            (e) => EventLogTimeSeriesPointResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$EventLogTimeSeriesResponseToJson(
  EventLogTimeSeriesResponse instance,
) => <String, dynamic>{
  'userId': ?instance.userId,
  'startDate': ?instance.startDate?.toIso8601String(),
  'endDate': ?instance.endDate?.toIso8601String(),
  'granularity':
      _$EventLogTimeSeriesResponseGranularityEnumEnumMap[instance.granularity]!,
  'points': instance.points.map((e) => e.toJson()).toList(),
};

const _$EventLogTimeSeriesResponseGranularityEnumEnumMap = {
  EventLogTimeSeriesResponseGranularityEnum.day: 'day',
  EventLogTimeSeriesResponseGranularityEnum.week: 'week',
};
