// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_log_summary_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserLogSummaryResponseCWProxy {
  UserLogSummaryResponse id(String id);

  UserLogSummaryResponse createdAt(DateTime createdAt);

  UserLogSummaryResponse updatedAt(DateTime updatedAt);

  UserLogSummaryResponse isActive(bool isActive);

  UserLogSummaryResponse userId(String userId);

  UserLogSummaryResponse logSummary(String logSummary);

  UserLogSummaryResponse featureSnapshot(Object? featureSnapshot);

  UserLogSummaryResponse dailyLogSummary(Object? dailyLogSummary);

  UserLogSummaryResponse dailyFeatureSnapshot(Object? dailyFeatureSnapshot);

  UserLogSummaryResponse totalEvents(num totalEvents);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserLogSummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserLogSummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  UserLogSummaryResponse call({
    String id,
    DateTime createdAt,
    DateTime updatedAt,
    bool isActive,
    String userId,
    String logSummary,
    Object? featureSnapshot,
    Object? dailyLogSummary,
    Object? dailyFeatureSnapshot,
    num totalEvents,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUserLogSummaryResponse.copyWith(...)` or call `instanceOfUserLogSummaryResponse.copyWith.fieldName(value)` for a single field.
class _$UserLogSummaryResponseCWProxyImpl
    implements _$UserLogSummaryResponseCWProxy {
  const _$UserLogSummaryResponseCWProxyImpl(this._value);

  final UserLogSummaryResponse _value;

  @override
  UserLogSummaryResponse id(String id) => call(id: id);

  @override
  UserLogSummaryResponse createdAt(DateTime createdAt) =>
      call(createdAt: createdAt);

  @override
  UserLogSummaryResponse updatedAt(DateTime updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  UserLogSummaryResponse isActive(bool isActive) => call(isActive: isActive);

  @override
  UserLogSummaryResponse userId(String userId) => call(userId: userId);

  @override
  UserLogSummaryResponse logSummary(String logSummary) =>
      call(logSummary: logSummary);

  @override
  UserLogSummaryResponse featureSnapshot(Object? featureSnapshot) =>
      call(featureSnapshot: featureSnapshot);

  @override
  UserLogSummaryResponse dailyLogSummary(Object? dailyLogSummary) =>
      call(dailyLogSummary: dailyLogSummary);

  @override
  UserLogSummaryResponse dailyFeatureSnapshot(Object? dailyFeatureSnapshot) =>
      call(dailyFeatureSnapshot: dailyFeatureSnapshot);

  @override
  UserLogSummaryResponse totalEvents(num totalEvents) =>
      call(totalEvents: totalEvents);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserLogSummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserLogSummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  UserLogSummaryResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? logSummary = const $CopyWithPlaceholder(),
    Object? featureSnapshot = const $CopyWithPlaceholder(),
    Object? dailyLogSummary = const $CopyWithPlaceholder(),
    Object? dailyFeatureSnapshot = const $CopyWithPlaceholder(),
    Object? totalEvents = const $CopyWithPlaceholder(),
  }) {
    return UserLogSummaryResponse(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool,
      userId: userId == const $CopyWithPlaceholder() || userId == null
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String,
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
      totalEvents:
          totalEvents == const $CopyWithPlaceholder() || totalEvents == null
          ? _value.totalEvents
          // ignore: cast_nullable_to_non_nullable
          : totalEvents as num,
    );
  }
}

extension $UserLogSummaryResponseCopyWith on UserLogSummaryResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUserLogSummaryResponse.copyWith(...)` or `instanceOfUserLogSummaryResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserLogSummaryResponseCWProxy get copyWith =>
      _$UserLogSummaryResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLogSummaryResponse _$UserLogSummaryResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserLogSummaryResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'createdAt',
      'updatedAt',
      'isActive',
      'userId',
      'logSummary',
      'totalEvents',
    ],
  );
  final val = UserLogSummaryResponse(
    id: $checkedConvert('id', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    userId: $checkedConvert('userId', (v) => v as String),
    logSummary: $checkedConvert('logSummary', (v) => v as String),
    featureSnapshot: $checkedConvert('featureSnapshot', (v) => v),
    dailyLogSummary: $checkedConvert('dailyLogSummary', (v) => v),
    dailyFeatureSnapshot: $checkedConvert('dailyFeatureSnapshot', (v) => v),
    totalEvents: $checkedConvert('totalEvents', (v) => v as num? ?? 0),
  );
  return val;
});

Map<String, dynamic> _$UserLogSummaryResponseToJson(
  UserLogSummaryResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'isActive': instance.isActive,
  'userId': instance.userId,
  'logSummary': instance.logSummary,
  'featureSnapshot': ?instance.featureSnapshot,
  'dailyLogSummary': ?instance.dailyLogSummary,
  'dailyFeatureSnapshot': ?instance.dailyFeatureSnapshot,
  'totalEvents': instance.totalEvents,
};
