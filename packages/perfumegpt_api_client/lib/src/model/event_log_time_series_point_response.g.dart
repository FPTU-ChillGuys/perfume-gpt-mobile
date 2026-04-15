// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_log_time_series_point_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventLogTimeSeriesPointResponseCWProxy {
  EventLogTimeSeriesPointResponse bucketStart(DateTime bucketStart);

  EventLogTimeSeriesPointResponse totalCount(num totalCount);

  EventLogTimeSeriesPointResponse messageCount(num messageCount);

  EventLogTimeSeriesPointResponse searchCount(num searchCount);

  EventLogTimeSeriesPointResponse surveyCount(num surveyCount);

  EventLogTimeSeriesPointResponse productCount(num productCount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventLogTimeSeriesPointResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventLogTimeSeriesPointResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  EventLogTimeSeriesPointResponse call({
    DateTime bucketStart,
    num totalCount,
    num messageCount,
    num searchCount,
    num surveyCount,
    num productCount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfEventLogTimeSeriesPointResponse.copyWith(...)` or call `instanceOfEventLogTimeSeriesPointResponse.copyWith.fieldName(value)` for a single field.
class _$EventLogTimeSeriesPointResponseCWProxyImpl
    implements _$EventLogTimeSeriesPointResponseCWProxy {
  const _$EventLogTimeSeriesPointResponseCWProxyImpl(this._value);

  final EventLogTimeSeriesPointResponse _value;

  @override
  EventLogTimeSeriesPointResponse bucketStart(DateTime bucketStart) =>
      call(bucketStart: bucketStart);

  @override
  EventLogTimeSeriesPointResponse totalCount(num totalCount) =>
      call(totalCount: totalCount);

  @override
  EventLogTimeSeriesPointResponse messageCount(num messageCount) =>
      call(messageCount: messageCount);

  @override
  EventLogTimeSeriesPointResponse searchCount(num searchCount) =>
      call(searchCount: searchCount);

  @override
  EventLogTimeSeriesPointResponse surveyCount(num surveyCount) =>
      call(surveyCount: surveyCount);

  @override
  EventLogTimeSeriesPointResponse productCount(num productCount) =>
      call(productCount: productCount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventLogTimeSeriesPointResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventLogTimeSeriesPointResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  EventLogTimeSeriesPointResponse call({
    Object? bucketStart = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? messageCount = const $CopyWithPlaceholder(),
    Object? searchCount = const $CopyWithPlaceholder(),
    Object? surveyCount = const $CopyWithPlaceholder(),
    Object? productCount = const $CopyWithPlaceholder(),
  }) {
    return EventLogTimeSeriesPointResponse(
      bucketStart:
          bucketStart == const $CopyWithPlaceholder() || bucketStart == null
          ? _value.bucketStart
          // ignore: cast_nullable_to_non_nullable
          : bucketStart as DateTime,
      totalCount:
          totalCount == const $CopyWithPlaceholder() || totalCount == null
          ? _value.totalCount
          // ignore: cast_nullable_to_non_nullable
          : totalCount as num,
      messageCount:
          messageCount == const $CopyWithPlaceholder() || messageCount == null
          ? _value.messageCount
          // ignore: cast_nullable_to_non_nullable
          : messageCount as num,
      searchCount:
          searchCount == const $CopyWithPlaceholder() || searchCount == null
          ? _value.searchCount
          // ignore: cast_nullable_to_non_nullable
          : searchCount as num,
      surveyCount:
          surveyCount == const $CopyWithPlaceholder() || surveyCount == null
          ? _value.surveyCount
          // ignore: cast_nullable_to_non_nullable
          : surveyCount as num,
      productCount:
          productCount == const $CopyWithPlaceholder() || productCount == null
          ? _value.productCount
          // ignore: cast_nullable_to_non_nullable
          : productCount as num,
    );
  }
}

extension $EventLogTimeSeriesPointResponseCopyWith
    on EventLogTimeSeriesPointResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfEventLogTimeSeriesPointResponse.copyWith(...)` or `instanceOfEventLogTimeSeriesPointResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventLogTimeSeriesPointResponseCWProxy get copyWith =>
      _$EventLogTimeSeriesPointResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventLogTimeSeriesPointResponse _$EventLogTimeSeriesPointResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EventLogTimeSeriesPointResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'bucketStart',
      'totalCount',
      'messageCount',
      'searchCount',
      'surveyCount',
      'productCount',
    ],
  );
  final val = EventLogTimeSeriesPointResponse(
    bucketStart: $checkedConvert(
      'bucketStart',
      (v) => DateTime.parse(v as String),
    ),
    totalCount: $checkedConvert('totalCount', (v) => v as num),
    messageCount: $checkedConvert('messageCount', (v) => v as num),
    searchCount: $checkedConvert('searchCount', (v) => v as num),
    surveyCount: $checkedConvert('surveyCount', (v) => v as num),
    productCount: $checkedConvert('productCount', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$EventLogTimeSeriesPointResponseToJson(
  EventLogTimeSeriesPointResponse instance,
) => <String, dynamic>{
  'bucketStart': instance.bucketStart.toIso8601String(),
  'totalCount': instance.totalCount,
  'messageCount': instance.messageCount,
  'searchCount': instance.searchCount,
  'surveyCount': instance.surveyCount,
  'productCount': instance.productCount,
};
