// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_log_summary_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserLogSummaryRequestCWProxy {
  UserLogSummaryRequest userId(String userId);

  UserLogSummaryRequest startDate(DateTime? startDate);

  UserLogSummaryRequest endDate(DateTime? endDate);

  UserLogSummaryRequest logSummary(String logSummary);

  UserLogSummaryRequest featureSnapshot(Object? featureSnapshot);

  UserLogSummaryRequest dailyLogSummary(Object? dailyLogSummary);

  UserLogSummaryRequest dailyFeatureSnapshot(Object? dailyFeatureSnapshot);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserLogSummaryRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserLogSummaryRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UserLogSummaryRequest call({
    String userId,
    DateTime? startDate,
    DateTime? endDate,
    String logSummary,
    Object? featureSnapshot,
    Object? dailyLogSummary,
    Object? dailyFeatureSnapshot,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUserLogSummaryRequest.copyWith(...)` or call `instanceOfUserLogSummaryRequest.copyWith.fieldName(value)` for a single field.
class _$UserLogSummaryRequestCWProxyImpl
    implements _$UserLogSummaryRequestCWProxy {
  const _$UserLogSummaryRequestCWProxyImpl(this._value);

  final UserLogSummaryRequest _value;

  @override
  UserLogSummaryRequest userId(String userId) => call(userId: userId);

  @override
  UserLogSummaryRequest startDate(DateTime? startDate) =>
      call(startDate: startDate);

  @override
  UserLogSummaryRequest endDate(DateTime? endDate) => call(endDate: endDate);

  @override
  UserLogSummaryRequest logSummary(String logSummary) =>
      call(logSummary: logSummary);

  @override
  UserLogSummaryRequest featureSnapshot(Object? featureSnapshot) =>
      call(featureSnapshot: featureSnapshot);

  @override
  UserLogSummaryRequest dailyLogSummary(Object? dailyLogSummary) =>
      call(dailyLogSummary: dailyLogSummary);

  @override
  UserLogSummaryRequest dailyFeatureSnapshot(Object? dailyFeatureSnapshot) =>
      call(dailyFeatureSnapshot: dailyFeatureSnapshot);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserLogSummaryRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserLogSummaryRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UserLogSummaryRequest call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? logSummary = const $CopyWithPlaceholder(),
    Object? featureSnapshot = const $CopyWithPlaceholder(),
    Object? dailyLogSummary = const $CopyWithPlaceholder(),
    Object? dailyFeatureSnapshot = const $CopyWithPlaceholder(),
  }) {
    return UserLogSummaryRequest(
      userId: userId == const $CopyWithPlaceholder() || userId == null
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String,
      startDate: startDate == const $CopyWithPlaceholder()
          ? _value.startDate
          // ignore: cast_nullable_to_non_nullable
          : startDate as DateTime?,
      endDate: endDate == const $CopyWithPlaceholder()
          ? _value.endDate
          // ignore: cast_nullable_to_non_nullable
          : endDate as DateTime?,
      logSummary:
          logSummary == const $CopyWithPlaceholder() || logSummary == null
          ? _value.logSummary
          // ignore: cast_nullable_to_non_nullable
          : logSummary as String,
      featureSnapshot: featureSnapshot == const $CopyWithPlaceholder()
          ? _value.featureSnapshot
          // ignore: cast_nullable_to_non_nullable
          : featureSnapshot as Object?,
      dailyLogSummary: dailyLogSummary == const $CopyWithPlaceholder()
          ? _value.dailyLogSummary
          // ignore: cast_nullable_to_non_nullable
          : dailyLogSummary as Object?,
      dailyFeatureSnapshot: dailyFeatureSnapshot == const $CopyWithPlaceholder()
          ? _value.dailyFeatureSnapshot
          // ignore: cast_nullable_to_non_nullable
          : dailyFeatureSnapshot as Object?,
    );
  }
}

extension $UserLogSummaryRequestCopyWith on UserLogSummaryRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUserLogSummaryRequest.copyWith(...)` or `instanceOfUserLogSummaryRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserLogSummaryRequestCWProxy get copyWith =>
      _$UserLogSummaryRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLogSummaryRequest _$UserLogSummaryRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserLogSummaryRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['userId', 'logSummary']);
  final val = UserLogSummaryRequest(
    userId: $checkedConvert('userId', (v) => v as String),
    startDate: $checkedConvert(
      'startDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    endDate: $checkedConvert(
      'endDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    logSummary: $checkedConvert('logSummary', (v) => v as String? ?? ''),
    featureSnapshot: $checkedConvert('featureSnapshot', (v) => v),
    dailyLogSummary: $checkedConvert('dailyLogSummary', (v) => v),
    dailyFeatureSnapshot: $checkedConvert('dailyFeatureSnapshot', (v) => v),
  );
  return val;
});

Map<String, dynamic> _$UserLogSummaryRequestToJson(
  UserLogSummaryRequest instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'startDate': ?instance.startDate?.toIso8601String(),
  'endDate': ?instance.endDate?.toIso8601String(),
  'logSummary': instance.logSummary,
  'featureSnapshot': ?instance.featureSnapshot,
  'dailyLogSummary': ?instance.dailyLogSummary,
  'dailyFeatureSnapshot': ?instance.dailyFeatureSnapshot,
};
