// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_log_summary_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventLogSummaryResponseCWProxy {
  EventLogSummaryResponse userId(String? userId);

  EventLogSummaryResponse startDate(DateTime? startDate);

  EventLogSummaryResponse endDate(DateTime? endDate);

  EventLogSummaryResponse totalCount(num totalCount);

  EventLogSummaryResponse messageCount(num messageCount);

  EventLogSummaryResponse searchCount(num searchCount);

  EventLogSummaryResponse surveyCount(num surveyCount);

  EventLogSummaryResponse productCount(num productCount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventLogSummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventLogSummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  EventLogSummaryResponse call({
    String? userId,
    DateTime? startDate,
    DateTime? endDate,
    num totalCount,
    num messageCount,
    num searchCount,
    num surveyCount,
    num productCount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfEventLogSummaryResponse.copyWith(...)` or call `instanceOfEventLogSummaryResponse.copyWith.fieldName(value)` for a single field.
class _$EventLogSummaryResponseCWProxyImpl
    implements _$EventLogSummaryResponseCWProxy {
  const _$EventLogSummaryResponseCWProxyImpl(this._value);

  final EventLogSummaryResponse _value;

  @override
  EventLogSummaryResponse userId(String? userId) => call(userId: userId);

  @override
  EventLogSummaryResponse startDate(DateTime? startDate) =>
      call(startDate: startDate);

  @override
  EventLogSummaryResponse endDate(DateTime? endDate) => call(endDate: endDate);

  @override
  EventLogSummaryResponse totalCount(num totalCount) =>
      call(totalCount: totalCount);

  @override
  EventLogSummaryResponse messageCount(num messageCount) =>
      call(messageCount: messageCount);

  @override
  EventLogSummaryResponse searchCount(num searchCount) =>
      call(searchCount: searchCount);

  @override
  EventLogSummaryResponse surveyCount(num surveyCount) =>
      call(surveyCount: surveyCount);

  @override
  EventLogSummaryResponse productCount(num productCount) =>
      call(productCount: productCount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventLogSummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventLogSummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  EventLogSummaryResponse call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? messageCount = const $CopyWithPlaceholder(),
    Object? searchCount = const $CopyWithPlaceholder(),
    Object? surveyCount = const $CopyWithPlaceholder(),
    Object? productCount = const $CopyWithPlaceholder(),
  }) {
    return EventLogSummaryResponse(
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

extension $EventLogSummaryResponseCopyWith on EventLogSummaryResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfEventLogSummaryResponse.copyWith(...)` or `instanceOfEventLogSummaryResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventLogSummaryResponseCWProxy get copyWith =>
      _$EventLogSummaryResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventLogSummaryResponse _$EventLogSummaryResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EventLogSummaryResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'totalCount',
      'messageCount',
      'searchCount',
      'surveyCount',
      'productCount',
    ],
  );
  final val = EventLogSummaryResponse(
    userId: $checkedConvert('userId', (v) => v as String?),
    startDate: $checkedConvert(
      'startDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    endDate: $checkedConvert(
      'endDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    totalCount: $checkedConvert('totalCount', (v) => v as num),
    messageCount: $checkedConvert('messageCount', (v) => v as num),
    searchCount: $checkedConvert('searchCount', (v) => v as num),
    surveyCount: $checkedConvert('surveyCount', (v) => v as num),
    productCount: $checkedConvert('productCount', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$EventLogSummaryResponseToJson(
  EventLogSummaryResponse instance,
) => <String, dynamic>{
  'userId': ?instance.userId,
  'startDate': ?instance.startDate?.toIso8601String(),
  'endDate': ?instance.endDate?.toIso8601String(),
  'totalCount': instance.totalCount,
  'messageCount': instance.messageCount,
  'searchCount': instance.searchCount,
  'surveyCount': instance.surveyCount,
  'productCount': instance.productCount,
};
